# ColorMeShop::DeliveryApi

All URIs are relative to *https://api.shop-pro.jp/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_deliveries**](DeliveryApi.md#get_deliveries) | **GET** /v1/deliveries.json | 配送方法一覧を取得
[**get_delivery_date_setting**](DeliveryApi.md#get_delivery_date_setting) | **GET** /v1/deliveries/date.json | 配送日時設定を取得


# **get_deliveries**
> Object get_deliveries

配送方法一覧を取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::DeliveryApi.new

begin
  #配送方法一覧を取得
  result = api_instance.get_deliveries
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling DeliveryApi->get_deliveries: #{e}"
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



# **get_delivery_date_setting**
> Object get_delivery_date_setting

配送日時設定を取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::DeliveryApi.new

begin
  #配送日時設定を取得
  result = api_instance.get_delivery_date_setting
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling DeliveryApi->get_delivery_date_setting: #{e}"
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



