# ColorMeShop::CancelSaleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restock** | **Boolean** | &#x60;true&#x60;の場合、在庫管理している商品について、購入された分の在庫数を充当する | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::CancelSaleRequest.new(
  restock: null
)
```

