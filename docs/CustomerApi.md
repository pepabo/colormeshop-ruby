# ColorMeShop::CustomerApi

All URIs are relative to *https://api.shop-pro.jp*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_customer**](CustomerApi.md#get_customer) | **GET** /v1/customers/{customerId}.json | 顧客データの取得
[**get_customers**](CustomerApi.md#get_customers) | **GET** /v1/customers.json | 顧客データのリストを取得
[**post_customers**](CustomerApi.md#post_customers) | **POST** /v1/customers.json | 顧客データを追加


# **get_customer**
> Object get_customer(customer_id)

顧客データの取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::CustomerApi.new
customer_id = 56 # Integer | 

begin
  #顧客データの取得
  result = api_instance.get_customer(customer_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling CustomerApi->get_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customers**
> Object get_customers(opts)

顧客データのリストを取得

### Example
```ruby
# load the gem
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
  furigana: 'furigana_example', # String | 顧客フリガナがで部分一致検索
  mail: 'mail_example', # String | 顧客メールアドレスで部分一致検索
  postal: 'postal_example', # String | 顧客の郵便番号で部分一致検索
  tel: 'tel_example', # String | 顧客の電話番号で部分一致検索
  mobile: true, # BOOLEAN | `true`なら会員登録済みの顧客から検索
  make_date_min: 'make_date_min_example', # String | 指定日時以降に登録された顧客から検索
  make_date_max: 'make_date_max_example', # String | 指定日時以前に登録された顧客から検索
  update_date_min: 'update_date_min_example', # String | 指定日時以降に更新された顧客から検索
  update_date_max: 'update_date_max_example' # String | 指定日時以降に更新された顧客から検索
}

begin
  #顧客データのリストを取得
  result = api_instance.get_customers(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling CustomerApi->get_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| 顧客IDで検索。カンマ区切りで複数指定可能 | [optional] 
 **name** | **String**| 顧客名で部分一致検索 | [optional] 
 **furigana** | **String**| 顧客フリガナがで部分一致検索 | [optional] 
 **mail** | **String**| 顧客メールアドレスで部分一致検索 | [optional] 
 **postal** | **String**| 顧客の郵便番号で部分一致検索 | [optional] 
 **tel** | **String**| 顧客の電話番号で部分一致検索 | [optional] 
 **mobile** | **BOOLEAN**| &#x60;true&#x60;なら会員登録済みの顧客から検索 | [optional] 
 **make_date_min** | **String**| 指定日時以降に登録された顧客から検索 | [optional] 
 **make_date_max** | **String**| 指定日時以前に登録された顧客から検索 | [optional] 
 **update_date_min** | **String**| 指定日時以降に更新された顧客から検索 | [optional] 
 **update_date_max** | **String**| 指定日時以降に更新された顧客から検索 | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_customers**
> Object post_customers(unknown_base_type)

顧客データを追加

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::CustomerApi.new
unknown_base_type = ColorMeShop::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 

begin
  #顧客データを追加
  result = api_instance.post_customers(unknown_base_type)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling CustomerApi->post_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



