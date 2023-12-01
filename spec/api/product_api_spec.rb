=begin
#カラーミーショップ API

## カラーミーショップ API  ## 利用手順  ### OAuthアプリケーションの登録  デベロッパーアカウントをお持ちでない場合は作成します。[デベロッパー登録ページ](https://api.shop-pro.jp/developers/sign_up)から登録してください。  次に、[登録ページ](https://api.shop-pro.jp/oauth/applications/new)からアプリ登録を行ってください。 スマートフォンのWebViewを利用する場合は、リダイレクトURIに`urn:ietf:wg:oauth:2.0:oob`を入力してください。  ### 認可  カラーミーショップアカウントの認証ページを開きます。認証ページのURLは、`https://api.shop-pro.jp/oauth/authorize`に必要なパラメータをつけたものです。  |パラメータ名|値| |---|---| |`client_id`|アプリ詳細画面で確認できるクライアントID| |`response_type`|\"code\"を指定| |`scope`| 別表参照| |`redirect_uri`|アプリ登録時に入力したリダイレクトURI|  `scope`は、以下のうち、アプリが利用したい機能をスペース区切りで指定してください。  |スコープ|機能| |---|---| |`read_products`|商品データの参照| |`write_products`|在庫データの更新| |`read_sales`|受注・顧客データの参照| |`write_sales`|受注データの更新| |`read_shop_coupons`|ショップクーポンの参照|  以下のようなURLとなります。  ``` https://api.shop-pro.jp/oauth/authorize?client_id=CLIENT_ID&redirect_uri=REDIRECT_URI&response_type=code&scope=read_products%20write_products ```  初めてこのページを訪れる場合は、カラーミーショップアカウントのログインIDとパスワードの入力を求められます。  ログイン後の認証ページでアプリとの連携が承認された場合は、`code`というクエリパラメータに認可コードが付与されます。承認がキャンセルされた、またはエラーが起きた場合は、 `error`パラメータにエラーの内容を表す文字列が与えられます。  アプリ登録時のリダイレクトURIに`urn:ietf:wg:oauth:2.0:oob`を指定した場合は、以下のようなURLにリダイレクトされ、 認可コードがURLの末尾に付与されます。  ``` https://api.shop-pro.jp/oauth/authorize/AUTH_CODE ```  認可コードの有効期限は発行から10分間です。  ### 認可コードをアクセストークンに交換  以下のパラメータを付けて、`https://api.shop-pro.jp/oauth/token`へリクエストを送ります。  |パラメータ名|値| |---|---| |`client_id`|アプリ詳細画面に表示されているクライアントID| |`client_secret`|アプリ詳細画面に表示されているクライアントシークレット| |`code`|取得した認可コード| |`grant_type`|\"authorization_code\"を指定| |`redirect_uri`|アプリ登録時に入力したリダイレクトURI|  curlによるリクエストの例を以下に示します。 ```console $ curl -X POST \\   -d'client_id=CLIENT_ID' \\   -d'client_secret=CLIENT_SECRET' \\   -d'code=CODE' \\   -d'grant_type=authorization_code'   \\   -d'redirect_uri=REDIRECT_URI'  \\   'https://api.shop-pro.jp/oauth/token' ```  リクエストが成功すると、以下のようなJSONが返却されます  ```json {   \"access_token\": \"d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX\",   \"token_type\": \"bearer\",   \"scope\": \"read_products write_products\" } ```  アクセストークンに有効期限はありませんが、[許可済みアプリ一覧画面](https://admin.shop-pro.jp/?mode=app_use_lst)から失効させることができます。なお、同じ認可コードをアクセストークンに交換できるのは1度だけです。  ### APIの利用  取得したアクセストークンは、Authorizationヘッダに入れて使用します。以下にショップ情報を取得する例を示します。  ```console $ curl -H 'Authorization: Bearer d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX' https://api.shop-pro.jp/v1/shop.json ```  ## エラー  カラーミーショップAPIでは、以下の形式の配列でエラーを表現します。  - `code` エラーコード - `message` エラーメッセージ - `status` ステータスコード  ```json {   \"errors\": [     {       \"code\": 404100,       \"message\": \"レコードが見つかりませんでした。\",       \"status\": 404     }   ] } ```  ## 都道府県コードについて APIを利用して都道府県コードを更新したり、レスポンスを参照される際には以下の表を参考にしてください。  <details>   <summary>都道府県コード一覧</summary>    |id|都道府県|   |---|---|   |1|北海道|   |2|青森県|   |3|岩手県|   |4|秋田県|   |5|宮城県|   |6|山形県|   |7|福島県|   |8|茨城県|   |9|栃木県|   |10|群馬県|   |11|埼玉県|   |12|千葉県|   |13|東京都|   |14|神奈川県|   |15|新潟県|   |16|福井県|   |17|石川県|   |18|富山県|   |19|静岡県|   |20|山梨県|   |21|長野県|   |22|愛知県|   |23|岐阜県|   |24|三重県|   |25|和歌山県|   |26|滋賀県|   |27|奈良県|   |28|京都府|   |29|大阪府|   |30|兵庫県|   |31|岡山県|   |32|広島県|   |33|鳥取県|   |34|島根県|   |35|山口県|   |36|香川県|   |37|徳島県|   |38|愛媛県|   |39|高知県|   |40|福岡県|   |41|佐賀県|   |42|長崎県|   |43|大分県|   |44|熊本県|   |45|宮崎県|   |46|鹿児島県|   |47|沖縄県|   |48|海外|  </details> 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for ColorMeShop::ProductApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProductApi' do
  before do
    # run before each test
    @api_instance = ColorMeShop::ProductApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductApi' do
    it 'should create an instance of ProductApi' do
      expect(@api_instance).to be_instance_of(ColorMeShop::ProductApi)
    end
  end

  # unit tests for delete_product_pickup
  # おすすめ商品情報の削除
  # 商品に付加されたおすすめ商品情報を削除します
  # @param product_id 商品ID
  # @param pickup_type おすすめ商品情報種別（0:おすすめ商品, 1:売れ筋商品, 3:新着商品, 4:イチオシ商品）
  # @param [Hash] opts the optional parameters
  # @return [PutProductPickup200Response]
  describe 'delete_product_pickup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_product
  # 商品データの取得
  # 
  # @param product_id 商品ID
  # @param [Hash] opts the optional parameters
  # @return [PostProducts200Response]
  describe 'get_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_product_variants
  # 商品オプション一覧の取得
  # 
  # @param product_id 商品ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :model_number 型番で部分一致検索
  # @option opts [String] :fields レスポンスJSONのキーをカンマ区切りで指定
  # @option opts [Integer] :limit レスポンスの件数を指定。指定がない場合は10。最大50
  # @option opts [Integer] :offset 指定した数値+1件目以降のデータを返す
  # @return [GetProductVariants200Response]
  describe 'get_product_variants test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_products
  # 商品一覧の取得
  # 商品一覧を取得します。  オプションやバリエーションの数が多い場合、レスポンスの返却に時間がかかる場合があります。 &#x60;fields&#x60; リクエストパラメータで必要なキーを指定することを推奨します。 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ids 商品IDで検索。カンマ区切りにすることで複数検索が可能
  # @option opts [Integer] :category_id_big 大カテゴリーIDで検索
  # @option opts [Integer] :category_id_small 小カテゴリーIDで検索
  # @option opts [Integer] :group_ids グループIDで検索。カンマ区切りにすることで複数検索が可能
  # @option opts [String] :model_number 型番で部分一致検索
  # @option opts [String] :name 商品名で部分一致検索
  # @option opts [String] :display_state 掲載設定で検索  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能 
  # @option opts [Integer] :stocks 在庫管理している商品のうち、在庫数が指定した数値以下の商品を検索。オプションごとに在庫管理している商品は、オプションごとの在庫数で検索される
  # @option opts [Boolean] :stock_managed &#x60;true&#x60;の場合、在庫管理している商品を検索
  # @option opts [Boolean] :recent_zero_stocks &#x60;true&#x60; の場合、過去1週間以内に更新された商品から検索
  # @option opts [String] :make_date_min 指定日時以降に作成された商品から検索
  # @option opts [String] :make_date_max 指定日時以前に作成された商品から検索
  # @option opts [String] :update_date_min 指定日時以降に更新された商品から検索
  # @option opts [String] :update_date_max 指定日時以前に更新された商品から検索
  # @option opts [String] :fields レスポンスJSONのキーをカンマ区切りで指定
  # @option opts [Integer] :limit レスポンスの件数を指定。指定がない場合は10。最大50
  # @option opts [Integer] :offset 指定した数値+1件目以降のデータを返す
  # @return [GetProducts200Response]
  describe 'get_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_product_pickup
  # おすすめ商品情報の追加
  # おすすめ商品情報(おすすめ商品、売れ筋商品、新着商品、イチオシ商品のいずれか)を商品に追加します。
  # @param product_id 商品ID
  # @param put_product_pickup_request 
  # @param [Hash] opts the optional parameters
  # @return [PutProductPickup200Response]
  describe 'post_product_pickup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_products
  # 商品データの追加
  # 
  # @param post_products_request 商品データ
  # @param [Hash] opts the optional parameters
  # @return [PostProducts200Response]
  describe 'post_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_product_pickup
  # おすすめ商品情報の更新
  # おすすめ商品情報(おすすめ商品、売れ筋商品、新着商品、イチオシ商品のいずれか)を更新します。
  # @param product_id 商品ID
  # @param put_product_pickup_request 
  # @param [Hash] opts the optional parameters
  # @return [PutProductPickup200Response]
  describe 'put_product_pickup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_product
  # 商品データの更新
  # 
  # @param product_id 商品ID
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateProductRequest] :update_product_request 商品データ
  # @return [PostProducts200Response]
  describe 'update_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
