# ColorMeShop::StockApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_stocks**](StockApi.md#get_stocks) | **GET** /v1/stocks | 在庫情報の取得 |


## get_stocks

> <GetStocks200Response> get_stocks(opts)

在庫情報の取得

在庫情報を商品名や型番で検索できるAPIです。 

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::StockApi.new
opts = {
  ids: 'ids_example', # String | 商品IDで検索。カンマ区切りにすることで複数検索が可能
  category_id_big: 56, # Integer | 大カテゴリーIDで検索
  category_id_small: 56, # Integer | 小カテゴリーIDで検索
  model_number: 'model_number_example', # String | 型番で部分一致検索
  name: 'name_example', # String | 商品名で部分一致検索
  display_state: 'showing', # String | 掲載設定で検索  - `showing`: 掲載状態 - `hidden`: 非掲載状態 - `showing_for_members`: 会員にのみ掲載 - `sale_for_members`: 掲載状態だが購入は会員のみ可能 
  stocks: 56, # Integer | 在庫管理している商品のうち、在庫数が指定した数値以下の商品を検索。オプションごとに在庫管理している商品は、オプションごとの在庫数で検索される
  recent_zero_stocks: true, # Boolean | `true` の場合、過去1週間以内にオプションが更新された商品から検索
  fields: 'fields_example', # String | レスポンスJSONのキーをカンマ区切りで指定
  limit: 56, # Integer | レスポンスの件数を指定。指定がない場合は10。最大50
  offset: 56 # Integer | 指定した数値+1件目以降のデータを返す
}

begin
  # 在庫情報の取得
  result = api_instance.get_stocks(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling StockApi->get_stocks: #{e}"
end
```

#### Using the get_stocks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStocks200Response>, Integer, Hash)> get_stocks_with_http_info(opts)

```ruby
begin
  # 在庫情報の取得
  data, status_code, headers = api_instance.get_stocks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStocks200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling StockApi->get_stocks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | 商品IDで検索。カンマ区切りにすることで複数検索が可能 | [optional] |
| **category_id_big** | **Integer** | 大カテゴリーIDで検索 | [optional] |
| **category_id_small** | **Integer** | 小カテゴリーIDで検索 | [optional] |
| **model_number** | **String** | 型番で部分一致検索 | [optional] |
| **name** | **String** | 商品名で部分一致検索 | [optional] |
| **display_state** | **String** | 掲載設定で検索  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **stocks** | **Integer** | 在庫管理している商品のうち、在庫数が指定した数値以下の商品を検索。オプションごとに在庫管理している商品は、オプションごとの在庫数で検索される | [optional] |
| **recent_zero_stocks** | **Boolean** | &#x60;true&#x60; の場合、過去1週間以内にオプションが更新された商品から検索 | [optional] |
| **fields** | **String** | レスポンスJSONのキーをカンマ区切りで指定 | [optional] |
| **limit** | **Integer** | レスポンスの件数を指定。指定がない場合は10。最大50 | [optional] |
| **offset** | **Integer** | 指定した数値+1件目以降のデータを返す | [optional] |

### Return type

[**GetStocks200Response**](GetStocks200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

