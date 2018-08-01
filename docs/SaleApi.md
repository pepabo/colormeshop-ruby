# ColorMeShop::SaleApi

All URIs are relative to *https://api.shop-pro.jp*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_sale**](SaleApi.md#cancel_sale) | **PUT** /v1/sales/{saleId}/cancel.json | 受注のキャンセル
[**get_sale**](SaleApi.md#get_sale) | **GET** /v1/sales/{saleId}.json | 受注データの取得
[**get_sales**](SaleApi.md#get_sales) | **GET** /v1/sales.json | 受注データのリストを取得
[**send_sales_mail**](SaleApi.md#send_sales_mail) | **POST** /v1/sales/{saleId}/mails.json | メールの送信
[**stat_sale**](SaleApi.md#stat_sale) | **GET** /v1/sales/stat.json | 売上集計の取得
[**update_sale**](SaleApi.md#update_sale) | **PUT** /v1/sales/{saleId}.json | 受注データの更新


# **cancel_sale**
> Object cancel_sale(sale_id, opts)

受注のキャンセル

受注をキャンセルすると、以下のことが起こります。  - 該当受注の商品購入数が0になる - 該当受注の合計金額が0になる - 該当受注の`canceled`が`true`になる - 該当受注に使用されたショップポイント・GMOポイントがキャンセルされる - 該当受注の決済がAmazon Pay、または楽天ペイ（オンライン決済）である場合は、決済金額が自動的に購入者へ返金される - カラメル等の販売手数料が0になる 

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 
opts = {
  unknown_base_type: ColorMeShop::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 
}

begin
  #受注のキャンセル
  result = api_instance.cancel_sale(sale_id, opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling SaleApi->cancel_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale_id** | **Integer**|  | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sale**
> Object get_sale(sale_id)

受注データの取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 

begin
  #受注データの取得
  result = api_instance.get_sale(sale_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling SaleApi->get_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sales**
> Object get_sales(opts)

受注データのリストを取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
opts = {
  ids: 'ids_example', # String | 受注IDで検索。カンマ区切りで複数指定可能
  after: 'after_example', # String | 指定日時以降の受注から検索
  before: 'before_example', # String | 指定日時以前の受注から検索
  make_date_min: 'make_date_min_example', # String | `after`と同義
  make_date_max: 'make_date_max_example', # String | `before`と同義
  update_date_min: 'update_date_min_example', # String | 指定日時以降に更新された受注から検索
  update_date_max: 'update_date_max_example', # String | 指定日時以降に更新された受注から検索
  customer_ids: 'customer_ids_example', # String | 購入した顧客IDで検索。カンマ区切りにすることで複数検索が可能
  customer_name: 'customer_name_example', # String | 購入した顧客名で部分一致検索
  customer_furigana: 'customer_furigana_example', # String | 購入した顧客フリガナがで部分一致検索
  customer_mail: 'customer_mail_example', # String | 購入した顧客メールアドレスで部分一致検索
  accepted_mail_state: 56, # Integer | 受注メールの送信状態で検索  - `0`: 未送信 - `1`: 送信済み - `2`: 送信しない 
  paid_mail_state: 56, # Integer | 入金メールの送信状態で検索  - `0`: 未送信 - `1`: 送信済み - `2`: 送信しない 
  delivered_mail_state: 56, # Integer | 配送メールの送信状態で検索  - `0`: 未送信 - `1`: 送信済み - `2`: 送信しない 
  mobile: true, # BOOLEAN | `true`なら携帯からの受注のみ取得
  paid: true, # BOOLEAN | `true`なら入金済みの受注のみ取得
  delivered: true, # BOOLEAN | `true`なら配送済みの受注のみ取得
  payment_ids: 'payment_ids_example', # String | 使用された決済のIDで検索。カンマ区切りで複数指定可能
  fields: 'fields_example', # String | レスポンスJSONのキーをカンマ区切りで指定
  limit: 56, # Integer | レスポンスの件数を指定。指定がない場合は10。最大50
  offset: 56 # Integer | 指定した数値+1件目以降のデータを返す
}

begin
  #受注データのリストを取得
  result = api_instance.get_sales(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling SaleApi->get_sales: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| 受注IDで検索。カンマ区切りで複数指定可能 | [optional] 
 **after** | **String**| 指定日時以降の受注から検索 | [optional] 
 **before** | **String**| 指定日時以前の受注から検索 | [optional] 
 **make_date_min** | **String**| &#x60;after&#x60;と同義 | [optional] 
 **make_date_max** | **String**| &#x60;before&#x60;と同義 | [optional] 
 **update_date_min** | **String**| 指定日時以降に更新された受注から検索 | [optional] 
 **update_date_max** | **String**| 指定日時以降に更新された受注から検索 | [optional] 
 **customer_ids** | **String**| 購入した顧客IDで検索。カンマ区切りにすることで複数検索が可能 | [optional] 
 **customer_name** | **String**| 購入した顧客名で部分一致検索 | [optional] 
 **customer_furigana** | **String**| 購入した顧客フリガナがで部分一致検索 | [optional] 
 **customer_mail** | **String**| 購入した顧客メールアドレスで部分一致検索 | [optional] 
 **accepted_mail_state** | **Integer**| 受注メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない  | [optional] 
 **paid_mail_state** | **Integer**| 入金メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない  | [optional] 
 **delivered_mail_state** | **Integer**| 配送メールの送信状態で検索  - &#x60;0&#x60;: 未送信 - &#x60;1&#x60;: 送信済み - &#x60;2&#x60;: 送信しない  | [optional] 
 **mobile** | **BOOLEAN**| &#x60;true&#x60;なら携帯からの受注のみ取得 | [optional] 
 **paid** | **BOOLEAN**| &#x60;true&#x60;なら入金済みの受注のみ取得 | [optional] 
 **delivered** | **BOOLEAN**| &#x60;true&#x60;なら配送済みの受注のみ取得 | [optional] 
 **payment_ids** | **String**| 使用された決済のIDで検索。カンマ区切りで複数指定可能 | [optional] 
 **fields** | **String**| レスポンスJSONのキーをカンマ区切りで指定 | [optional] 
 **limit** | **Integer**| レスポンスの件数を指定。指定がない場合は10。最大50 | [optional] 
 **offset** | **Integer**| 指定した数値+1件目以降のデータを返す | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_sales_mail**
> send_sales_mail(sale_id, opts)

メールの送信

受注・入金確認・商品発送メールを送ることができます。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 
opts = {
  unknown_base_type: ColorMeShop::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 
}

begin
  #メールの送信
  api_instance.send_sales_mail(sale_id, opts)
rescue ColorMeShop::ApiError => e
  puts "Exception when calling SaleApi->send_sales_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale_id** | **Integer**|  | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **stat_sale**
> Object stat_sale(opts)

売上集計の取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
opts = {
  make_date: 'make_date_example' # String | 集計対象とする売上の作成日。形式は\"2017-04-12\"、\"2017/04/12\"など。指定しない場合は今日の日付が使われる
}

begin
  #売上集計の取得
  result = api_instance.stat_sale(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling SaleApi->stat_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **make_date** | **String**| 集計対象とする売上の作成日。形式は\&quot;2017-04-12\&quot;、\&quot;2017/04/12\&quot;など。指定しない場合は今日の日付が使われる | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_sale**
> Object update_sale(sale_id, opts)

受注データの更新

該当受注の決済がAmazon Pay、または楽天ペイ（オンライン決済）である場合は、熨斗・メッセージカード・ラッピングの手数料を更新すると、決済金額が自動的に購入者に請求もしくは返金されます。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 
opts = {
  unknown_base_type: ColorMeShop::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 
}

begin
  #受注データの更新
  result = api_instance.update_sale(sale_id, opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling SaleApi->update_sale: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale_id** | **Integer**|  | 
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



