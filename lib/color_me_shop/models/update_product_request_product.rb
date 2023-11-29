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
  class UpdateProductRequestProduct
    # 商品名
    attr_accessor :name

    # 定価
    attr_accessor :price

    # 大カテゴリーID
    attr_accessor :category_id_big

    # 小カテゴリーID
    attr_accessor :category_id_small

    # 原価
    attr_accessor :cost

    # 販売価格 フリープランを利用しているショップの場合、最低価格は100円です。 
    attr_accessor :sales_price

    # 会員価格 フリープランを利用しているショップの場合、最低価格は100円です。 
    attr_accessor :members_price

    # 型番
    attr_accessor :model_number

    # 商品説明
    attr_accessor :expl

    # 簡易説明
    attr_accessor :simple_expl

    # スマホ向けショップの商品説明
    attr_accessor :smartphone_expl

    # 掲載設定  - `showing`: 掲載状態 - `hidden`: 非掲載状態 - `showing_for_members`: 会員にのみ掲載 - `sale_for_members`: 掲載状態だが購入は会員のみ可能 
    attr_accessor :display_state

    # 在庫管理する場合は `true`
    attr_accessor :stock_managed

    attr_accessor :stocks

    # グループIDの配列
    attr_accessor :group_ids

    # 商品オプションによるバリエーションごとに更新
    attr_accessor :variants

    # `true` の場合は軽減税率対象
    attr_accessor :tax_reduced

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
        :'name' => :'name',
        :'price' => :'price',
        :'category_id_big' => :'category_id_big',
        :'category_id_small' => :'category_id_small',
        :'cost' => :'cost',
        :'sales_price' => :'sales_price',
        :'members_price' => :'members_price',
        :'model_number' => :'model_number',
        :'expl' => :'expl',
        :'simple_expl' => :'simple_expl',
        :'smartphone_expl' => :'smartphone_expl',
        :'display_state' => :'display_state',
        :'stock_managed' => :'stock_managed',
        :'stocks' => :'stocks',
        :'group_ids' => :'group_ids',
        :'variants' => :'variants',
        :'tax_reduced' => :'tax_reduced'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'price' => :'Integer',
        :'category_id_big' => :'Integer',
        :'category_id_small' => :'Integer',
        :'cost' => :'Integer',
        :'sales_price' => :'Integer',
        :'members_price' => :'Integer',
        :'model_number' => :'String',
        :'expl' => :'String',
        :'simple_expl' => :'String',
        :'smartphone_expl' => :'String',
        :'display_state' => :'String',
        :'stock_managed' => :'Boolean',
        :'stocks' => :'UpdateProductRequestProductStocks',
        :'group_ids' => :'Array<Integer>',
        :'variants' => :'Array<UpdateProductRequestProductVariantsInner>',
        :'tax_reduced' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ColorMeShop::UpdateProductRequestProduct` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ColorMeShop::UpdateProductRequestProduct`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'category_id_big')
        self.category_id_big = attributes[:'category_id_big']
      end

      if attributes.key?(:'category_id_small')
        self.category_id_small = attributes[:'category_id_small']
      end

      if attributes.key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.key?(:'sales_price')
        self.sales_price = attributes[:'sales_price']
      end

      if attributes.key?(:'members_price')
        self.members_price = attributes[:'members_price']
      end

      if attributes.key?(:'model_number')
        self.model_number = attributes[:'model_number']
      end

      if attributes.key?(:'expl')
        self.expl = attributes[:'expl']
      end

      if attributes.key?(:'simple_expl')
        self.simple_expl = attributes[:'simple_expl']
      end

      if attributes.key?(:'smartphone_expl')
        self.smartphone_expl = attributes[:'smartphone_expl']
      end

      if attributes.key?(:'display_state')
        self.display_state = attributes[:'display_state']
      end

      if attributes.key?(:'stock_managed')
        self.stock_managed = attributes[:'stock_managed']
      end

      if attributes.key?(:'stocks')
        self.stocks = attributes[:'stocks']
      end

      if attributes.key?(:'group_ids')
        if (value = attributes[:'group_ids']).is_a?(Array)
          self.group_ids = value
        end
      end

      if attributes.key?(:'variants')
        if (value = attributes[:'variants']).is_a?(Array)
          self.variants = value
        end
      end

      if attributes.key?(:'tax_reduced')
        self.tax_reduced = attributes[:'tax_reduced']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if !@cost.nil? && @cost < 0
        invalid_properties.push('invalid value for "cost", must be greater than or equal to 0.')
      end

      if !@sales_price.nil? && @sales_price < 0
        invalid_properties.push('invalid value for "sales_price", must be greater than or equal to 0.')
      end

      if !@members_price.nil? && @members_price < 0
        invalid_properties.push('invalid value for "members_price", must be greater than or equal to 0.')
      end

      if !@model_number.nil? && @model_number.to_s.length > 50
        invalid_properties.push('invalid value for "model_number", the character length must be smaller than or equal to 50.')
      end

      if !@simple_expl.nil? && @simple_expl.to_s.length > 255
        invalid_properties.push('invalid value for "simple_expl", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 100
      return false if !@cost.nil? && @cost < 0
      return false if !@sales_price.nil? && @sales_price < 0
      return false if !@members_price.nil? && @members_price < 0
      return false if !@model_number.nil? && @model_number.to_s.length > 50
      return false if !@simple_expl.nil? && @simple_expl.to_s.length > 255
      display_state_validator = EnumAttributeValidator.new('String', ["showing", "hidden", "showing_for_members", "sale_for_members"])
      return false unless display_state_validator.valid?(@display_state)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] cost Value to be assigned
    def cost=(cost)
      if cost.nil?
        fail ArgumentError, 'cost cannot be nil'
      end

      if cost < 0
        fail ArgumentError, 'invalid value for "cost", must be greater than or equal to 0.'
      end

      @cost = cost
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_price Value to be assigned
    def sales_price=(sales_price)
      if sales_price.nil?
        fail ArgumentError, 'sales_price cannot be nil'
      end

      if sales_price < 0
        fail ArgumentError, 'invalid value for "sales_price", must be greater than or equal to 0.'
      end

      @sales_price = sales_price
    end

    # Custom attribute writer method with validation
    # @param [Object] members_price Value to be assigned
    def members_price=(members_price)
      if members_price.nil?
        fail ArgumentError, 'members_price cannot be nil'
      end

      if members_price < 0
        fail ArgumentError, 'invalid value for "members_price", must be greater than or equal to 0.'
      end

      @members_price = members_price
    end

    # Custom attribute writer method with validation
    # @param [Object] model_number Value to be assigned
    def model_number=(model_number)
      if model_number.nil?
        fail ArgumentError, 'model_number cannot be nil'
      end

      if model_number.to_s.length > 50
        fail ArgumentError, 'invalid value for "model_number", the character length must be smaller than or equal to 50.'
      end

      @model_number = model_number
    end

    # Custom attribute writer method with validation
    # @param [Object] simple_expl Value to be assigned
    def simple_expl=(simple_expl)
      if simple_expl.nil?
        fail ArgumentError, 'simple_expl cannot be nil'
      end

      if simple_expl.to_s.length > 255
        fail ArgumentError, 'invalid value for "simple_expl", the character length must be smaller than or equal to 255.'
      end

      @simple_expl = simple_expl
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          price == o.price &&
          category_id_big == o.category_id_big &&
          category_id_small == o.category_id_small &&
          cost == o.cost &&
          sales_price == o.sales_price &&
          members_price == o.members_price &&
          model_number == o.model_number &&
          expl == o.expl &&
          simple_expl == o.simple_expl &&
          smartphone_expl == o.smartphone_expl &&
          display_state == o.display_state &&
          stock_managed == o.stock_managed &&
          stocks == o.stocks &&
          group_ids == o.group_ids &&
          variants == o.variants &&
          tax_reduced == o.tax_reduced
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, price, category_id_big, category_id_small, cost, sales_price, members_price, model_number, expl, simple_expl, smartphone_expl, display_state, stock_managed, stocks, group_ids, variants, tax_reduced].hash
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