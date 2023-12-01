# ColorMeShop::PutProductPickupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pickup_type** | **Integer** | おすすめ商品情報種別（0:おすすめ商品, 1:売れ筋商品, 3:新着商品, 4:イチオシ商品） | [optional] |
| **order_num** | **Integer** | 商品の表示順 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::PutProductPickupRequest.new(
  pickup_type: null,
  order_num: null
)
```

