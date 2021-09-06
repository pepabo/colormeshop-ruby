=begin
#カラーミーショップ API

## カラーミーショップ API  [カラーミーショップ](https://shop-pro.jp) APIでは、受注の検索や商品情報の更新を行うことができます。  ## 利用手順  はじめに、カラーミーデベロッパーアカウントを用意します。[デベロッパー登録ページ](https://api.shop-pro.jp/developers/sign_up)から登録してください。  次に、[登録ページ](https://api.shop-pro.jp/oauth/applications/new)からアプリケーション登録を行ってください。 スマートフォンのWebViewを利用する場合は、リダイレクトURLに`urn:ietf:wg:oauth:2.0:oob`を入力してください。  その後、カラーミーショップアカウントの認証ページを開きます。認証ページのURLは、`https://api.shop-pro.jp/oauth/authorize`に必要なパラメータをつけたものです。  |パラメータ名|値| |---|---| |`client_id`|アプリケーション詳細画面で確認できるクライアントID| |`response_type`|\"code\"という文字列| |`scope`| 別表参照| |`redirect_url`|アプリケーション登録時に入力したリダイレクトURL|  `scope`は、以下のうち、アプリケーションが利用したい機能をスペース区切りで指定してください。  |スコープ|機能| |---|---| |`read_products`|商品データの参照| |`write_products`|在庫データの更新| |`read_sales`|受注・顧客データの参照| |`write_sales`|受注データの更新|  以下のようなURLとなります。  ``` https://api.shop-pro.jp/oauth/authorize?client_id=CLIENT_ID&redirect_uri=REDIRECT_URL&response_type=code&scope=read_products%20write_products ```  初めてこのページを訪れる場合は、カラーミーショップアカウントのIDとパスワードの入力を求められます。 承認ボタンを押すと、このアプリケーションがショップのデータにアクセスすることが許可され、リダイレクトURLへリダイレクトされます。  承認された場合は、`code`というクエリパラメータに認可コードが付与されます。承認がキャンセルされた、またはエラーが起きた場合は、 `error`パラメータにエラーの内容を表す文字列が与えられます。  アプリケーション登録時のリダイレクトURLに`urn:ietf:wg:oauth:2.0:oob`を指定した場合は、以下のようなURLにリダイレクトされます。 末尾のパスが認可コードになっています。  ``` https://api.shop-pro.jp/oauth/authorize/AUTH_CODE ```  認可コードの有効期限は発行から10分間です。  最後に、認可コードとアクセストークンを交換します。以下のパラメータを付けて、`https://api.shop-pro.jp/oauth/token`へリクエストを送ります。  |パラメータ名|値| |---|---| |`client_id`|アプリケーション詳細画面に表示されているクライアントID| |`client_secret`|アプリケーション詳細画面に表示されているクライアントシークレット| |`code`|取得した認可コード| |`grant_type`|\"authorization_code\"という文字列| |`redirect_uri`|アプリケーション登録時に入力したリダイレクトURL|  ```console # curl での例  $ curl -X POST \\   -d'client_id=CLIENT_ID' \\   -d'client_secret=CLIENT_SECRET' \\   -d'code=CODE' \\   -d'grant_type=authorization_code'   \\   -d'redirect_uri=REDIRECT_URI'  \\   'https://api.shop-pro.jp/oauth/token' ```  リクエストが成功すると、以下のようなJSONが返ってきます。  ```json {   \"access_token\": \"d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX\",   \"token_type\": \"bearer\",   \"scope\": \"read_products write_products\" } ```  アクセストークンに有効期限はありませんが、許可済みアプリケーション一覧画面から失効させることができます。なお、同じ認可コードをアクセストークンに交換できるのは1度だけです。  取得したアクセストークンは、Authorizationヘッダに入れて使用します。以下にショップ情報を取得する際の例を示します。  ```console # curlの例  $ curl -H 'Authorization: Bearer d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX' https://api.shop-pro.jp/v1/shop.json ```  ## エラー  カラーミーショップAPI v1では  - エラーコード - エラーメッセージ - ステータスコード  の配列でエラーを表現します。以下に例を示します。  ```json {   \"errors\": [     {       \"code\": 404100,       \"message\": \"レコードが見つかりませんでした。\",       \"status\": 404     }   ] } ``` 

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.0-SNAPSHOT

=end

require 'uri'

module ColorMeShop
  class CustomerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 顧客データの取得
    # @param customer_id 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_customer(customer_id, opts = {})
      data, _status_code, _headers = get_customer_with_http_info(customer_id, opts)
      data
    end

    # 顧客データの取得
    # @param customer_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_customer_with_http_info(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.get_customer ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.get_customer"
      end
      # resource path
      local_var_path = '/v1/customers/{customerId}.json'.sub('{' + 'customerId' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#get_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 顧客データのリストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ids 顧客IDで検索。カンマ区切りで複数指定可能
    # @option opts [String] :name 顧客名で部分一致検索
    # @option opts [String] :furigana 顧客フリガナがで部分一致検索
    # @option opts [String] :mail 顧客メールアドレスで部分一致検索
    # @option opts [String] :postal 顧客の郵便番号で部分一致検索
    # @option opts [String] :tel 顧客の電話番号で部分一致検索
    # @option opts [BOOLEAN] :mobile &#x60;true&#x60;なら会員登録済みの顧客から検索
    # @option opts [String] :make_date_min 指定日時以降に登録された顧客から検索
    # @option opts [String] :make_date_max 指定日時以前に登録された顧客から検索
    # @option opts [String] :update_date_min 指定日時以降に更新された顧客から検索
    # @option opts [String] :update_date_max 指定日時以降に更新された顧客から検索
    # @return [Object]
    def get_customers(opts = {})
      data, _status_code, _headers = get_customers_with_http_info(opts)
      data
    end

    # 顧客データのリストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ids 顧客IDで検索。カンマ区切りで複数指定可能
    # @option opts [String] :name 顧客名で部分一致検索
    # @option opts [String] :furigana 顧客フリガナがで部分一致検索
    # @option opts [String] :mail 顧客メールアドレスで部分一致検索
    # @option opts [String] :postal 顧客の郵便番号で部分一致検索
    # @option opts [String] :tel 顧客の電話番号で部分一致検索
    # @option opts [BOOLEAN] :mobile &#x60;true&#x60;なら会員登録済みの顧客から検索
    # @option opts [String] :make_date_min 指定日時以降に登録された顧客から検索
    # @option opts [String] :make_date_max 指定日時以前に登録された顧客から検索
    # @option opts [String] :update_date_min 指定日時以降に更新された顧客から検索
    # @option opts [String] :update_date_max 指定日時以降に更新された顧客から検索
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_customers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.get_customers ...'
      end
      # resource path
      local_var_path = '/v1/customers.json'

      # query parameters
      query_params = {}
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'furigana'] = opts[:'furigana'] if !opts[:'furigana'].nil?
      query_params[:'mail'] = opts[:'mail'] if !opts[:'mail'].nil?
      query_params[:'postal'] = opts[:'postal'] if !opts[:'postal'].nil?
      query_params[:'tel'] = opts[:'tel'] if !opts[:'tel'].nil?
      query_params[:'mobile'] = opts[:'mobile'] if !opts[:'mobile'].nil?
      query_params[:'make_date_min'] = opts[:'make_date_min'] if !opts[:'make_date_min'].nil?
      query_params[:'make_date_max'] = opts[:'make_date_max'] if !opts[:'make_date_max'].nil?
      query_params[:'update_date_min'] = opts[:'update_date_min'] if !opts[:'update_date_min'].nil?
      query_params[:'update_date_max'] = opts[:'update_date_max'] if !opts[:'update_date_max'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#get_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 顧客データを追加
    # @param unknown_base_type 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def post_customers(unknown_base_type, opts = {})
      data, _status_code, _headers = post_customers_with_http_info(unknown_base_type, opts)
      data
    end

    # 顧客データを追加
    # @param unknown_base_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def post_customers_with_http_info(unknown_base_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerApi.post_customers ...'
      end
      # verify the required parameter 'unknown_base_type' is set
      if @api_client.config.client_side_validation && unknown_base_type.nil?
        fail ArgumentError, "Missing the required parameter 'unknown_base_type' when calling CustomerApi.post_customers"
      end
      # resource path
      local_var_path = '/v1/customers.json'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(unknown_base_type)
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#post_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
