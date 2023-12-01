# ColorMeShop::GetGift200ResponseGiftNoshi

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **text_enabled** | **Boolean** |  | [optional] |
| **text_charge** | **Integer** |  | [optional] |
| **types** | [**Array&lt;GetGift200ResponseGiftNoshiTypesInner&gt;**](GetGift200ResponseGiftNoshiTypesInner.md) |  | [optional] |
| **comment** | **String** |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetGift200ResponseGiftNoshi.new(
  enabled: null,
  text_enabled: null,
  text_charge: null,
  types: null,
  comment: 熨斗のお名前の印字をご希望の場合、以下の「備考欄」にてご指示ください。ご指示がない場合は、お名前の印字無しにてお届けいたします。
)
```

