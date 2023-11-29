# ColorMeShop::GetSales200ResponseSalesInnerSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 分割された受注内のID | [optional] |
| **name** | **String** | 区分名 | [optional] |
| **parent_sale_id** | **Integer** | 親受注のID。 該当の受注が分割されていない場合、自身の受注IDを返します。  | [optional] |
| **splitted** | **Boolean** | 該当の受注が分割されているか否か | [optional] |
| **product_total_price** | **Integer** | 分割された受注の商品の合計金額 | [optional] |
| **delivery_total_charge** | **Integer** | 分割された受注の配送料の合計 | [optional] |
| **total_price** | **Integer** | 分割された受注金額の総計 | [optional] |
| **noshi_total_charge** | **Integer** | 分割された受注の熨斗料金の合計 | [optional] |
| **card_total_charge** | **Integer** | 分割された受注のメッセージカード料金の合計 | [optional] |
| **wrapping_total_charge** | **Integer** | 分割された受注のラッピング料金の合計 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetSales200ResponseSalesInnerSegment.new(
  id: 1,
  name: null,
  parent_sale_id: 4434233,
  splitted: null,
  product_total_price: 2000,
  delivery_total_charge: 700,
  total_price: 2700,
  noshi_total_charge: 0,
  card_total_charge: 200,
  wrapping_total_charge: 0
)
```

