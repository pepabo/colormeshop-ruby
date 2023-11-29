# ColorMeShop::CategoryApi

All URIs are relative to *https://api.shop-pro.jp*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_product_categories**](CategoryApi.md#get_product_categories) | **GET** /v1/categories | 商品カテゴリー一覧を取得 |


## get_product_categories

> <GetProductCategories200Response> get_product_categories

商品カテゴリー一覧を取得



### Examples

```ruby
require 'time'
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::CategoryApi.new

begin
  # 商品カテゴリー一覧を取得
  result = api_instance.get_product_categories
  p result
rescue ColorMeShop::ApiError => e
  puts "Error when calling CategoryApi->get_product_categories: #{e}"
end
```

#### Using the get_product_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductCategories200Response>, Integer, Hash)> get_product_categories_with_http_info

```ruby
begin
  # 商品カテゴリー一覧を取得
  data, status_code, headers = api_instance.get_product_categories_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductCategories200Response>
rescue ColorMeShop::ApiError => e
  puts "Error when calling CategoryApi->get_product_categories_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetProductCategories200Response**](GetProductCategories200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

