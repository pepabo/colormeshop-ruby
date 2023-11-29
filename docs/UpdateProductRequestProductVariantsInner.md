# ColorMeShop::UpdateProductRequestProductVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option1_value** | **String** | オプション1の値 | [optional] |
| **option2_value** | **String** | オプション2の値 | [optional] |
| **stocks** | [**UpdateProductRequestProductVariantsInnerStocks**](UpdateProductRequestProductVariantsInnerStocks.md) |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::UpdateProductRequestProductVariantsInner.new(
  option1_value: 赤,
  option2_value: S,
  stocks: null
)
```

