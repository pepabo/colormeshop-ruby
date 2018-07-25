# ColorMeShop::ApplicationChargeCreateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | 課金ID | [optional] 
**account_id** | **String** | アカウントID | [optional] 
**oauth_application_id** | **Integer** | アプリケーションID | [optional] 
**application_charge_plan_id** | **Integer** | 課金プランID | [optional] 
**return_url** | **String** | ショップオーナー様が課金の許可/拒否を行った後に遷移するURL | [optional] 
**confirmation_url** | **String** | ショップオーナー様が課金のOK/NGを行う確認画面ページのURLです。 URLには課金IDとsignatureを含んでいます。  | [optional] 
**status** | **String** | ステータス | [optional] 
**make_date** | **Integer** | 作成日時 | [optional] 
**update_date** | **Integer** | 更新日時 | [optional] 


