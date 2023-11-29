# ColorMeShop::PutProductPickup200ResponsePickup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pickup_type** | **Integer** | おすすめ商品情報種別 | [optional] |
| **product_id** | **Integer** | 商品ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **order_num** | **Integer** | 商品の表示順 | [optional] |
| **make_date** | **Integer** | 作成日時 | [optional] |
| **update_date** | **Integer** | 更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::PutProductPickup200ResponsePickup.new(
  pickup_type: 0,
  product_id: 1342332,
  account_id: PA00000000,
  order_num: 1,
  make_date: 1465784944,
  update_date: 1494496809
)
```

