# ColorMeShop::GroupApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_product_groups**](GroupApi.md#get_product_groups) | **GET** /v1/groups | 商品グループ一覧を取得 |


## get_product_groups

> <GetProductGroups200Response> get_product_groups

商品グループ一覧を取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::GroupApi.new

begin
  # 商品グループ一覧を取得
  result = api_instance.get_product_groups
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling GroupApi->get_product_groups: #{e}"
end
```

#### Using the get_product_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductGroups200Response>, Integer, Hash)> get_product_groups_with_http_info

```ruby
begin
  # 商品グループ一覧を取得
  data, status_code, headers = api_instance.get_product_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductGroups200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling GroupApi->get_product_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetProductGroups200Response**](GetProductGroups200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

