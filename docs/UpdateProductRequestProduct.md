# ColorMeShop::UpdateProductRequestProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 商品名 | [optional] |
| **price** | **Integer** | 定価 | [optional] |
| **category_id_big** | **Integer** | 大カテゴリーID | [optional] |
| **category_id_small** | **Integer** | 小カテゴリーID | [optional] |
| **cost** | **Integer** | 原価 | [optional] |
| **sales_price** | **Integer** | 販売価格 フリープランを利用しているショップの場合、最低価格は100円です。  | [optional] |
| **members_price** | **Integer** | 会員価格 フリープランを利用しているショップの場合、最低価格は100円です。  | [optional] |
| **model_number** | **String** | 型番 | [optional] |
| **expl** | **String** | 商品説明 | [optional] |
| **simple_expl** | **String** | 簡易説明 | [optional] |
| **smartphone_expl** | **String** | スマホ向けショップの商品説明 | [optional] |
| **display_state** | **String** | 掲載設定  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **stock_managed** | **Boolean** | 在庫管理する場合は &#x60;true&#x60; | [optional] |
| **stocks** | [**UpdateProductRequestProductStocks**](UpdateProductRequestProductStocks.md) |  | [optional] |
| **group_ids** | **Array&lt;Integer&gt;** | グループIDの配列 | [optional] |
| **variants** | [**Array&lt;UpdateProductRequestProductVariantsInner&gt;**](UpdateProductRequestProductVariantsInner.md) | 商品オプションによるバリエーションごとに更新 | [optional] |
| **tax_reduced** | **Boolean** | &#x60;true&#x60; の場合は軽減税率対象 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::UpdateProductRequestProduct.new(
  name: null,
  price: 1600,
  category_id_big: 1139,
  category_id_small: 993,
  cost: null,
  sales_price: 1600,
  members_price: 1500,
  model_number: T-223,
  expl: 綿100%のこだわりTシャツです。

肌触りや吸水性の良さにみなさま驚かれます。弊社の人気商品です。
,
  simple_expl: 素材にこだわってつくられた、弊社の人気商品です。,
  smartphone_expl: 素材にこだわってつくられた、弊社の人気商品です。,
  display_state: null,
  stock_managed: null,
  stocks: null,
  group_ids: [112342,4825592],
  variants: null,
  tax_reduced: false
)
```

