# ColorMeShop::PaymentApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payments**](PaymentApi.md#get_payments) | **GET** /v1/payments | 決済設定の一覧を取得 |


## get_payments

> <GetPayments200Response> get_payments

決済設定の一覧を取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::PaymentApi.new

begin
  # 決済設定の一覧を取得
  result = api_instance.get_payments
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling PaymentApi->get_payments: #{e}"
end
```

#### Using the get_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayments200Response>, Integer, Hash)> get_payments_with_http_info

```ruby
begin
  # 決済設定の一覧を取得
  data, status_code, headers = api_instance.get_payments_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayments200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling PaymentApi->get_payments_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPayments200Response**](GetPayments200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

