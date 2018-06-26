# ColorMeShop::ScriptApi

All URIs are relative to *https://api.shop-pro.jp/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_script_tag**](ScriptApi.md#create_script_tag) | **POST** /v1/script_tags.json | スクリプトタグの作成
[**delete_script_tag**](ScriptApi.md#delete_script_tag) | **DELETE** /v1/script_tags/{scriptTagId}.json | スクリプトタグの削除
[**get_script_tag**](ScriptApi.md#get_script_tag) | **GET** /v1/script_tags/{scriptTagId}.json | スクリプトタグの取得
[**get_script_tags**](ScriptApi.md#get_script_tags) | **GET** /v1/script_tags.json | スクリプトタグの取得
[**update_script_tag**](ScriptApi.md#update_script_tag) | **PUT** /v1/script_tags/{scriptTagId}.json | スクリプトタグの更新


# **create_script_tag**
> Object create_script_tag(unknown_base_type)

スクリプトタグの作成

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ScriptApi.new
unknown_base_type = ColorMeShop::UNKNOWN_BASE_TYPE.new # Object | 作成するスクリプトタグの情報

begin
  #スクリプトタグの作成
  result = api_instance.create_script_tag(unknown_base_type)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ScriptApi->create_script_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unknown_base_type** | [**Object**](UNKNOWN_BASE_TYPE.md)| 作成するスクリプトタグの情報 | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_script_tag**
> delete_script_tag(script_tag_id)

スクリプトタグの削除

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ScriptApi.new
script_tag_id = 56 # Integer | 

begin
  #スクリプトタグの削除
  api_instance.delete_script_tag(script_tag_id)
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ScriptApi->delete_script_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **script_tag_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_script_tag**
> Object get_script_tag(script_tag_id)

スクリプトタグの取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ScriptApi.new
script_tag_id = 56 # Integer | 

begin
  #スクリプトタグの取得
  result = api_instance.get_script_tag(script_tag_id)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ScriptApi->get_script_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **script_tag_id** | **Integer**|  | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_script_tags**
> Object get_script_tags

スクリプトタグの取得

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ScriptApi.new

begin
  #スクリプトタグの取得
  result = api_instance.get_script_tags
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ScriptApi->get_script_tags: #{e}"
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



# **update_script_tag**
> Object update_script_tag(script_tag_id, unknown_base_type)

スクリプトタグの更新

### Example
```ruby
# load the gem
require 'color_me_shop'
# setup authorization
ColorMeShop.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ColorMeShop::ScriptApi.new
script_tag_id = 56 # Integer | 
unknown_base_type = ColorMeShop::UNKNOWN_BASE_TYPE.new # Object | 作成するスクリプトタグの情報

begin
  #スクリプトタグの更新
  result = api_instance.update_script_tag(script_tag_id, unknown_base_type)
  p result
rescue ColorMeShop::ApiError => e
  puts "Exception when calling ScriptApi->update_script_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **script_tag_id** | **Integer**|  | 
 **unknown_base_type** | [**Object**](UNKNOWN_BASE_TYPE.md)| 作成するスクリプトタグの情報 | 

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



