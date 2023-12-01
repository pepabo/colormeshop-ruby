# ColorMeShop::GiftApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_gift**](GiftApi.md#get_gift) | **GET** /v1/gift | ギフト設定を取得 |


## get_gift

> <GetGift200Response> get_gift

ギフト設定を取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::GiftApi.new

begin
  # ギフト設定を取得
  result = api_instance.get_gift
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling GiftApi->get_gift: #{e}"
end
```

#### Using the get_gift_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGift200Response>, Integer, Hash)> get_gift_with_http_info

```ruby
begin
  # ギフト設定を取得
  data, status_code, headers = api_instance.get_gift_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGift200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling GiftApi->get_gift_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetGift200Response**](GetGift200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

