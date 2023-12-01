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
  class Stock
    # ショップアカウントID
    attr_accessor :account_id

    # 商品ID
    attr_accessor :product_id

    # 商品名
    attr_accessor :name

    # オプション1の値
    attr_accessor :option1_value

    # オプション2の値
    attr_accessor :option2_value

    # 在庫数
    attr_accessor :stocks

    # 残りわずかとなる在庫数
    attr_accessor :few_num

    # 型番
    attr_accessor :model_number

    # オプションの型番
    attr_accessor :variant_model_number

    attr_accessor :category

    # 掲載設定  - `showing`: 掲載状態 - `hidden`: 非掲載状態 - `showing_for_members`: 会員にのみ掲載 - `sale_for_members`: 掲載状態だが購入は会員のみ可能 
    attr_accessor :display_state

    # 販売価格
    attr_accessor :sales_price

    # 定価
    attr_accessor :price

    # 会員価格
    attr_accessor :members_price

    # 原価
    attr_accessor :cost

    # 個別送料
    attr_accessor :delivery_charge

    # クール便の追加料金
    attr_accessor :cool_charge

    # 最小購入数量
    attr_accessor :min_num

    # 最大購入数量
    attr_accessor :max_num

    # 掲載開始時刻
    attr_accessor :sale_start_date

    # 掲載終了時刻
    attr_accessor :sale_end_date

    # 単位
    attr_accessor :unit

    # 重量(グラム単位)
    attr_accessor :weight

    # 売り切れているときもショップに表示するか
    attr_accessor :soldout_display

    # 表示順
    attr_accessor :sort

    # 簡易説明
    attr_accessor :simple_expl

    # 商品説明
    attr_accessor :expl

    # フィーチャーフォン向けショップの商品説明
    attr_accessor :mobile_expl

    # スマホ向けショップの商品説明
    attr_accessor :smartphone_expl

    # 商品作成日時
    attr_accessor :make_date

    # 商品更新日時
    attr_accessor :update_date

    # 備考
    attr_accessor :memo

    # メインの商品画像URL
    attr_accessor :image_url

    # メインの商品画像のモバイル用URL
    attr_accessor :mobile_image_url

    # メインの商品画像のサムネイルURL
    attr_accessor :thumbnail_image_url

    # メインの商品画像以外の3つの画像に関する、PC用とモバイル用の画像URL
    attr_accessor :images

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
        :'account_id' => :'account_id',
        :'product_id' => :'product_id',
        :'name' => :'name',
        :'option1_value' => :'option1_value',
        :'option2_value' => :'option2_value',
        :'stocks' => :'stocks',
        :'few_num' => :'few_num',
        :'model_number' => :'model_number',
        :'variant_model_number' => :'variant_model_number',
        :'category' => :'category',
        :'display_state' => :'display_state',
        :'sales_price' => :'sales_price',
        :'price' => :'price',
        :'members_price' => :'members_price',
        :'cost' => :'cost',
        :'delivery_charge' => :'delivery_charge',
        :'cool_charge' => :'cool_charge',
        :'min_num' => :'min_num',
        :'max_num' => :'max_num',
        :'sale_start_date' => :'sale_start_date',
        :'sale_end_date' => :'sale_end_date',
        :'unit' => :'unit',
        :'weight' => :'weight',
        :'soldout_display' => :'soldout_display',
        :'sort' => :'sort',
        :'simple_expl' => :'simple_expl',
        :'expl' => :'expl',
        :'mobile_expl' => :'mobile_expl',
        :'smartphone_expl' => :'smartphone_expl',
        :'make_date' => :'make_date',
        :'update_date' => :'update_date',
        :'memo' => :'memo',
        :'image_url' => :'image_url',
        :'mobile_image_url' => :'mobile_image_url',
        :'thumbnail_image_url' => :'thumbnail_image_url',
        :'images' => :'images'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'product_id' => :'Integer',
        :'name' => :'String',
        :'option1_value' => :'String',
        :'option2_value' => :'String',
        :'stocks' => :'Integer',
        :'few_num' => :'Integer',
        :'model_number' => :'String',
        :'variant_model_number' => :'String',
        :'category' => :'GetProducts200ResponseProductsInnerCategory',
        :'display_state' => :'String',
        :'sales_price' => :'Integer',
        :'price' => :'Integer',
        :'members_price' => :'Integer',
        :'cost' => :'Integer',
        :'delivery_charge' => :'Integer',
        :'cool_charge' => :'Integer',
        :'min_num' => :'Integer',
        :'max_num' => :'Integer',
        :'sale_start_date' => :'Integer',
        :'sale_end_date' => :'Integer',
        :'unit' => :'String',
        :'weight' => :'Integer',
        :'soldout_display' => :'Boolean',
        :'sort' => :'Integer',
        :'simple_expl' => :'String',
        :'expl' => :'String',
        :'mobile_expl' => :'String',
        :'smartphone_expl' => :'String',
        :'make_date' => :'Integer',
        :'update_date' => :'Integer',
        :'memo' => :'String',
        :'image_url' => :'String',
        :'mobile_image_url' => :'String',
        :'thumbnail_image_url' => :'String',
        :'images' => :'Array<GetStocks200ResponseStocksInnerImagesInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'option1_value',
        :'option2_value',
        :'stocks',
        :'few_num',
        :'model_number',
        :'variant_model_number',
        :'category',
        :'sales_price',
        :'price',
        :'members_price',
        :'cost',
        :'delivery_charge',
        :'cool_charge',
        :'min_num',
        :'max_num',
        :'sale_start_date',
        :'sale_end_date',
        :'unit',
        :'weight',
        :'sort',
        :'simple_expl',
        :'expl',
        :'mobile_expl',
        :'smartphone_expl',
        :'memo',
        :'image_url',
        :'mobile_image_url',
        :'thumbnail_image_url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ColorMeShop::Stock` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ColorMeShop::Stock`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'option1_value')
        self.option1_value = attributes[:'option1_value']
      end

      if attributes.key?(:'option2_value')
        self.option2_value = attributes[:'option2_value']
      end

      if attributes.key?(:'stocks')
        self.stocks = attributes[:'stocks']
      end

      if attributes.key?(:'few_num')
        self.few_num = attributes[:'few_num']
      end

      if attributes.key?(:'model_number')
        self.model_number = attributes[:'model_number']
      end

      if attributes.key?(:'variant_model_number')
        self.variant_model_number = attributes[:'variant_model_number']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'display_state')
        self.display_state = attributes[:'display_state']
      end

      if attributes.key?(:'sales_price')
        self.sales_price = attributes[:'sales_price']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'members_price')
        self.members_price = attributes[:'members_price']
      end

      if attributes.key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.key?(:'delivery_charge')
        self.delivery_charge = attributes[:'delivery_charge']
      end

      if attributes.key?(:'cool_charge')
        self.cool_charge = attributes[:'cool_charge']
      end

      if attributes.key?(:'min_num')
        self.min_num = attributes[:'min_num']
      end

      if attributes.key?(:'max_num')
        self.max_num = attributes[:'max_num']
      end

      if attributes.key?(:'sale_start_date')
        self.sale_start_date = attributes[:'sale_start_date']
      end

      if attributes.key?(:'sale_end_date')
        self.sale_end_date = attributes[:'sale_end_date']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'soldout_display')
        self.soldout_display = attributes[:'soldout_display']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'simple_expl')
        self.simple_expl = attributes[:'simple_expl']
      end

      if attributes.key?(:'expl')
        self.expl = attributes[:'expl']
      end

      if attributes.key?(:'mobile_expl')
        self.mobile_expl = attributes[:'mobile_expl']
      end

      if attributes.key?(:'smartphone_expl')
        self.smartphone_expl = attributes[:'smartphone_expl']
      end

      if attributes.key?(:'make_date')
        self.make_date = attributes[:'make_date']
      end

      if attributes.key?(:'update_date')
        self.update_date = attributes[:'update_date']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'mobile_image_url')
        self.mobile_image_url = attributes[:'mobile_image_url']
      end

      if attributes.key?(:'thumbnail_image_url')
        self.thumbnail_image_url = attributes[:'thumbnail_image_url']
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@images.nil? && @images.length > 6
        invalid_properties.push('invalid value for "images", number of items must be less than or equal to 6.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      display_state_validator = EnumAttributeValidator.new('String', ["showing", "hidden", "showing_for_members", "sale_for_members"])
      return false unless display_state_validator.valid?(@display_state)
      return false if !@images.nil? && @images.length > 6
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_state Object to be assigned
    def display_state=(display_state)
      validator = EnumAttributeValidator.new('String', ["showing", "hidden", "showing_for_members", "sale_for_members"])
      unless validator.valid?(display_state)
        fail ArgumentError, "invalid value for \"display_state\", must be one of #{validator.allowable_values}."
      end
      @display_state = display_state
    end

    # Custom attribute writer method with validation
    # @param [Object] images Value to be assigned
    def images=(images)
      if images.nil?
        fail ArgumentError, 'images cannot be nil'
      end

      if images.length > 6
        fail ArgumentError, 'invalid value for "images", number of items must be less than or equal to 6.'
      end

      @images = images
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          product_id == o.product_id &&
          name == o.name &&
          option1_value == o.option1_value &&
          option2_value == o.option2_value &&
          stocks == o.stocks &&
          few_num == o.few_num &&
          model_number == o.model_number &&
          variant_model_number == o.variant_model_number &&
          category == o.category &&
          display_state == o.display_state &&
          sales_price == o.sales_price &&
          price == o.price &&
          members_price == o.members_price &&
          cost == o.cost &&
          delivery_charge == o.delivery_charge &&
          cool_charge == o.cool_charge &&
          min_num == o.min_num &&
          max_num == o.max_num &&
          sale_start_date == o.sale_start_date &&
          sale_end_date == o.sale_end_date &&
          unit == o.unit &&
          weight == o.weight &&
          soldout_display == o.soldout_display &&
          sort == o.sort &&
          simple_expl == o.simple_expl &&
          expl == o.expl &&
          mobile_expl == o.mobile_expl &&
          smartphone_expl == o.smartphone_expl &&
          make_date == o.make_date &&
          update_date == o.update_date &&
          memo == o.memo &&
          image_url == o.image_url &&
          mobile_image_url == o.mobile_image_url &&
          thumbnail_image_url == o.thumbnail_image_url &&
          images == o.images
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, product_id, name, option1_value, option2_value, stocks, few_num, model_number, variant_model_number, category, display_state, sales_price, price, members_price, cost, delivery_charge, cool_charge, min_num, max_num, sale_start_date, sale_end_date, unit, weight, soldout_display, sort, simple_expl, expl, mobile_expl, smartphone_expl, make_date, update_date, memo, image_url, mobile_image_url, thumbnail_image_url, images].hash
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
