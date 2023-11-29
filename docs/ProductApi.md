# ColorMeShop::ProductApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_product_pickup**](ProductApi.md#delete_product_pickup) | **DELETE** /v1/products/{product_id}/pickups/{pickup_type} | おすすめ商品情報の削除 |
| [**get_product**](ProductApi.md#get_product) | **GET** /v1/products/{product_id} | 商品データの取得 |
| [**get_product_variants**](ProductApi.md#get_product_variants) | **GET** /v1/products/{product_id}/variants | 商品オプション一覧の取得 |
| [**get_products**](ProductApi.md#get_products) | **GET** /v1/products | 商品一覧の取得 |
| [**post_product_pickup**](ProductApi.md#post_product_pickup) | **POST** /v1/products/{product_id}/pickups | おすすめ商品情報の追加 |
| [**post_products**](ProductApi.md#post_products) | **POST** /v1/products | 商品データの追加 |
| [**put_product_pickup**](ProductApi.md#put_product_pickup) | **PUT** /v1/products/{product_id}/pickups | おすすめ商品情報の更新 |
| [**update_product**](ProductApi.md#update_product) | **PUT** /v1/products/{product_id} | 商品データの更新 |


## delete_product_pickup

> <PutProductPickup200Response> delete_product_pickup(product_id, pickup_type)

おすすめ商品情報の削除

商品に付加されたおすすめ商品情報を削除します

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
product_id = 56 # Integer | 商品ID
pickup_type = 56 # Integer | おすすめ商品情報種別（0:おすすめ商品, 1:売れ筋商品, 3:新着商品, 4:イチオシ商品）

begin
  # おすすめ商品情報の削除
  result = api_instance.delete_product_pickup(product_id, pickup_type)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->delete_product_pickup: #{e}"
end
```

#### Using the delete_product_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutProductPickup200Response>, Integer, Hash)> delete_product_pickup_with_http_info(product_id, pickup_type)

```ruby
begin
  # おすすめ商品情報の削除
  data, status_code, headers = api_instance.delete_product_pickup_with_http_info(product_id, pickup_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutProductPickup200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->delete_product_pickup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID |  |
| **pickup_type** | **Integer** | おすすめ商品情報種別（0:おすすめ商品, 1:売れ筋商品, 3:新着商品, 4:イチオシ商品） |  |

### Return type

[**PutProductPickup200Response**](PutProductPickup200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product

> <PostProducts200Response> get_product(product_id)

商品データの取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
product_id = 56 # Integer | 商品ID

begin
  # 商品データの取得
  result = api_instance.get_product(product_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostProducts200Response>, Integer, Hash)> get_product_with_http_info(product_id)

```ruby
begin
  # 商品データの取得
  data, status_code, headers = api_instance.get_product_with_http_info(product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostProducts200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID |  |

### Return type

[**PostProducts200Response**](PostProducts200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_variants

> <GetProductVariants200Response> get_product_variants(product_id, opts)

商品オプション一覧の取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
product_id = 56 # Integer | 商品ID
opts = {
  model_number: 'model_number_example', # String | 型番で部分一致検索
  fields: 'fields_example', # String | レスポンスJSONのキーをカンマ区切りで指定
  limit: 56, # Integer | レスポンスの件数を指定。指定がない場合は10。最大50
  offset: 56 # Integer | 指定した数値+1件目以降のデータを返す
}

begin
  # 商品オプション一覧の取得
  result = api_instance.get_product_variants(product_id, opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->get_product_variants: #{e}"
end
```

#### Using the get_product_variants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductVariants200Response>, Integer, Hash)> get_product_variants_with_http_info(product_id, opts)

```ruby
begin
  # 商品オプション一覧の取得
  data, status_code, headers = api_instance.get_product_variants_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductVariants200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->get_product_variants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID |  |
| **model_number** | **String** | 型番で部分一致検索 | [optional] |
| **fields** | **String** | レスポンスJSONのキーをカンマ区切りで指定 | [optional] |
| **limit** | **Integer** | レスポンスの件数を指定。指定がない場合は10。最大50 | [optional] |
| **offset** | **Integer** | 指定した数値+1件目以降のデータを返す | [optional] |

### Return type

[**GetProductVariants200Response**](GetProductVariants200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> <GetProducts200Response> get_products(opts)

商品一覧の取得

商品一覧を取得します。  オプションやバリエーションの数が多い場合、レスポンスの返却に時間がかかる場合があります。 `fields` リクエストパラメータで必要なキーを指定することを推奨します。 

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
opts = {
  ids: 'ids_example', # String | 商品IDで検索。カンマ区切りにすることで複数検索が可能
  category_id_big: 56, # Integer | 大カテゴリーIDで検索
  category_id_small: 56, # Integer | 小カテゴリーIDで検索
  group_ids: 56, # Integer | グループIDで検索。カンマ区切りにすることで複数検索が可能
  model_number: 'model_number_example', # String | 型番で部分一致検索
  name: 'name_example', # String | 商品名で部分一致検索
  display_state: 'showing', # String | 掲載設定で検索  - `showing`: 掲載状態 - `hidden`: 非掲載状態 - `showing_for_members`: 会員にのみ掲載 - `sale_for_members`: 掲載状態だが購入は会員のみ可能 
  stocks: 56, # Integer | 在庫管理している商品のうち、在庫数が指定した数値以下の商品を検索。オプションごとに在庫管理している商品は、オプションごとの在庫数で検索される
  stock_managed: true, # Boolean | `true`の場合、在庫管理している商品を検索
  recent_zero_stocks: true, # Boolean | `true` の場合、過去1週間以内に更新された商品から検索
  make_date_min: 'make_date_min_example', # String | 指定日時以降に作成された商品から検索
  make_date_max: 'make_date_max_example', # String | 指定日時以前に作成された商品から検索
  update_date_min: 'update_date_min_example', # String | 指定日時以降に更新された商品から検索
  update_date_max: 'update_date_max_example', # String | 指定日時以前に更新された商品から検索
  fields: 'fields_example', # String | レスポンスJSONのキーをカンマ区切りで指定
  limit: 56, # Integer | レスポンスの件数を指定。指定がない場合は10。最大50
  offset: 56 # Integer | 指定した数値+1件目以降のデータを返す
}

begin
  # 商品一覧の取得
  result = api_instance.get_products(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->get_products: #{e}"
end
```

#### Using the get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProducts200Response>, Integer, Hash)> get_products_with_http_info(opts)

```ruby
begin
  # 商品一覧の取得
  data, status_code, headers = api_instance.get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProducts200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | 商品IDで検索。カンマ区切りにすることで複数検索が可能 | [optional] |
| **category_id_big** | **Integer** | 大カテゴリーIDで検索 | [optional] |
| **category_id_small** | **Integer** | 小カテゴリーIDで検索 | [optional] |
| **group_ids** | **Integer** | グループIDで検索。カンマ区切りにすることで複数検索が可能 | [optional] |
| **model_number** | **String** | 型番で部分一致検索 | [optional] |
| **name** | **String** | 商品名で部分一致検索 | [optional] |
| **display_state** | **String** | 掲載設定で検索  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **stocks** | **Integer** | 在庫管理している商品のうち、在庫数が指定した数値以下の商品を検索。オプションごとに在庫管理している商品は、オプションごとの在庫数で検索される | [optional] |
| **stock_managed** | **Boolean** | &#x60;true&#x60;の場合、在庫管理している商品を検索 | [optional] |
| **recent_zero_stocks** | **Boolean** | &#x60;true&#x60; の場合、過去1週間以内に更新された商品から検索 | [optional] |
| **make_date_min** | **String** | 指定日時以降に作成された商品から検索 | [optional] |
| **make_date_max** | **String** | 指定日時以前に作成された商品から検索 | [optional] |
| **update_date_min** | **String** | 指定日時以降に更新された商品から検索 | [optional] |
| **update_date_max** | **String** | 指定日時以前に更新された商品から検索 | [optional] |
| **fields** | **String** | レスポンスJSONのキーをカンマ区切りで指定 | [optional] |
| **limit** | **Integer** | レスポンスの件数を指定。指定がない場合は10。最大50 | [optional] |
| **offset** | **Integer** | 指定した数値+1件目以降のデータを返す | [optional] |

### Return type

[**GetProducts200Response**](GetProducts200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_product_pickup

> <PutProductPickup200Response> post_product_pickup(product_id, put_product_pickup_request)

おすすめ商品情報の追加

おすすめ商品情報(おすすめ商品、売れ筋商品、新着商品、イチオシ商品のいずれか)を商品に追加します。

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
product_id = 56 # Integer | 商品ID
put_product_pickup_request = ColorMeShop::PutProductPickupRequest.new # PutProductPickupRequest | 

begin
  # おすすめ商品情報の追加
  result = api_instance.post_product_pickup(product_id, put_product_pickup_request)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->post_product_pickup: #{e}"
end
```

#### Using the post_product_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutProductPickup200Response>, Integer, Hash)> post_product_pickup_with_http_info(product_id, put_product_pickup_request)

```ruby
begin
  # おすすめ商品情報の追加
  data, status_code, headers = api_instance.post_product_pickup_with_http_info(product_id, put_product_pickup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutProductPickup200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->post_product_pickup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID |  |
| **put_product_pickup_request** | [**PutProductPickupRequest**](PutProductPickupRequest.md) |  |  |

### Return type

[**PutProductPickup200Response**](PutProductPickup200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_products

> <PostProducts200Response> post_products(post_products_request)

商品データの追加



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
post_products_request = ColorMeShop::PostProductsRequest.new # PostProductsRequest | 商品データ

begin
  # 商品データの追加
  result = api_instance.post_products(post_products_request)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->post_products: #{e}"
end
```

#### Using the post_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostProducts200Response>, Integer, Hash)> post_products_with_http_info(post_products_request)

```ruby
begin
  # 商品データの追加
  data, status_code, headers = api_instance.post_products_with_http_info(post_products_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostProducts200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->post_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_products_request** | [**PostProductsRequest**](PostProductsRequest.md) | 商品データ |  |

### Return type

[**PostProducts200Response**](PostProducts200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_product_pickup

> <PutProductPickup200Response> put_product_pickup(product_id, put_product_pickup_request)

おすすめ商品情報の更新

おすすめ商品情報(おすすめ商品、売れ筋商品、新着商品、イチオシ商品のいずれか)を更新します。

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
product_id = 56 # Integer | 商品ID
put_product_pickup_request = ColorMeShop::PutProductPickupRequest.new # PutProductPickupRequest | 

begin
  # おすすめ商品情報の更新
  result = api_instance.put_product_pickup(product_id, put_product_pickup_request)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->put_product_pickup: #{e}"
end
```

#### Using the put_product_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutProductPickup200Response>, Integer, Hash)> put_product_pickup_with_http_info(product_id, put_product_pickup_request)

```ruby
begin
  # おすすめ商品情報の更新
  data, status_code, headers = api_instance.put_product_pickup_with_http_info(product_id, put_product_pickup_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutProductPickup200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->put_product_pickup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID |  |
| **put_product_pickup_request** | [**PutProductPickupRequest**](PutProductPickupRequest.md) |  |  |

### Return type

[**PutProductPickup200Response**](PutProductPickup200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_product

> <PostProducts200Response> update_product(product_id, opts)

商品データの更新



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ProductApi.new
product_id = 56 # Integer | 商品ID
opts = {
  update_product_request: ColorMeShop::UpdateProductRequest.new # UpdateProductRequest | 商品データ
}

begin
  # 商品データの更新
  result = api_instance.update_product(product_id, opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostProducts200Response>, Integer, Hash)> update_product_with_http_info(product_id, opts)

```ruby
begin
  # 商品データの更新
  data, status_code, headers = api_instance.update_product_with_http_info(product_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostProducts200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ProductApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID |  |
| **update_product_request** | [**UpdateProductRequest**](UpdateProductRequest.md) | 商品データ | [optional] |

### Return type

[**PostProducts200Response**](PostProducts200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

