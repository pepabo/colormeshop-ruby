=begin
#カラーミーショップ API

## カラーミーショップ API  ## 利用手順  ### OAuthアプリケーションの登録  デベロッパーアカウントをお持ちでない場合は作成します。[デベロッパー登録ページ](https://api.shop-pro.jp/developers/sign_up)から登録してください。  次に、[登録ページ](https://api.shop-pro.jp/oauth/applications/new)からアプリ登録を行ってください。 スマートフォンのWebViewを利用する場合は、リダイレクトURIに`urn:ietf:wg:oauth:2.0:oob`を入力してください。  ### 認可  カラーミーショップアカウントの認証ページを開きます。認証ページのURLは、`https://api.shop-pro.jp/oauth/authorize`に必要なパラメータをつけたものです。  |パラメータ名|値| |---|---| |`client_id`|アプリ詳細画面で確認できるクライアントID| |`response_type`|\"code\"を指定| |`scope`| 別表参照| |`redirect_uri`|アプリ登録時に入力したリダイレクトURI|  `scope`は、以下のうち、アプリが利用したい機能をスペース区切りで指定してください。  |スコープ|機能| |---|---| |`read_products`|商品データの参照| |`write_products`|在庫データの更新| |`read_sales`|受注・顧客データの参照| |`write_sales`|受注データの更新| |`read_shop_coupons`|ショップクーポンの参照|  以下のようなURLとなります。  ``` https://api.shop-pro.jp/oauth/authorize?client_id=CLIENT_ID&redirect_uri=REDIRECT_URI&response_type=code&scope=read_products%20write_products ```  初めてこのページを訪れる場合は、カラーミーショップアカウントのログインIDとパスワードの入力を求められます。  ログイン後の認証ページでアプリとの連携が承認された場合は、`code`というクエリパラメータに認可コードが付与されます。承認がキャンセルされた、またはエラーが起きた場合は、 `error`パラメータにエラーの内容を表す文字列が与えられます。  アプリ登録時のリダイレクトURIに`urn:ietf:wg:oauth:2.0:oob`を指定した場合は、以下のようなURLにリダイレクトされ、 認可コードがURLの末尾に付与されます。  ``` https://api.shop-pro.jp/oauth/authorize/AUTH_CODE ```  認可コードの有効期限は発行から10分間です。  ### 認可コードをアクセストークンに交換  以下のパラメータを付けて、`https://api.shop-pro.jp/oauth/token`へリクエストを送ります。  |パラメータ名|値| |---|---| |`client_id`|アプリ詳細画面に表示されているクライアントID| |`client_secret`|アプリ詳細画面に表示されているクライアントシークレット| |`code`|取得した認可コード| |`grant_type`|\"authorization_code\"を指定| |`redirect_uri`|アプリ登録時に入力したリダイレクトURI|  curlによるリクエストの例を以下に示します。 ```console $ curl -X POST \\   -d'client_id=CLIENT_ID' \\   -d'client_secret=CLIENT_SECRET' \\   -d'code=CODE' \\   -d'grant_type=authorization_code'   \\   -d'redirect_uri=REDIRECT_URI'  \\   'https://api.shop-pro.jp/oauth/token' ```  リクエストが成功すると、以下のようなJSONが返却されます  ```json {   \"access_token\": \"d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX\",   \"token_type\": \"bearer\",   \"scope\": \"read_products write_products\" } ```  アクセストークンに有効期限はありませんが、[許可済みアプリ一覧画面](https://admin.shop-pro.jp/?mode=app_use_lst)から失効させることができます。なお、同じ認可コードをアクセストークンに交換できるのは1度だけです。  ### APIの利用  取得したアクセストークンは、Authorizationヘッダに入れて使用します。以下にショップ情報を取得する例を示します。  ```console $ curl -H 'Authorization: Bearer d461ab8XXXXXXXXXXXXXXXXXXXXXXXXX' https://api.shop-pro.jp/v1/shop.json ```  ## エラー  カラーミーショップAPIでは、以下の形式の配列でエラーを表現します。  - `code` エラーコード - `message` エラーメッセージ - `status` ステータスコード  ```json {   \"errors\": [     {       \"code\": 404100,       \"message\": \"レコードが見つかりませんでした。\",       \"status\": 404     }   ] } ```  ## 都道府県コードについて APIを利用して都道府県コードを更新したり、レスポンスを参照される際には以下の表を参考にしてください。  <details>   <summary>都道府県コード一覧</summary>    |id|都道府県|   |---|---|   |1|北海道|   |2|青森県|   |3|岩手県|   |4|秋田県|   |5|宮城県|   |6|山形県|   |7|福島県|   |8|茨城県|   |9|栃木県|   |10|群馬県|   |11|埼玉県|   |12|千葉県|   |13|東京都|   |14|神奈川県|   |15|新潟県|   |16|福井県|   |17|石川県|   |18|富山県|   |19|静岡県|   |20|山梨県|   |21|長野県|   |22|愛知県|   |23|岐阜県|   |24|三重県|   |25|和歌山県|   |26|滋賀県|   |27|奈良県|   |28|京都府|   |29|大阪府|   |30|兵庫県|   |31|岡山県|   |32|広島県|   |33|鳥取県|   |34|島根県|   |35|山口県|   |36|香川県|   |37|徳島県|   |38|愛媛県|   |39|高知県|   |40|福岡県|   |41|佐賀県|   |42|長崎県|   |43|大分県|   |44|熊本県|   |45|宮崎県|   |46|鹿児島県|   |47|沖縄県|   |48|海外|  </details> 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ColorMeShop::GetGift200ResponseGiftNoshi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ColorMeShop::GetGift200ResponseGiftNoshi do
  let(:instance) { ColorMeShop::GetGift200ResponseGiftNoshi.new }

  describe 'test an instance of GetGift200ResponseGiftNoshi' do
    it 'should create an instance of GetGift200ResponseGiftNoshi' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(ColorMeShop::GetGift200ResponseGiftNoshi)
    end
  end

  describe 'test attribute "enabled"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "text_enabled"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "text_charge"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "types"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "comment"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
