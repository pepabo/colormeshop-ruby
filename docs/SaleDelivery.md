# ColorMeShop::SaleDelivery

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | 配送ID | [optional] 
**account_id** | **String** | ショップアカウントID | [optional] 
**sale_id** | **Integer** | 売上ID | [optional] 
**delivery_id** | **Integer** | 使用された配送方法ID | [optional] 
**detail_ids** | **Array&lt;Integer&gt;** | この配送に含まれる受注明細IDの配列 | [optional] 
**name** | **String** | 宛名 | [optional] 
**furigana** | **String** | 宛名のフリガナ | [optional] 
**postal** | **String** | 郵便番号 | [optional] 
**pref_id** | **Integer** | 都道府県の通し番号。北海道が1、沖縄が47 | [optional] 
**pref_name** | **String** | 都道府県名 | [optional] 
**address1** | **String** | 住所1 | [optional] 
**address2** | **String** | 住所2 | [optional] 
**tel** | **String** | 電話番号 | [optional] 
**preferred_date** | **String** | 配送希望日 | [optional] 
**preferred_period** | **String** | 配送希望時間帯 | [optional] 
**slip_number** | **String** | 配送伝票番号 | [optional] 
**noshi_text** | **String** | 熨斗の文言 | [optional] 
**noshi_charge** | **Integer** | 熨斗の料金 | [optional] 
**card_name** | **String** | メッセージカードの表示名 | [optional] 
**card_text** | **String** | メッセージカードのテキスト | [optional] 
**card_charge** | **Integer** | メッセージカードの料金 | [optional] 
**wrapping_name** | **String** | ラッピングの表示名 | [optional] 
**wrapping_charge** | **Integer** | ラッピングの料金 | [optional] 
**delivery_charge** | **Integer** | 配送料 | [optional] 
**total_charge** | **Integer** | 配送料・手数料の小計 | [optional] 
**memo** | **String** | 備考 | [optional] 
**delivered** | **BOOLEAN** | 発送済みであるか否か | [optional] 


