# ColorMeShop::PostCustomersRequestCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 購入者氏名 | [optional] |
| **mail** | **String** | メールアドレス | [optional] |
| **pref_id** | **Integer** | 都道府県id | [optional] |
| **address1** | **String** | 住所 | [optional] |
| **address2** | **String** | 住所（建物名など） | [optional] |
| **tel** | **String** | 電話番号 | [optional] |
| **postal** | **String** | 郵便番号 | [optional] |
| **add_member** | **Boolean** | 会員登録をするか否か | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::PostCustomersRequestCustomer.new(
  name: null,
  mail: null,
  pref_id: null,
  address1: null,
  address2: null,
  tel: null,
  postal: null,
  add_member: null
)
```

