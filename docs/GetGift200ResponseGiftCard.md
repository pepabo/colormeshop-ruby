# ColorMeShop::GetGift200ResponseGiftCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **text_enabled** | **Boolean** |  | [optional] |
| **types** | [**Array&lt;GetGift200ResponseGiftCardTypesInner&gt;**](GetGift200ResponseGiftCardTypesInner.md) |  | [optional] |
| **comment** | **String** |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetGift200ResponseGiftCard.new(
  enabled: null,
  text_enabled: null,
  types: null,
  comment: 「ハートマーク」など、携帯の機種依存文字や絵文字は文字化けしてしまう可能性がございます。予めご了承いただけますようお願い申し上げます。
)
```

