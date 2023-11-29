# ColorMeShop::PostProductsRequestProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 商品名 | [optional] |
| **category_id_big** | **Integer** | 大カテゴリーID | [optional] |
| **sales_price** | **Integer** | 販売価格 フリープランを利用しているショップの場合、最低価格は100円です。  | [optional] |
| **display_state** | **String** | 掲載設定  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **tax_reduced** | **Boolean** | &#x60;true&#x60; の場合は軽減税率対象 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::PostProductsRequestProduct.new(
  name: null,
  category_id_big: 1139,
  sales_price: 1600,
  display_state: null,
  tax_reduced: false
)
```

