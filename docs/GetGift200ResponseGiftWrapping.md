# ColorMeShop::GetGift200ResponseGiftWrapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **types** | [**Array&lt;GetGift200ResponseGiftWrappingTypesInner&gt;**](GetGift200ResponseGiftWrappingTypesInner.md) |  | [optional] |
| **comment** | **String** |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetGift200ResponseGiftWrapping.new(
  enabled: null,
  types: null,
  comment: ギフトに対応していない商品を合わせてご注文の場合、以下の備考欄に、ラッピング対応商品のご指示をお願いいたします。
)
```

