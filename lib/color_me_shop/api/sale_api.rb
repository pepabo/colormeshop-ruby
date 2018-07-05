=begin
#カラーミーショップ API

## カラーミーショップ API  [カラーミーショップ](https://shop-pro.jp) APIでは、受注の検索や商品情報の更新を行うことができます。  ## 利用手順  はじめに、カラーミーデベロッパーアカウントを用意します。[デベロッパー登録ページ](https://api.shop-pro.jp/developers/sign_up)から登録してください。  次に、[登録ページ](https://api.shop-pro.jp/oauth/applications/new)からアプリケーション登録を行ってください。 スマートフォンのWebViewを利用する場合は、リダイレクトURLに`urn:ietf:wg:oauth:2.0:oob`を入力してください。  その後、カラーミーショップアカウントの認証ページを開きます。認証ページのURLは、`https://api.shop-pro.jp/oauth/authorize`に必要なパラメータをつけたものです。  |パラメータ名|値| |---|---| |`client_id`|アプリケーション詳細画面で確認できるクライアントID| |`response_type`|\"code\"という文字列| |`scope`| 別表参照| |`redirect_url`|アプリケーション登録時に入力したリダイレクトURL|  `scope`は、以下のうち、アプリケーションが利用したい機能をスペース区切りで指定してください。  |スコープ|機能| |---|---| |`read_products`|商品データの参照| |`write_products`|在庫データの更新| |`read_sales`|受注・顧客データの参照| |`write_sales`|受注データの更新|  以下のようなURLとなります。  ``` https://api.shop-pro.jp/oauth/authorize?client_id=CLIENT_ID&redirect_uri=REDIRECT_URL&response_type=code&scope=read_products%20write_products ```  初めてこのページを訪れる場合は、カラーミーショップアカウントのIDとパスワードの入力を求められます。 承認ボタンを押すと、このアプリケーションがショップのデータにアクセスすることが許可され、リダイレクトURLへリダイレクトされます。  承認された場合は、`code`というクエリパラメータに認可コードが付与されます。承認がキャンセルされた、またはエラーが起きた場合は、 `error`パラメータにエラーの内容を表す文字列が与えられます。  アプリケーション登録時のリダイレクトURLに`urn:ietf:wg:oauth:2.0:oob`を指定した場合は、以下のようなURLにリダイレクトされます。 末尾のパスが認可コードになっています。  ``` https://api.shop-pro.jp/oauth/authorize/AUTH_CODE ```  認可コードの有効期限は発行から10分間です。  最後に、認可コードとアクセストークンを交換します。以下のパラメータを付けて、`https://api.shop-pro.jp/oauth/token`へリクエストを送ります。  |パラメータ名|値| |---|---| |`client_id`|アプリケーション詳細画面に表示されているクライアントID| |`client_secret`|アプリケーション詳細画面に表示されているクライアントシークレット| |`code`|取得した認可コード| |`grant_type`|\"authorization_code\"という文字列| |`redirect_uri`|アプリケーション登録時に入力したリダイレクトURL|  ```console # curl での例  $ curl -X POST \\   -d'client_id=CLIENT_ID' \\   -d'client_secret=CLIENT_SECRET' \\   -d'code=CODE' \\   -d'grant_type=authorization_code'   \\   -d'redirect_uri=REDIRECT_URI'  \\   'https://api.shop-pro.jp/oauth/token' ```  リクエストが成功すると、以下のようなJSONが返ってきます。  ```json {   \"access_token\": \"d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX\",   \"token_type\": \"bearer\",   \"scope\": \"read_products write_products\" } ```  アクセストークンに有効期限はありませんが、許可済みアプリケーション一覧画面から失効させることができます。なお、同じ認可コードをアクセストークンに交換できるのは1度だけです。  取得したアクセストークンは、Authorizationヘッダに入れて使用します。以下にショップ情報を取得する際の例を示します。  ```console # curlの例  $ curl -H 'Authorization: Bearer d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX' https://api.shop-pro.jp/v1/shop.json ```  ## エラー  カラーミーショップAPI v1では  - エラーコード - エラーメッセージ - ステータスコード  の配列でエラーを表現します。以下に例を示します。  ```json {   \"errors\": [     {       \"code\": 404100,       \"message\": \"レコードが見つかりませんでした。\",       \"status\": 404     }   ] } ``` 

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.1.0-SNAPSHOT

=end

require 'uri'

module ColorMeShop
  class SaleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 受注のキャンセル
    # 受注をキャンセルすると、以下のことが起こります。  - 該当受注の商品購入数が0になる - 該当受注の合計金額が0になる - 該当受注の`canceled`が`true`になる - 該当受注に使用されたショップポイント・GMOポイントがキャンセルされる - 該当受注の決済がAmazon Pay、または楽天ペイ（オンライン決済）である場合は、決済金額が自動的に購入者へ返金される - カラメル等の販売手数料が0になる 
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :unknown_base_type 
    # @return [Object]
    def cancel_sale(sale_id, opts = {})
      data, _status_code, _headers = cancel_sale_with_http_info(sale_id, opts)
      data
    end

    # 受注のキャンセル
    # 受注をキャンセルすると、以下のことが起こります。  - 該当受注の商品購入数が0になる - 該当受注の合計金額が0になる - 該当受注の&#x60;canceled&#x60;が&#x60;true&#x60;になる - 該当受注に使用されたショップポイント・GMOポイントがキャンセルされる - 該当受注の決済がAmazon Pay、または楽天ペイ（オンライン決済）である場合は、決済金額が自動的に購入者へ返金される - カラメル等の販売手数料が0になる 
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :unknown_base_type 
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def cancel_sale_with_http_info(sale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SaleApi.cancel_sale ...'
      end
      # verify the required parameter 'sale_id' is set
      if @api_client.config.client_side_validation && sale_id.nil?
        fail ArgumentError, "Missing the required parameter 'sale_id' when calling SaleApi.cancel_sale"
      end
      # resource path
      local_var_path = '/v1/sales/{saleId}/cancel.json'.sub('{' + 'saleId' + '}', sale_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'unknown_base_type'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SaleApi#cancel_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 受注データの取得
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_sale(sale_id, opts = {})
      data, _status_code, _headers = get_sale_with_http_info(sale_id, opts)
      data
    end

    # 受注データの取得
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_sale_with_http_info(sale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SaleApi.get_sale ...'
      end
      # verify the required parameter 'sale_id' is set
      if @api_client.config.client_side_validation && sale_id.nil?
        fail ArgumentError, "Missing the required parameter 'sale_id' when calling SaleApi.get_sale"
      end
      # resource path
      local_var_path = '/v1/sales/{saleId}.json'.sub('{' + 'saleId' + '}', sale_id.to_s)

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
        @api_client.config.logger.debug "API called: SaleApi#get_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 受注データのリストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ids 受注IDで検索。カンマ区切りで複数指定可能
    # @option opts [String] :after 指定日時以降の受注から検索
    # @option opts [String] :before 指定日時以前の受注から検索
    # @option opts [String] :make_date_min &#x60;after&#x60;と同義
    # @option opts [String] :make_date_max &#x60;before&#x60;と同義
    # @option opts [String] :update_date_min 指定日時以降に更新された受注から検索
    # @option opts [String] :update_date_max 指定日時以降に更新された受注から検索
    # @option opts [String] :customer_ids 購入した顧客IDで検索。カンマ区切りにすることで複数検索が可能
    # @option opts [String] :customer_name 購入した顧客名で部分一致検索
    # @option opts [String] :customer_furigana 購入した顧客フリガナがで部分一致検索
    # @option opts [String] :customer_mail 購入した顧客メールアドレスで部分一致検索
    # @option opts [Integer] :accepted_mail_state 受注メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない 
    # @option opts [Integer] :paid_mail_state 入金メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない 
    # @option opts [Integer] :delivered_mail_state 配送メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない 
    # @option opts [BOOLEAN] :mobile &#x60;true&#x60;なら携帯からの受注のみ取得
    # @option opts [BOOLEAN] :paid &#x60;true&#x60;なら入金済みの受注のみ取得
    # @option opts [BOOLEAN] :delivered &#x60;true&#x60;なら配送済みの受注のみ取得
    # @option opts [String] :payment_ids 使用された決済のIDで検索。カンマ区切りで複数指定可能
    # @option opts [String] :fields レスポンスJSONのキーをカンマ区切りで指定
    # @option opts [Integer] :limit レスポンスの件数を指定。指定がない場合は10。最大50
    # @option opts [Integer] :offset 指定した数値+1件目以降のデータを返す
    # @return [Object]
    def get_sales(opts = {})
      data, _status_code, _headers = get_sales_with_http_info(opts)
      data
    end

    # 受注データのリストを取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ids 受注IDで検索。カンマ区切りで複数指定可能
    # @option opts [String] :after 指定日時以降の受注から検索
    # @option opts [String] :before 指定日時以前の受注から検索
    # @option opts [String] :make_date_min &#x60;after&#x60;と同義
    # @option opts [String] :make_date_max &#x60;before&#x60;と同義
    # @option opts [String] :update_date_min 指定日時以降に更新された受注から検索
    # @option opts [String] :update_date_max 指定日時以降に更新された受注から検索
    # @option opts [String] :customer_ids 購入した顧客IDで検索。カンマ区切りにすることで複数検索が可能
    # @option opts [String] :customer_name 購入した顧客名で部分一致検索
    # @option opts [String] :customer_furigana 購入した顧客フリガナがで部分一致検索
    # @option opts [String] :customer_mail 購入した顧客メールアドレスで部分一致検索
    # @option opts [Integer] :accepted_mail_state 受注メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない 
    # @option opts [Integer] :paid_mail_state 入金メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない 
    # @option opts [Integer] :delivered_mail_state 配送メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない 
    # @option opts [BOOLEAN] :mobile &#x60;true&#x60;なら携帯からの受注のみ取得
    # @option opts [BOOLEAN] :paid &#x60;true&#x60;なら入金済みの受注のみ取得
    # @option opts [BOOLEAN] :delivered &#x60;true&#x60;なら配送済みの受注のみ取得
    # @option opts [String] :payment_ids 使用された決済のIDで検索。カンマ区切りで複数指定可能
    # @option opts [String] :fields レスポンスJSONのキーをカンマ区切りで指定
    # @option opts [Integer] :limit レスポンスの件数を指定。指定がない場合は10。最大50
    # @option opts [Integer] :offset 指定した数値+1件目以降のデータを返す
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_sales_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SaleApi.get_sales ...'
      end
      if @api_client.config.client_side_validation && opts[:'accepted_mail_state'] && !['0', '1', '2'].include?(opts[:'accepted_mail_state'])
        fail ArgumentError, 'invalid value for "accepted_mail_state", must be one of 0, 1, 2'
      end
      if @api_client.config.client_side_validation && opts[:'paid_mail_state'] && !['0', '1', '2'].include?(opts[:'paid_mail_state'])
        fail ArgumentError, 'invalid value for "paid_mail_state", must be one of 0, 1, 2'
      end
      if @api_client.config.client_side_validation && opts[:'delivered_mail_state'] && !['0', '1', '2'].include?(opts[:'delivered_mail_state'])
        fail ArgumentError, 'invalid value for "delivered_mail_state", must be one of 0, 1, 2'
      end
      # resource path
      local_var_path = '/v1/sales.json'

      # query parameters
      query_params = {}
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'make_date_min'] = opts[:'make_date_min'] if !opts[:'make_date_min'].nil?
      query_params[:'make_date_max'] = opts[:'make_date_max'] if !opts[:'make_date_max'].nil?
      query_params[:'update_date_min'] = opts[:'update_date_min'] if !opts[:'update_date_min'].nil?
      query_params[:'update_date_max'] = opts[:'update_date_max'] if !opts[:'update_date_max'].nil?
      query_params[:'customer_ids'] = opts[:'customer_ids'] if !opts[:'customer_ids'].nil?
      query_params[:'customer_name'] = opts[:'customer_name'] if !opts[:'customer_name'].nil?
      query_params[:'customer_furigana'] = opts[:'customer_furigana'] if !opts[:'customer_furigana'].nil?
      query_params[:'customer_mail'] = opts[:'customer_mail'] if !opts[:'customer_mail'].nil?
      query_params[:'accepted_mail_state'] = opts[:'accepted_mail_state'] if !opts[:'accepted_mail_state'].nil?
      query_params[:'paid_mail_state'] = opts[:'paid_mail_state'] if !opts[:'paid_mail_state'].nil?
      query_params[:'delivered_mail_state'] = opts[:'delivered_mail_state'] if !opts[:'delivered_mail_state'].nil?
      query_params[:'mobile'] = opts[:'mobile'] if !opts[:'mobile'].nil?
      query_params[:'paid'] = opts[:'paid'] if !opts[:'paid'].nil?
      query_params[:'delivered'] = opts[:'delivered'] if !opts[:'delivered'].nil?
      query_params[:'payment_ids'] = opts[:'payment_ids'] if !opts[:'payment_ids'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
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
        @api_client.config.logger.debug "API called: SaleApi#get_sales\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # メールの送信
    # 受注・入金確認・商品発送メールを送ることができます。
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :unknown_base_type 
    # @return [nil]
    def send_sales_mail(sale_id, opts = {})
      send_sales_mail_with_http_info(sale_id, opts)
      nil
    end

    # メールの送信
    # 受注・入金確認・商品発送メールを送ることができます。
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :unknown_base_type 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_sales_mail_with_http_info(sale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SaleApi.send_sales_mail ...'
      end
      # verify the required parameter 'sale_id' is set
      if @api_client.config.client_side_validation && sale_id.nil?
        fail ArgumentError, "Missing the required parameter 'sale_id' when calling SaleApi.send_sales_mail"
      end
      # resource path
      local_var_path = '/v1/sales/{saleId}/mails.json'.sub('{' + 'saleId' + '}', sale_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'unknown_base_type'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SaleApi#send_sales_mail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 売上集計の取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :make_date 集計対象とする売上の作成日。形式は\&quot;2017-04-12\&quot;、\&quot;2017/04/12\&quot;など。指定しない場合は今日の日付が使われる
    # @return [Object]
    def stat_sale(opts = {})
      data, _status_code, _headers = stat_sale_with_http_info(opts)
      data
    end

    # 売上集計の取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :make_date 集計対象とする売上の作成日。形式は\&quot;2017-04-12\&quot;、\&quot;2017/04/12\&quot;など。指定しない場合は今日の日付が使われる
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def stat_sale_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SaleApi.stat_sale ...'
      end
      # resource path
      local_var_path = '/v1/sales/stat.json'

      # query parameters
      query_params = {}
      query_params[:'make_date'] = opts[:'make_date'] if !opts[:'make_date'].nil?

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
        @api_client.config.logger.debug "API called: SaleApi#stat_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # 受注データの更新
    # 該当受注の決済がAmazon Pay、または楽天ペイ（オンライン決済）である場合は、熨斗・メッセージカード・ラッピングの手数料を更新すると、決済金額が自動的に購入者に請求もしくは返金されます。
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :unknown_base_type 
    # @return [Object]
    def update_sale(sale_id, opts = {})
      data, _status_code, _headers = update_sale_with_http_info(sale_id, opts)
      data
    end

    # 受注データの更新
    # 該当受注の決済がAmazon Pay、または楽天ペイ（オンライン決済）である場合は、熨斗・メッセージカード・ラッピングの手数料を更新すると、決済金額が自動的に購入者に請求もしくは返金されます。
    # @param sale_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :unknown_base_type 
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_sale_with_http_info(sale_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SaleApi.update_sale ...'
      end
      # verify the required parameter 'sale_id' is set
      if @api_client.config.client_side_validation && sale_id.nil?
        fail ArgumentError, "Missing the required parameter 'sale_id' when calling SaleApi.update_sale"
      end
      # resource path
      local_var_path = '/v1/sales/{saleId}.json'.sub('{' + 'saleId' + '}', sale_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'unknown_base_type'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SaleApi#update_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
