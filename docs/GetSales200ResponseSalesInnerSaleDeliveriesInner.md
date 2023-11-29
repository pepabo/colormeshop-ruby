# ColorMeShop::GetSales200ResponseSalesInnerSaleDeliveriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | お届け先ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **sale_id** | **Integer** | 売上ID | [optional] |
| **delivery_id** | **Integer** | 使用された配送方法ID | [optional][readonly] |
| **detail_ids** | **Array&lt;Integer&gt;** | この配送に含まれる受注明細IDの配列 | [optional] |
| **name** | **String** | 宛名 | [optional] |
| **furigana** | **String** | 宛名のフリガナ | [optional] |
| **postal** | **String** | 郵便番号 | [optional] |
| **pref_id** | **Integer** | 都道府県の通し番号。北海道が1、沖縄が47 | [optional] |
| **pref_name** | **String** | 都道府県名 | [optional] |
| **address1** | **String** | 住所1 | [optional] |
| **address2** | **String** | 住所2 | [optional] |
| **tel** | **String** | 電話番号 | [optional] |
| **preferred_date** | **String** | 配送希望日 | [optional] |
| **preferred_period** | **String** | 配送希望時間帯 | [optional] |
| **slip_number** | **String** | 配送伝票番号 | [optional] |
| **noshi_text** | **String** | 熨斗の文言 | [optional] |
| **noshi_charge** | **Integer** | 熨斗の料金 | [optional] |
| **card_name** | **String** | メッセージカードの表示名 | [optional] |
| **card_text** | **String** | メッセージカードのテキスト | [optional] |
| **card_charge** | **Integer** | メッセージカードの料金 | [optional] |
| **wrapping_name** | **String** | ラッピングの表示名 | [optional] |
| **wrapping_charge** | **Integer** | ラッピングの料金 | [optional] |
| **delivery_charge** | **Integer** | 配送料 | [optional] |
| **total_charge** | **Integer** | 配送料・手数料の小計 | [optional] |
| **tracking_url** | **String** | 配送状況確認URL | [optional] |
| **memo** | **String** | 備考 | [optional] |
| **delivered** | **Boolean** | 発送済みであるか否か | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetSales200ResponseSalesInnerSaleDeliveriesInner.new(
  id: 1173289,
  account_id: PA01234567,
  sale_id: 4434233,
  delivery_id: 113922,
  detail_ids: [44344599],
  name: ペパボ太郎,
  furigana: ペパボタロウ,
  postal: 1508512,
  pref_id: 13,
  pref_name: 東京都,
  address1: 渋谷区桜丘町26-1,
  address2: セルリアンタワー,
  tel: null,
  preferred_date: 2017-05-21,
  preferred_period: 午前中,
  slip_number: 1234-5678-9012,
  noshi_text: 寿,
  noshi_charge: 100,
  card_name: バースデーカード,
  card_text: おめでとう,
  card_charge: 150,
  wrapping_name: ギフト用ラッピング（ピンク）,
  wrapping_charge: 200,
  delivery_charge: 350,
  total_charge: 800,
  tracking_url: https://example.com/delivery_state?id&#x3D;111-222-33333,
  memo: null,
  delivered: false
)
```

