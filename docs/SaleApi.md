# ColorMeShop::SaleApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_sale**](SaleApi.md#cancel_sale) | **PUT** /v1/sales/{sale_id}/cancel | 受注のキャンセル |
| [**get_sale**](SaleApi.md#get_sale) | **GET** /v1/sales/{sale_id} | 受注データの取得 |
| [**get_sales**](SaleApi.md#get_sales) | **GET** /v1/sales | 受注データのリストを取得 |
| [**send_sales_mail**](SaleApi.md#send_sales_mail) | **POST** /v1/sales/{sale_id}/mails | メールの送信 |
| [**stat_sale**](SaleApi.md#stat_sale) | **GET** /v1/sales/stat | 売上集計の取得 |
| [**update_sale**](SaleApi.md#update_sale) | **PUT** /v1/sales/{sale_id} | 受注データの更新 |


## cancel_sale

> <UpdateSale200Response> cancel_sale(sale_id, opts)

受注のキャンセル

受注をキャンセルすると、以下のことが起こります。  - 該当受注の商品購入数が0になる - 該当受注の合計金額が0になる - 該当受注の`canceled`が`true`になる - 該当受注に使用されたショップポイント・GMOポイントがキャンセルされる - 該当受注の決済がAmazon Pay、LINE Pay、または楽天ペイ（オンライン決済）である場合は、決済金額が自動的に購入者へ返金される - 該当受注の決済がPayPay（イプシロン）である場合には、イプシロン側の決済もキャンセルされる - ショップポイントがキャンセルされる  販売手数料確定前の場合は以下のことが起こります。 - 販売手数料が0になる - 付与したGMOポイントがキャンセルされる - 購入者が使用したGMOポイントがキャンセルされる  現在、以下の機能はサポートしていません。 - キャンセル連動設定を利用した、クレジット（イプシロン）決済のキャンセル - 分割された受注のキャンセル 

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 
opts = {
  cancel_sale_request: ColorMeShop::CancelSaleRequest.new # CancelSaleRequest | 
}

begin
  # 受注のキャンセル
  result = api_instance.cancel_sale(sale_id, opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->cancel_sale: #{e}"
end
```

#### Using the cancel_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSale200Response>, Integer, Hash)> cancel_sale_with_http_info(sale_id, opts)

```ruby
begin
  # 受注のキャンセル
  data, status_code, headers = api_instance.cancel_sale_with_http_info(sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSale200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->cancel_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **Integer** |  |  |
| **cancel_sale_request** | [**CancelSaleRequest**](CancelSaleRequest.md) |  | [optional] |

### Return type

[**UpdateSale200Response**](UpdateSale200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sale

> <GetSale200Response> get_sale(sale_id)

受注データの取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 

begin
  # 受注データの取得
  result = api_instance.get_sale(sale_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->get_sale: #{e}"
end
```

#### Using the get_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSale200Response>, Integer, Hash)> get_sale_with_http_info(sale_id)

```ruby
begin
  # 受注データの取得
  data, status_code, headers = api_instance.get_sale_with_http_info(sale_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSale200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->get_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **Integer** |  |  |

### Return type

[**GetSale200Response**](GetSale200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sales

> <GetSales200Response> get_sales(opts)

受注データのリストを取得

受注データのリストを取得します。（日付が指定されていない場合は直近1週間分を取得します。）

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
opts = {
  ids: 'ids_example', # String | 受注IDで検索。カンマ区切りで複数指定可能
  after: 'after_example', # String | 指定日時以降の受注から検索。  `after` 未指定時は `before` の指定日時の7日前の0時、  `before` 未指定時は現在から7日前の0時がデフォルト値となります。 
  before: 'before_example', # String | 指定日時以前の受注から検索
  make_date_min: 'make_date_min_example', # String | `after`と同義
  make_date_max: 'make_date_max_example', # String | `before`と同義
  update_date_min: 'update_date_min_example', # String | 指定日時以降に更新された受注から検索
  update_date_max: 'update_date_max_example', # String | 指定日時以前に更新された受注から検索
  customer_ids: 'customer_ids_example', # String | 購入した顧客IDで検索。カンマ区切りにすることで複数検索が可能
  customer_name: 'customer_name_example', # String | 購入した顧客名で部分一致検索
  customer_furigana: 'customer_furigana_example', # String | 購入した顧客フリガナがで部分一致検索
  customer_mail: 'customer_mail_example', # String | 購入した顧客メールアドレスで部分一致検索
  accepted_mail_state: 'not_yet', # String | 受注メールの送信状態で検索  - `not_yet`: 未送信 - `sent`: 送信済み - `pass`: 送信しない 
  paid_mail_state: 'not_yet', # String | 入金メールの送信状態で検索  - `not_yet`: 未送信 - `sent`: 送信済み - `pass`: 送信しない 
  delivered_mail_state: 'not_yet', # String | 配送メールの送信状態で検索  - `not_yet`: 未送信 - `sent`: 送信済み - `pass`: 送信しない 
  mobile: true, # Boolean | `true`なら携帯からの受注のみ取得
  paid: true, # Boolean | `true`なら入金済みの受注のみ取得
  delivered: true, # Boolean | `true`なら配送済みの受注のみ取得
  canceled: true, # Boolean | `true`ならキャンセル済みの受注のみ取得
  payment_ids: 'payment_ids_example', # String | 使用された決済のIDで検索。カンマ区切りで複数指定可能
  fields: 'fields_example', # String | レスポンスJSONのキーをカンマ区切りで指定
  limit: 56, # Integer | レスポンスの件数を指定。指定がない場合は10。最大100
  offset: 56 # Integer | 指定した数値+1件目以降のデータを返す
}

begin
  # 受注データのリストを取得
  result = api_instance.get_sales(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->get_sales: #{e}"
end
```

#### Using the get_sales_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSales200Response>, Integer, Hash)> get_sales_with_http_info(opts)

```ruby
begin
  # 受注データのリストを取得
  data, status_code, headers = api_instance.get_sales_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSales200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->get_sales_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | 受注IDで検索。カンマ区切りで複数指定可能 | [optional] |
| **after** | **String** | 指定日時以降の受注から検索。  &#x60;after&#x60; 未指定時は &#x60;before&#x60; の指定日時の7日前の0時、  &#x60;before&#x60; 未指定時は現在から7日前の0時がデフォルト値となります。  | [optional] |
| **before** | **String** | 指定日時以前の受注から検索 | [optional] |
| **make_date_min** | **String** | &#x60;after&#x60;と同義 | [optional] |
| **make_date_max** | **String** | &#x60;before&#x60;と同義 | [optional] |
| **update_date_min** | **String** | 指定日時以降に更新された受注から検索 | [optional] |
| **update_date_max** | **String** | 指定日時以前に更新された受注から検索 | [optional] |
| **customer_ids** | **String** | 購入した顧客IDで検索。カンマ区切りにすることで複数検索が可能 | [optional] |
| **customer_name** | **String** | 購入した顧客名で部分一致検索 | [optional] |
| **customer_furigana** | **String** | 購入した顧客フリガナがで部分一致検索 | [optional] |
| **customer_mail** | **String** | 購入した顧客メールアドレスで部分一致検索 | [optional] |
| **accepted_mail_state** | **String** | 受注メールの送信状態で検索  - &#x60;not_yet&#x60;: 未送信 - &#x60;sent&#x60;: 送信済み - &#x60;pass&#x60;: 送信しない  | [optional] |
| **paid_mail_state** | **String** | 入金メールの送信状態で検索  - &#x60;not_yet&#x60;: 未送信 - &#x60;sent&#x60;: 送信済み - &#x60;pass&#x60;: 送信しない  | [optional] |
| **delivered_mail_state** | **String** | 配送メールの送信状態で検索  - &#x60;not_yet&#x60;: 未送信 - &#x60;sent&#x60;: 送信済み - &#x60;pass&#x60;: 送信しない  | [optional] |
| **mobile** | **Boolean** | &#x60;true&#x60;なら携帯からの受注のみ取得 | [optional] |
| **paid** | **Boolean** | &#x60;true&#x60;なら入金済みの受注のみ取得 | [optional] |
| **delivered** | **Boolean** | &#x60;true&#x60;なら配送済みの受注のみ取得 | [optional] |
| **canceled** | **Boolean** | &#x60;true&#x60;ならキャンセル済みの受注のみ取得 | [optional] |
| **payment_ids** | **String** | 使用された決済のIDで検索。カンマ区切りで複数指定可能 | [optional] |
| **fields** | **String** | レスポンスJSONのキーをカンマ区切りで指定 | [optional] |
| **limit** | **Integer** | レスポンスの件数を指定。指定がない場合は10。最大100 | [optional] |
| **offset** | **Integer** | 指定した数値+1件目以降のデータを返す | [optional] |

### Return type

[**GetSales200Response**](GetSales200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_sales_mail

> send_sales_mail(sale_id, opts)

メールの送信

受注・入金確認・商品発送メールを送ることができます。  対象の受注が分割されている場合、 受注メール、入金確認メールは、親受注でのみ指定可能です。 

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 
opts = {
  send_sales_mail_request: ColorMeShop::SendSalesMailRequest.new # SendSalesMailRequest | 
}

begin
  # メールの送信
  api_instance.send_sales_mail(sale_id, opts)
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->send_sales_mail: #{e}"
end
```

#### Using the send_sales_mail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_sales_mail_with_http_info(sale_id, opts)

```ruby
begin
  # メールの送信
  data, status_code, headers = api_instance.send_sales_mail_with_http_info(sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->send_sales_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **Integer** |  |  |
| **send_sales_mail_request** | [**SendSalesMailRequest**](SendSalesMailRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## stat_sale

> <StatSale200Response> stat_sale(opts)

売上集計の取得



### Examples

```ruby
require 'time'
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
  # 売上集計の取得
  result = api_instance.stat_sale(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->stat_sale: #{e}"
end
```

#### Using the stat_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatSale200Response>, Integer, Hash)> stat_sale_with_http_info(opts)

```ruby
begin
  # 売上集計の取得
  data, status_code, headers = api_instance.stat_sale_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatSale200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->stat_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **make_date** | **String** | 集計対象とする売上の作成日。形式は\&quot;2017-04-12\&quot;、\&quot;2017/04/12\&quot;など。指定しない場合は今日の日付が使われる | [optional] |

### Return type

[**StatSale200Response**](StatSale200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sale

> <UpdateSale200Response> update_sale(sale_id, opts)

受注データの更新

該当受注の決済がAmazon Pay、LINE Pay、または楽天ペイ（オンライン決済）である場合は、熨斗・メッセージカード・ラッピングの手数料を更新すると、決済金額が自動的に購入者に請求もしくは返金されます。  ただし、LINE Payの場合は、決済金額の変更は減額のみ行うことができます。 

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::SaleApi.new
sale_id = 56 # Integer | 
opts = {
  update_sale_request: ColorMeShop::UpdateSaleRequest.new # UpdateSaleRequest | 
}

begin
  # 受注データの更新
  result = api_instance.update_sale(sale_id, opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->update_sale: #{e}"
end
```

#### Using the update_sale_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateSale200Response>, Integer, Hash)> update_sale_with_http_info(sale_id, opts)

```ruby
begin
  # 受注データの更新
  data, status_code, headers = api_instance.update_sale_with_http_info(sale_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateSale200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling SaleApi->update_sale_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sale_id** | **Integer** |  |  |
| **update_sale_request** | [**UpdateSaleRequest**](UpdateSaleRequest.md) |  | [optional] |

### Return type

[**UpdateSale200Response**](UpdateSale200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

