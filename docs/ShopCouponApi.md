# ColorMeShop::ShopCouponApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_coupon**](ShopCouponApi.md#get_coupon) | **GET** /v1/shop_coupons/{coupon_id} | ショップクーポンの取得 |
| [**get_coupons**](ShopCouponApi.md#get_coupons) | **GET** /v1/shop_coupons | ショップクーポン一覧取得 |


## get_coupon

> <GetCoupon200Response> get_coupon(coupon_id)

ショップクーポンの取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ShopCouponApi.new
coupon_id = 56 # Integer | Coupon ID

begin
  # ショップクーポンの取得
  result = api_instance.get_coupon(coupon_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ShopCouponApi->get_coupon: #{e}"
end
```

#### Using the get_coupon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCoupon200Response>, Integer, Hash)> get_coupon_with_http_info(coupon_id)

```ruby
begin
  # ショップクーポンの取得
  data, status_code, headers = api_instance.get_coupon_with_http_info(coupon_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCoupon200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ShopCouponApi->get_coupon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coupon_id** | **Integer** | Coupon ID |  |

### Return type

[**GetCoupon200Response**](GetCoupon200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_coupons

> <GetCoupons200Response> get_coupons

ショップクーポン一覧取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ShopCouponApi.new

begin
  # ショップクーポン一覧取得
  result = api_instance.get_coupons
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling ShopCouponApi->get_coupons: #{e}"
end
```

#### Using the get_coupons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCoupons200Response>, Integer, Hash)> get_coupons_with_http_info

```ruby
begin
  # ショップクーポン一覧取得
  data, status_code, headers = api_instance.get_coupons_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCoupons200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling ShopCouponApi->get_coupons_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCoupons200Response**](GetCoupons200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

