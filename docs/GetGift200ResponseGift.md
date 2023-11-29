# ColorMeShop::GetGift200ResponseGift

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **noshi** | [**GetGift200ResponseGiftNoshi**](GetGift200ResponseGiftNoshi.md) |  | [optional] |
| **card** | [**GetGift200ResponseGiftCard**](GetGift200ResponseGiftCard.md) |  | [optional] |
| **wrapping** | [**GetGift200ResponseGiftWrapping**](GetGift200ResponseGiftWrapping.md) |  | [optional] |
| **make_date** | **Integer** |  | [optional] |
| **update_date** | **Integer** |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetGift200ResponseGift.new(
  account_id: PA01234567,
  enabled: null,
  noshi: null,
  card: null,
  wrapping: null,
  make_date: 1494496895,
  update_date: 1499827564
)
```

