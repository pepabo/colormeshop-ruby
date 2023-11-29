# ColorMeShop::DeliveryChargeByPrefecture

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pref_id** | **Integer** | 都道府県の通し番号。北海道が1、沖縄が47、海外が48 | [optional] |
| **pref_name** | **String** | 都道府県名 | [optional] |
| **charge** | **Integer** | 配送料 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::DeliveryChargeByPrefecture.new(
  pref_id: 13,
  pref_name: 東京都,
  charge: 300
)
```

