# ColorMeShop::GetShop200ResponseShop

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ショップアカウントID | [optional] |
| **state** | **String** | アカウント状態 | [optional] |
| **domain_plan** | **String** | ドメインプラン | [optional] |
| **contract_plan** | **String** | 契約プラン | [optional] |
| **contract_start_date** | **Integer** | 契約開始日時 | [optional] |
| **contract_end_date** | **Integer** | 契約終了日時 | [optional] |
| **contract_term** | **Integer** | 契約期間 | [optional] |
| **last_login_date** | **Integer** | 最終ログイン日時 | [optional] |
| **setup_date** | **Integer** | 申し込み完了日時 | [optional] |
| **make_date** | **Integer** | アカウント作成日時 | [optional] |
| **url** | **String** | ショップURL | [optional] |
| **open_state** | **String** | 開店状態 | [optional] |
| **mobile_open_state** | **String** | モバイルショップ開店状態 | [optional] |
| **login_id** | **String** | ログインID | [optional] |
| **name1** | **String** | 登録者氏名（姓） | [optional] |
| **name2** | **String** | 登録者氏名（名） | [optional] |
| **name1_kana** | **String** | 登録者氏名カナ（姓） | [optional] |
| **name2_kana** | **String** | 登録者氏名カナ（名） | [optional] |
| **hojin** | **String** | 法人名 | [optional] |
| **hojin_kana** | **String** | 法人名カナ | [optional] |
| **user_mail** | **String** | 登録者メールアドレス | [optional] |
| **tel** | **String** | 登録者電話番号 | [optional] |
| **fax** | **String** | 登録者FAX番号 | [optional] |
| **postal** | **String** | 郵便番号 | [optional] |
| **pref_id** | **Integer** | 都道府県ID | [optional] |
| **pref_name** | **String** | 都道府県名 | [optional] |
| **address1** | **String** | 住所1 | [optional] |
| **address2** | **String** | 住所2 | [optional] |
| **title** | **String** | ショップ名 | [optional] |
| **title_short** | **String** | メールタイトル用ショップ名 | [optional] |
| **shop_mail_1** | **String** | 管理者メールアドレス | [optional] |
| **shop_mail_2** | **String** | 管理者携帯メールアドレス | [optional] |
| **tax_type** | **String** | 消費税の内税・外税設定 | [optional] |
| **tax** | **Integer** | 消費税率 | [optional] |
| **tax_rounding_method** | **String** | 消費税の切り捨て、切り上げ設定 | [optional] |
| **reduce_tax_rate** | **Integer** | 軽減税率 | [optional] |
| **shop_logo_url** | **String** | ショップロゴ画像のURL | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetShop200ResponseShop.new(
  id: PAXXXXXXXX,
  state: null,
  domain_plan: null,
  contract_plan: null,
  contract_start_date: 1546268400,
  contract_end_date: 1577718000,
  contract_term: 12,
  last_login_date: 1570750709,
  setup_date: 1511747460,
  make_date: 1511747460,
  url: https://example.shop-pro.jp,
  open_state: null,
  mobile_open_state: null,
  login_id: testshop,
  name1: 山田,
  name2: 太郎,
  name1_kana: ヤマダ,
  name2_kana: タロウ,
  hojin: ,
  hojin_kana: ,
  user_mail: tarou@example.com,
  tel: 11-1111-1111,
  fax: null,
  postal: 1508512,
  pref_id: 13,
  pref_name: 東京都,
  address1: 渋谷区桜丘町,
  address2: 26-1 セルリアンタワー,
  title: テスト商店,
  title_short: テスト商店,
  shop_mail_1: shop@example.com,
  shop_mail_2: shop-phone@example.com,
  tax_type: null,
  tax: 10,
  tax_rounding_method: null,
  reduce_tax_rate: 8,
  shop_logo_url: https://img00.shop-pro.jp/PA00000/001/PA00000001.png?cmsp_timestamp&#x3D;20201201214110
)
```

