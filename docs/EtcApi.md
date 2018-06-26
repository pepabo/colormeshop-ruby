# ColorMeShop::EtcApi

All URIs are relative to *https://api.shop-pro.jp/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_device_token**](EtcApi.md#delete_device_token) | **DELETE** /v1/device_tokens/{token}.json | デバイストークンの削除


# **delete_device_token**
> delete_device_token(token)

デバイストークンの削除

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::EtcApi.new
token = 'token_example' # String | 

begin
  #デバイストークンの削除
  api_instance.delete_device_token(token)
rescue ColorMeShop::ApiError => e
  puts "Exception when calling EtcApi->delete_device_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



