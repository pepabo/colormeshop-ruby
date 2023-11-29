# ColorMeShop::DeliveryApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_deliveries**](DeliveryApi.md#get_deliveries) | **GET** /v1/deliveries | 配送方法一覧を取得 |
| [**get_delivery_date_setting**](DeliveryApi.md#get_delivery_date_setting) | **GET** /v1/deliveries/date | 配送日時設定を取得 |


## get_deliveries

> <GetDeliveries200Response> get_deliveries

配送方法一覧を取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::DeliveryApi.new

begin
  # 配送方法一覧を取得
  result = api_instance.get_deliveries
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling DeliveryApi->get_deliveries: #{e}"
end
```

#### Using the get_deliveries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeliveries200Response>, Integer, Hash)> get_deliveries_with_http_info

```ruby
begin
  # 配送方法一覧を取得
  data, status_code, headers = api_instance.get_deliveries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeliveries200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling DeliveryApi->get_deliveries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDeliveries200Response**](GetDeliveries200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_delivery_date_setting

> <GetDeliveryDateSetting200Response> get_delivery_date_setting

配送日時設定を取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::DeliveryApi.new

begin
  # 配送日時設定を取得
  result = api_instance.get_delivery_date_setting
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling DeliveryApi->get_delivery_date_setting: #{e}"
end
```

#### Using the get_delivery_date_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeliveryDateSetting200Response>, Integer, Hash)> get_delivery_date_setting_with_http_info

```ruby
begin
  # 配送日時設定を取得
  data, status_code, headers = api_instance.get_delivery_date_setting_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeliveryDateSetting200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling DeliveryApi->get_delivery_date_setting_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDeliveryDateSetting200Response**](GetDeliveryDateSetting200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

