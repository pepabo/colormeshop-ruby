# ColorMeShop::GetSales200ResponseSalesInnerCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 顧客ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **name** | **String** | 顧客の名前 | [optional] |
| **furigana** | **String** | 名前のフリガナ | [optional] |
| **hojin** | **String** | 法人名 | [optional] |
| **busho** | **String** | 部署名 | [optional] |
| **sex** | **String** | 性別 | [optional] |
| **birthday** | **String** | 誕生日 | [optional] |
| **postal** | **String** | 郵便番号 | [optional] |
| **pref_id** | **Integer** | 都道府県の通し番号。北海道が1、沖縄が47 | [optional] |
| **pref_name** | **String** | 都道府県名 | [optional] |
| **address1** | **String** | 住所1 | [optional] |
| **address2** | **String** | 住所2 | [optional] |
| **mail** | **String** | メールアドレス | [optional] |
| **tel** | **String** | 電話番号 | [optional] |
| **fax** | **String** | FAX番号 | [optional] |
| **tel_mobile** | **String** | 携帯電話番号 | [optional] |
| **other** | **String** | 備考 | [optional] |
| **points** | **Integer** | 保有ポイント数 | [optional] |
| **member** | **Boolean** | 会員登録済みであるか否か | [optional] |
| **sales_count** | **Integer** | これまでの購入回数 | [optional] |
| **receive_mail_magazine** | **Boolean** | メルマガ受信可否 | [optional] |
| **answer_free_form1** | **String** | フリー項目1の入力内容 | [optional] |
| **answer_free_form2** | **String** | フリー項目2の入力内容 | [optional] |
| **answer_free_form3** | **String** | フリー項目3の入力内容 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetSales200ResponseSalesInnerCustomer.new(
  id: 998273,
  account_id: PA01234567,
  name: カラーミー太郎,
  furigana: カラーミータロウ,
  hojin: GMOペパボ株式会社,
  busho: EC事業部,
  sex: male,
  birthday: 1999-01-01,
  postal: 1578512,
  pref_id: 13,
  pref_name: 東京都,
  address1: 渋谷区桜丘町26-1,
  address2: セルリアンタワー,
  mail: example@pepabo.com,
  tel: null,
  fax: null,
  tel_mobile: 080-1234-1234,
  other: null,
  points: 216,
  member: true,
  sales_count: 3,
  receive_mail_magazine: true,
  answer_free_form1: これはフリー項目1の入力内容です,
  answer_free_form2: これはフリー項目2の入力内容です,
  answer_free_form3: これはフリー項目3の入力内容です
)
```

