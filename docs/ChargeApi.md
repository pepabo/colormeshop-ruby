# ColorMeShop::ChargeApi

All URIs are relative to *https://api.shop-pro.jp*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_application_charge**](ChargeApi.md#activate_application_charge) | **POST** /v1/application_charges/{applicationChargeId}/activate.json | スポット課金データをアクティベートする
[**activate_recurring_application_charge**](ChargeApi.md#activate_recurring_application_charge) | **POST** /v1/recurring_application_charges/{recurringApplicationChargeId}/activate.json | 月額課金データをアクティベートする
[**cancel_recurring_application_charge**](ChargeApi.md#cancel_recurring_application_charge) | **POST** /v1/recurring_application_charges/{recurringApplicationChargeId}/cancel.json | 月額課金データをキャンセルする
[**get_application_charge**](ChargeApi.md#get_application_charge) | **GET** /v1/application_charges/{applicationChargeId}.json | スポット課金データの取得
[**get_application_charges**](ChargeApi.md#get_application_charges) | **GET** /v1/application_charges.json | スポット課金一覧の取得
[**get_recurring_application_charge**](ChargeApi.md#get_recurring_application_charge) | **GET** /v1/recurring_application_charges/{recurringApplicationChargeId}.json | 月額課金データの取得
[**get_recurring_application_charges**](ChargeApi.md#get_recurring_application_charges) | **GET** /v1/recurring_application_charges.json | 月額課金一覧の取得
[**post_application_charge**](ChargeApi.md#post_application_charge) | **POST** /v1/application_charges.json | スポット課金データの作成
[**post_recurring_application_charge**](ChargeApi.md#post_recurring_application_charge) | **POST** /v1/recurring_application_charges.json | 月額課金データの作成


# **activate_application_charge**
> Object activate_application_charge(application_charge_id)

スポット課金データをアクティベートする

スポット課金データをアクティベートするAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
application_charge_id = 56 # Integer | 

begin
  #スポット課金データをアクティベートする
  result = api_instance.activate_application_charge(application_charge_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->activate_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_charge_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **activate_recurring_application_charge**
> Object activate_recurring_application_charge(recurring_application_charge_id)

月額課金データをアクティベートする

月額課金データをアクティベートするAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
recurring_application_charge_id = 56 # Integer | 

begin
  #月額課金データをアクティベートする
  result = api_instance.activate_recurring_application_charge(recurring_application_charge_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->activate_recurring_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recurring_application_charge_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_recurring_application_charge**
> Object cancel_recurring_application_charge(recurring_application_charge_id)

月額課金データをキャンセルする

月額課金データをキャンセルするAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
recurring_application_charge_id = 56 # Integer | 

begin
  #月額課金データをキャンセルする
  result = api_instance.cancel_recurring_application_charge(recurring_application_charge_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->cancel_recurring_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recurring_application_charge_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_application_charge**
> Object get_application_charge(application_charge_id)

スポット課金データの取得

スポット課金データを取得するAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
application_charge_id = 56 # Integer | 

begin
  #スポット課金データの取得
  result = api_instance.get_application_charge(application_charge_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->get_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_charge_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_application_charges**
> Object get_application_charges(opts)

スポット課金一覧の取得

スポット課金一覧を取得するAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
opts = {
  limit: 56, # Integer | レスポンスの件数を指定します。指定がない場合は10件。最大50件。
  since_id: 56 # Integer | 指定した課金ID以降のデータを返します。
}

begin
  #スポット課金一覧の取得
  result = api_instance.get_application_charges(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->get_application_charges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| レスポンスの件数を指定します。指定がない場合は10件。最大50件。 | [optional] 
 **since_id** | **Integer**| 指定した課金ID以降のデータを返します。 | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_recurring_application_charge**
> Object get_recurring_application_charge(recurring_application_charge_id)

月額課金データの取得

月額課金データを取得するAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
recurring_application_charge_id = 56 # Integer | 

begin
  #月額課金データの取得
  result = api_instance.get_recurring_application_charge(recurring_application_charge_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->get_recurring_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recurring_application_charge_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_recurring_application_charges**
> Object get_recurring_application_charges(opts)

月額課金一覧の取得

月額課金一覧を取得するAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
opts = {
  limit: 56, # Integer | レスポンスの件数を指定します。指定がない場合は10件。最大50件。
  since_id: 56 # Integer | 指定した課金ID以降のデータを返します。
}

begin
  #月額課金一覧の取得
  result = api_instance.get_recurring_application_charges(opts)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->get_recurring_application_charges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| レスポンスの件数を指定します。指定がない場合は10件。最大50件。 | [optional] 
 **since_id** | **Integer**| 指定した課金ID以降のデータを返します。 | [optional] 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_application_charge**
> Object post_application_charge(unknown_base_type)

スポット課金データの作成

スポット課金データを作成するAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
unknown_base_type = ColorMeShop::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 

begin
  #スポット課金データの作成
  result = api_instance.post_application_charge(unknown_base_type)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->post_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_recurring_application_charge**
> Object post_recurring_application_charge(unknown_base_type)

月額課金データの作成

月額課金データを作成するAPIです。

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ChargeApi.new
unknown_base_type = ColorMeShop::UNKNOWN_BASE_TYPE.new # UNKNOWN_BASE_TYPE | 

begin
  #月額課金データの作成
  result = api_instance.post_recurring_application_charge(unknown_base_type)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ChargeApi->post_recurring_application_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unknown_base_type** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



