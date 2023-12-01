# ColorMeShop::GetProducts200ResponseProductsInnerPickupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pickup_type** | **Integer** | おすすめ商品情報種別 | [optional] |
| **order_num** | **Integer** | 商品の表示順 | [optional] |
| **make_date** | **Integer** | 作成日時 | [optional] |
| **update_date** | **Integer** | 更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetProducts200ResponseProductsInnerPickupsInner.new(
  pickup_type: 0,
  order_num: 0,
  make_date: 1465784944,
  update_date: 1494496809
)
```

