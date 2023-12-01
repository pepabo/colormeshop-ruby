# ColorMeShop::CustomerApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_customer**](CustomerApi.md#get_customer) | **GET** /v1/customers/{customer_id} | 顧客データの取得 |
| [**get_customers**](CustomerApi.md#get_customers) | **GET** /v1/customers | 顧客データのリストを取得 |
| [**post_customers**](CustomerApi.md#post_customers) | **POST** /v1/customers | 顧客データを追加 |


## get_customer

> <GetCustomer200Response> get_customer(customer_id)

顧客データの取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::CustomerApi.new
customer_id = 56 # Integer | 

begin
  # 顧客データの取得
  result = api_instance.get_customer(customer_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling CustomerApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomer200Response>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # 顧客データの取得
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomer200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling CustomerApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **Integer** |  |  |

### Return type

[**GetCustomer200Response**](GetCustomer200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers

> <GetCustomers200Response> get_customers(opts)

顧客データのリストを取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::CustomerApi.new
opts = {
  ids: 'ids_example', # String | 顧客IDで検索。カンマ区切りで複数指定可能
  name: 'name_example', # String | 顧客名で部分一致検索
  furigana: 'furigana_example', # String | 顧客フリガナで部分一致検索
  mail: 'mail_example', # String | 顧客メールアドレスで部分一致検索
  postal: 'postal_example', # String | 顧客の郵便番号で部分一致検索
  tel: 'tel_example', # String | 顧客の電話番号で部分一致検索
  sex: 'male', # String | 顧客の性別で検索  - `male`: 男性 - `female`: 女性 
  member: true, # Boolean | `true`なら会員登録済みの顧客から検索
  receive_mail_magazine: true, # Boolean | メルマガ受信可否で検索
  make_date_min: 'make_date_min_example', # String | 指定日時以降に登録された顧客から検索
  make_date_max: 'make_date_max_example', # String | 指定日時以前に登録された顧客から検索
  update_date_min: 'update_date_min_example', # String | 指定日時以降に更新された顧客から検索
  update_date_max: 'update_date_max_example', # String | 指定日時以前に更新された顧客から検索
  limit: 56, # Integer | レスポンスの件数を指定。指定がない場合は10。最大100
  offset: 56 # Integer | 指定した数値+1件目以降のデータを返す
}

begin
  # 顧客データのリストを取得
  result = api_instance.get_customers(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling CustomerApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomers200Response>, Integer, Hash)> get_customers_with_http_info(opts)

```ruby
begin
  # 顧客データのリストを取得
  data, status_code, headers = api_instance.get_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomers200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling CustomerApi->get_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | 顧客IDで検索。カンマ区切りで複数指定可能 | [optional] |
| **name** | **String** | 顧客名で部分一致検索 | [optional] |
| **furigana** | **String** | 顧客フリガナで部分一致検索 | [optional] |
| **mail** | **String** | 顧客メールアドレスで部分一致検索 | [optional] |
| **postal** | **String** | 顧客の郵便番号で部分一致検索 | [optional] |
| **tel** | **String** | 顧客の電話番号で部分一致検索 | [optional] |
| **sex** | **String** | 顧客の性別で検索  - &#x60;male&#x60;: 男性 - &#x60;female&#x60;: 女性  | [optional] |
| **member** | **Boolean** | &#x60;true&#x60;なら会員登録済みの顧客から検索 | [optional] |
| **receive_mail_magazine** | **Boolean** | メルマガ受信可否で検索 | [optional] |
| **make_date_min** | **String** | 指定日時以降に登録された顧客から検索 | [optional] |
| **make_date_max** | **String** | 指定日時以前に登録された顧客から検索 | [optional] |
| **update_date_min** | **String** | 指定日時以降に更新された顧客から検索 | [optional] |
| **update_date_max** | **String** | 指定日時以前に更新された顧客から検索 | [optional] |
| **limit** | **Integer** | レスポンスの件数を指定。指定がない場合は10。最大100 | [optional] |
| **offset** | **Integer** | 指定した数値+1件目以降のデータを返す | [optional] |

### Return type

[**GetCustomers200Response**](GetCustomers200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_customers

> <PostCustomers200Response> post_customers(opts)

顧客データを追加



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::CustomerApi.new
opts = {
  post_customers_request: ColorMeShop::PostCustomersRequest.new # PostCustomersRequest | 
}

begin
  # 顧客データを追加
  result = api_instance.post_customers(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling CustomerApi->post_customers: #{e}"
end
```

#### Using the post_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomers200Response>, Integer, Hash)> post_customers_with_http_info(opts)

```ruby
begin
  # 顧客データを追加
  data, status_code, headers = api_instance.post_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomers200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling CustomerApi->post_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_customers_request** | [**PostCustomersRequest**](PostCustomersRequest.md) |  | [optional] |

### Return type

[**PostCustomers200Response**](PostCustomers200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

