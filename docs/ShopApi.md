# ColorMeShop::ShopApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_shop**](ShopApi.md#get_shop) | **GET** /v1/shop | ショップ情報の取得 |


## get_shop

> <GetShop200Response> get_shop

ショップ情報の取得

ショップ名などの基本的な情報を取得することができるAPIです。 

### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ShopApi.new

begin
  # ショップ情報の取得
  result = api_instance.get_shop
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ShopApi->get_shop: #{e}"
end
```

#### Using the get_shop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShop200Response>, Integer, Hash)> get_shop_with_http_info

```ruby
begin
  # ショップ情報の取得
  data, status_code, headers = api_instance.get_shop_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShop200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ShopApi->get_shop_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetShop200Response**](GetShop200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

