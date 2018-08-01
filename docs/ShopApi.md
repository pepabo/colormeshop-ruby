# ColorMeShop::ShopApi

All URIs are relative to *https://api.shop-pro.jp*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_shop**](ShopApi.md#get_shop) | **GET** /v1/shop.json | ショップ情報の取得


# **get_shop**
> Object get_shop

ショップ情報の取得

ショップ名などの基本的な情報を取得することができるAPIです。 

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ShopApi.new

begin
  #ショップ情報の取得
  result = api_instance.get_shop
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ShopApi->get_shop: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



