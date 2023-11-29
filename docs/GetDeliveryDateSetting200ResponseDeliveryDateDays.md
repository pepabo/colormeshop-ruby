# ColorMeShop::GetDeliveryDateSetting200ResponseDeliveryDateDays

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | 配送希望日選択が有効であるか | [optional] |
| **default** | **Integer** | デフォルトで選択される希望日。注文日からn日後の数値 | [optional] |
| **min** | **Integer** | 選択できる最も早い配送日。注文日からn日後の数値 | [optional] |
| **max** | **Integer** | 選択できる最も遅い配送日。注文日からn日後の数値 | [optional] |
| **comment** | **String** | 配送希望日に関する注意事項 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetDeliveryDateSetting200ResponseDeliveryDateDays.new(
  enabled: null,
  default: 2,
  min: 2,
  max: 7,
  comment: 繁忙期は1〜2営業日遅れる場合がございます。
)
```

