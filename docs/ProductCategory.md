# ColorMeShop::ProductCategory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id_big** | **Integer** | 大カテゴリーID | [optional] 
**id_small** | **Integer** | 小カテゴリーID。大カテゴリーのことを表している場合は0 | [optional] 
**account_id** | **String** | ショップアカウントID | [optional] 
**name** | **String** | 商品カテゴリー名 | [optional] 
**image_url** | **String** | 商品カテゴリー画像URL | [optional] 
**expl** | **String** | 商品カテゴリー説明 | [optional] 
**sort** | **Integer** | 表示順 | [optional] 
**display_state** | **String** | 掲載設定 | [optional] 
**make_date** | **Integer** | 商品カテゴリー作成日時 | [optional] 
**update_date** | **Integer** | 商品カテゴリー更新日時 | [optional] 
**children** | [**Array&lt;ProductCategory&gt;**](ProductCategory.md) | 子カテゴリー情報。子カテゴリーのことを表している場合はこのキーはレスポンスに含まれない | [optional] 


