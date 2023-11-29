=begin
#カラーミーショップ API

## カラーミーショップ API  ## 利用手順  ### OAuthアプリケーションの登録  デベロッパーアカウントをお持ちでない場合は作成します。[デベロッパー登録ページ](https://api.shop-pro.jp/developers/sign_up)から登録してください。  次に、[登録ページ](https://api.shop-pro.jp/oauth/applications/new)からアプリ登録を行ってください。 スマートフォンのWebViewを利用する場合は、リダイレクトURIに`urn:ietf:wg:oauth:2.0:oob`を入力してください。  ### 認可  カラーミーショップアカウントの認証ページを開きます。認証ページのURLは、`https://api.shop-pro.jp/oauth/authorize`に必要なパラメータをつけたものです。  |パラメータ名|値| |---|---| |`client_id`|アプリ詳細画面で確認できるクライアントID| |`response_type`|\"code\"を指定| |`scope`| 別表参照| |`redirect_uri`|アプリ登録時に入力したリダイレクトURI|  `scope`は、以下のうち、アプリが利用したい機能をスペース区切りで指定してください。  |スコープ|機能| |---|---| |`read_products`|商品データの参照| |`write_products`|在庫データの更新| |`read_sales`|受注・顧客データの参照| |`write_sales`|受注データの更新| |`read_shop_coupons`|ショップクーポンの参照|  以下のようなURLとなります。  ``` https://api.shop-pro.jp/oauth/authorize?client_id=CLIENT_ID&redirect_uri=REDIRECT_URI&response_type=code&scope=read_products%20write_products ```  初めてこのページを訪れる場合は、カラーミーショップアカウントのログインIDとパスワードの入力を求められます。  ログイン後の認証ページでアプリとの連携が承認された場合は、`code`というクエリパラメータに認可コードが付与されます。承認がキャンセルされた、またはエラーが起きた場合は、 `error`パラメータにエラーの内容を表す文字列が与えられます。  アプリ登録時のリダイレクトURIに`urn:ietf:wg:oauth:2.0:oob`を指定した場合は、以下のようなURLにリダイレクトされ、 認可コードがURLの末尾に付与されます。  ``` https://api.shop-pro.jp/oauth/authorize/AUTH_CODE ```  認可コードの有効期限は発行から10分間です。  ### 認可コードをアクセストークンに交換  以下のパラメータを付けて、`https://api.shop-pro.jp/oauth/token`へリクエストを送ります。  |パラメータ名|値| |---|---| |`client_id`|アプリ詳細画面に表示されているクライアントID| |`client_secret`|アプリ詳細画面に表示されているクライアントシークレット| |`code`|取得した認可コード| |`grant_type`|\"authorization_code\"を指定| |`redirect_uri`|アプリ登録時に入力したリダイレクトURI|  curlによるリクエストの例を以下に示します。 ```console $ curl -X POST \\   -d'client_id=CLIENT_ID' \\   -d'client_secret=CLIENT_SECRET' \\   -d'code=CODE' \\   -d'grant_type=authorization_code'   \\   -d'redirect_uri=REDIRECT_URI'  \\   'https://api.shop-pro.jp/oauth/token' ```  リクエストが成功すると、以下のようなJSONが返却されます  ```json {   \"access_token\": \"d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX\",   \"token_type\": \"bearer\",   \"scope\": \"read_products write_products\" } ```  アクセストークンに有効期限はありませんが、[許可済みアプリ一覧画面](https://admin.shop-pro.jp/?mode=app_use_lst)から失効させることができます。なお、同じ認可コードをアクセストークンに交換できるのは1度だけです。  ### APIの利用  取得したアクセストークンは、Authorizationヘッダに入れて使用します。以下にショップ情報を取得する例を示します。  ```console $ curl -H 'Authorization: Bearer d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX' https://api.shop-pro.jp/v1/shop.json ```  ## エラー  カラーミーショップAPIでは、以下の形式の配列でエラーを表現します。  - `code` エラーコード - `message` エラーメッセージ - `status` ステータスコード  ```json {   \"errors\": [     {       \"code\": 404100,       \"message\": \"レコードが見つかりませんでした。\",       \"status\": 404     }   ] } ```  ## 都道府県コードについて APIを利用して都道府県コードを更新したり、レスポンスを参照される際には以下の表を参考にしてください。  <details>   <summary>都道府県コード一覧</summary>    |id|都道府県|   |---|---|   |1|北海道|   |2|青森県|   |3|岩手県|   |4|秋田県|   |5|宮城県|   |6|山形県|   |7|福島県|   |8|茨城県|   |9|栃木県|   |10|群馬県|   |11|埼玉県|   |12|千葉県|   |13|東京都|   |14|神奈川県|   |15|新潟県|   |16|福井県|   |17|石川県|   |18|富山県|   |19|静岡県|   |20|山梨県|   |21|長野県|   |22|愛知県|   |23|岐阜県|   |24|三重県|   |25|和歌山県|   |26|滋賀県|   |27|奈良県|   |28|京都府|   |29|大阪府|   |30|兵庫県|   |31|岡山県|   |32|広島県|   |33|鳥取県|   |34|島根県|   |35|山口県|   |36|香川県|   |37|徳島県|   |38|愛媛県|   |39|高知県|   |40|福岡県|   |41|佐賀県|   |42|長崎県|   |43|大分県|   |44|熊本県|   |45|宮崎県|   |46|鹿児島県|   |47|沖縄県|   |48|海外|  </details> 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module ColorMeShop
  class Shop
    # ショップアカウントID
    attr_accessor :id

    # アカウント状態
    attr_accessor :state

    # ドメインプラン
    attr_accessor :domain_plan

    # 契約プラン
    attr_accessor :contract_plan

    # 契約開始日時
    attr_accessor :contract_start_date

    # 契約終了日時
    attr_accessor :contract_end_date

    # 契約期間
    attr_accessor :contract_term

    # 最終ログイン日時
    attr_accessor :last_login_date

    # 申し込み完了日時
    attr_accessor :setup_date

    # アカウント作成日時
    attr_accessor :make_date

    # ショップURL
    attr_accessor :url

    # 開店状態
    attr_accessor :open_state

    # モバイルショップ開店状態
    attr_accessor :mobile_open_state

    # ログインID
    attr_accessor :login_id

    # 登録者氏名（姓）
    attr_accessor :name1

    # 登録者氏名（名）
    attr_accessor :name2

    # 登録者氏名カナ（姓）
    attr_accessor :name1_kana

    # 登録者氏名カナ（名）
    attr_accessor :name2_kana

    # 法人名
    attr_accessor :hojin

    # 法人名カナ
    attr_accessor :hojin_kana

    # 登録者メールアドレス
    attr_accessor :user_mail

    # 登録者電話番号
    attr_accessor :tel

    # 登録者FAX番号
    attr_accessor :fax

    # 郵便番号
    attr_accessor :postal

    # 都道府県ID
    attr_accessor :pref_id

    # 都道府県名
    attr_accessor :pref_name

    # 住所1
    attr_accessor :address1

    # 住所2
    attr_accessor :address2

    # ショップ名
    attr_accessor :title

    # メールタイトル用ショップ名
    attr_accessor :title_short

    # 管理者メールアドレス
    attr_accessor :shop_mail_1

    # 管理者携帯メールアドレス
    attr_accessor :shop_mail_2

    # 消費税の内税・外税設定
    attr_accessor :tax_type

    # 消費税率
    attr_accessor :tax

    # 消費税の切り捨て、切り上げ設定
    attr_accessor :tax_rounding_method

    # 軽減税率
    attr_accessor :reduce_tax_rate

    # ショップロゴ画像のURL
    attr_accessor :shop_logo_url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'state' => :'state',
        :'domain_plan' => :'domain_plan',
        :'contract_plan' => :'contract_plan',
        :'contract_start_date' => :'contract_start_date',
        :'contract_end_date' => :'contract_end_date',
        :'contract_term' => :'contract_term',
        :'last_login_date' => :'last_login_date',
        :'setup_date' => :'setup_date',
        :'make_date' => :'make_date',
        :'url' => :'url',
        :'open_state' => :'open_state',
        :'mobile_open_state' => :'mobile_open_state',
        :'login_id' => :'login_id',
        :'name1' => :'name1',
        :'name2' => :'name2',
        :'name1_kana' => :'name1_kana',
        :'name2_kana' => :'name2_kana',
        :'hojin' => :'hojin',
        :'hojin_kana' => :'hojin_kana',
        :'user_mail' => :'user_mail',
        :'tel' => :'tel',
        :'fax' => :'fax',
        :'postal' => :'postal',
        :'pref_id' => :'pref_id',
        :'pref_name' => :'pref_name',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'title' => :'title',
        :'title_short' => :'title_short',
        :'shop_mail_1' => :'shop_mail_1',
        :'shop_mail_2' => :'shop_mail_2',
        :'tax_type' => :'tax_type',
        :'tax' => :'tax',
        :'tax_rounding_method' => :'tax_rounding_method',
        :'reduce_tax_rate' => :'reduce_tax_rate',
        :'shop_logo_url' => :'shop_logo_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'state' => :'String',
        :'domain_plan' => :'String',
        :'contract_plan' => :'String',
        :'contract_start_date' => :'Integer',
        :'contract_end_date' => :'Integer',
        :'contract_term' => :'Integer',
        :'last_login_date' => :'Integer',
        :'setup_date' => :'Integer',
        :'make_date' => :'Integer',
        :'url' => :'String',
        :'open_state' => :'String',
        :'mobile_open_state' => :'String',
        :'login_id' => :'String',
        :'name1' => :'String',
        :'name2' => :'String',
        :'name1_kana' => :'String',
        :'name2_kana' => :'String',
        :'hojin' => :'String',
        :'hojin_kana' => :'String',
        :'user_mail' => :'String',
        :'tel' => :'String',
        :'fax' => :'String',
        :'postal' => :'String',
        :'pref_id' => :'Integer',
        :'pref_name' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'title' => :'String',
        :'title_short' => :'String',
        :'shop_mail_1' => :'String',
        :'shop_mail_2' => :'String',
        :'tax_type' => :'String',
        :'tax' => :'Integer',
        :'tax_rounding_method' => :'String',
        :'reduce_tax_rate' => :'Integer',
        :'shop_logo_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'contract_term',
        :'hojin',
        :'hojin_kana',
        :'fax',
        :'title_short',
        :'shop_mail_2',
        :'shop_logo_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ColorMeShop::Shop` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ColorMeShop::Shop`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'domain_plan')
        self.domain_plan = attributes[:'domain_plan']
      end

      if attributes.key?(:'contract_plan')
        self.contract_plan = attributes[:'contract_plan']
      end

      if attributes.key?(:'contract_start_date')
        self.contract_start_date = attributes[:'contract_start_date']
      end

      if attributes.key?(:'contract_end_date')
        self.contract_end_date = attributes[:'contract_end_date']
      end

      if attributes.key?(:'contract_term')
        self.contract_term = attributes[:'contract_term']
      end

      if attributes.key?(:'last_login_date')
        self.last_login_date = attributes[:'last_login_date']
      end

      if attributes.key?(:'setup_date')
        self.setup_date = attributes[:'setup_date']
      end

      if attributes.key?(:'make_date')
        self.make_date = attributes[:'make_date']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'open_state')
        self.open_state = attributes[:'open_state']
      end

      if attributes.key?(:'mobile_open_state')
        self.mobile_open_state = attributes[:'mobile_open_state']
      end

      if attributes.key?(:'login_id')
        self.login_id = attributes[:'login_id']
      end

      if attributes.key?(:'name1')
        self.name1 = attributes[:'name1']
      end

      if attributes.key?(:'name2')
        self.name2 = attributes[:'name2']
      end

      if attributes.key?(:'name1_kana')
        self.name1_kana = attributes[:'name1_kana']
      end

      if attributes.key?(:'name2_kana')
        self.name2_kana = attributes[:'name2_kana']
      end

      if attributes.key?(:'hojin')
        self.hojin = attributes[:'hojin']
      end

      if attributes.key?(:'hojin_kana')
        self.hojin_kana = attributes[:'hojin_kana']
      end

      if attributes.key?(:'user_mail')
        self.user_mail = attributes[:'user_mail']
      end

      if attributes.key?(:'tel')
        self.tel = attributes[:'tel']
      end

      if attributes.key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.key?(:'postal')
        self.postal = attributes[:'postal']
      end

      if attributes.key?(:'pref_id')
        self.pref_id = attributes[:'pref_id']
      end

      if attributes.key?(:'pref_name')
        self.pref_name = attributes[:'pref_name']
      end

      if attributes.key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'title_short')
        self.title_short = attributes[:'title_short']
      end

      if attributes.key?(:'shop_mail_1')
        self.shop_mail_1 = attributes[:'shop_mail_1']
      end

      if attributes.key?(:'shop_mail_2')
        self.shop_mail_2 = attributes[:'shop_mail_2']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'tax_rounding_method')
        self.tax_rounding_method = attributes[:'tax_rounding_method']
      end

      if attributes.key?(:'reduce_tax_rate')
        self.reduce_tax_rate = attributes[:'reduce_tax_rate']
      end

      if attributes.key?(:'shop_logo_url')
        self.shop_logo_url = attributes[:'shop_logo_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      state_validator = EnumAttributeValidator.new('String', ["enabled", "suspended", "unsigned"])
      return false unless state_validator.valid?(@state)
      domain_plan_validator = EnumAttributeValidator.new('String', ["cmsp_sub_domain", "own_domain", "own_sub_domain"])
      return false unless domain_plan_validator.valid?(@domain_plan)
      contract_plan_validator = EnumAttributeValidator.new('String', ["unknown", "economy", "small", "regular", "lolipop", "heteml", "platinum", "goope", "large", "dormant", "free", "premium"])
      return false unless contract_plan_validator.valid?(@contract_plan)
      open_state_validator = EnumAttributeValidator.new('String', ["opened", "closed", "prepare", "paused"])
      return false unless open_state_validator.valid?(@open_state)
      mobile_open_state_validator = EnumAttributeValidator.new('String', ["opened", "closed", "prepare", "paused"])
      return false unless mobile_open_state_validator.valid?(@mobile_open_state)
      tax_type_validator = EnumAttributeValidator.new('String', ["excluded", "included"])
      return false unless tax_type_validator.valid?(@tax_type)
      tax_rounding_method_validator = EnumAttributeValidator.new('String', ["round_off", "round_down", "round_up"])
      return false unless tax_rounding_method_validator.valid?(@tax_rounding_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["enabled", "suspended", "unsigned"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] domain_plan Object to be assigned
    def domain_plan=(domain_plan)
      validator = EnumAttributeValidator.new('String', ["cmsp_sub_domain", "own_domain", "own_sub_domain"])
      unless validator.valid?(domain_plan)
        fail ArgumentError, "invalid value for \"domain_plan\", must be one of #{validator.allowable_values}."
      end
      @domain_plan = domain_plan
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contract_plan Object to be assigned
    def contract_plan=(contract_plan)
      validator = EnumAttributeValidator.new('String', ["unknown", "economy", "small", "regular", "lolipop", "heteml", "platinum", "goope", "large", "dormant", "free", "premium"])
      unless validator.valid?(contract_plan)
        fail ArgumentError, "invalid value for \"contract_plan\", must be one of #{validator.allowable_values}."
      end
      @contract_plan = contract_plan
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] open_state Object to be assigned
    def open_state=(open_state)
      validator = EnumAttributeValidator.new('String', ["opened", "closed", "prepare", "paused"])
      unless validator.valid?(open_state)
        fail ArgumentError, "invalid value for \"open_state\", must be one of #{validator.allowable_values}."
      end
      @open_state = open_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mobile_open_state Object to be assigned
    def mobile_open_state=(mobile_open_state)
      validator = EnumAttributeValidator.new('String', ["opened", "closed", "prepare", "paused"])
      unless validator.valid?(mobile_open_state)
        fail ArgumentError, "invalid value for \"mobile_open_state\", must be one of #{validator.allowable_values}."
      end
      @mobile_open_state = mobile_open_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_type Object to be assigned
    def tax_type=(tax_type)
      validator = EnumAttributeValidator.new('String', ["excluded", "included"])
      unless validator.valid?(tax_type)
        fail ArgumentError, "invalid value for \"tax_type\", must be one of #{validator.allowable_values}."
      end
      @tax_type = tax_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rounding_method Object to be assigned
    def tax_rounding_method=(tax_rounding_method)
      validator = EnumAttributeValidator.new('String', ["round_off", "round_down", "round_up"])
      unless validator.valid?(tax_rounding_method)
        fail ArgumentError, "invalid value for \"tax_rounding_method\", must be one of #{validator.allowable_values}."
      end
      @tax_rounding_method = tax_rounding_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          state == o.state &&
          domain_plan == o.domain_plan &&
          contract_plan == o.contract_plan &&
          contract_start_date == o.contract_start_date &&
          contract_end_date == o.contract_end_date &&
          contract_term == o.contract_term &&
          last_login_date == o.last_login_date &&
          setup_date == o.setup_date &&
          make_date == o.make_date &&
          url == o.url &&
          open_state == o.open_state &&
          mobile_open_state == o.mobile_open_state &&
          login_id == o.login_id &&
          name1 == o.name1 &&
          name2 == o.name2 &&
          name1_kana == o.name1_kana &&
          name2_kana == o.name2_kana &&
          hojin == o.hojin &&
          hojin_kana == o.hojin_kana &&
          user_mail == o.user_mail &&
          tel == o.tel &&
          fax == o.fax &&
          postal == o.postal &&
          pref_id == o.pref_id &&
          pref_name == o.pref_name &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          title == o.title &&
          title_short == o.title_short &&
          shop_mail_1 == o.shop_mail_1 &&
          shop_mail_2 == o.shop_mail_2 &&
          tax_type == o.tax_type &&
          tax == o.tax &&
          tax_rounding_method == o.tax_rounding_method &&
          reduce_tax_rate == o.reduce_tax_rate &&
          shop_logo_url == o.shop_logo_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, state, domain_plan, contract_plan, contract_start_date, contract_end_date, contract_term, last_login_date, setup_date, make_date, url, open_state, mobile_open_state, login_id, name1, name2, name1_kana, name2_kana, hojin, hojin_kana, user_mail, tel, fax, postal, pref_id, pref_name, address1, address2, title, title_short, shop_mail_1, shop_mail_2, tax_type, tax, tax_rounding_method, reduce_tax_rate, shop_logo_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ColorMeShop.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
