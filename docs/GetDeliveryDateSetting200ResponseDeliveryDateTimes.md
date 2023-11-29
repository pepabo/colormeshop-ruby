# ColorMeShop::GetDeliveryDateSetting200ResponseDeliveryDateTimes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | 配送時間帯選択が有効であるか | [optional] |
| **periods** | **Array&lt;String&gt;** | 配送時間帯の選択肢の配列 | [optional] |
| **comment** | **String** | 配送時間帯に関する注意事項 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetDeliveryDateSetting200ResponseDeliveryDateTimes.new(
  enabled: null,
  periods: [&quot;午前中&quot;,&quot;12時〜14時&quot;,&quot;14時〜16時&quot;],
  comment: 年末年始やお盆の時期等は、ご希望の時間に届かない場合がございます。
ご了承下さい。

)
```

