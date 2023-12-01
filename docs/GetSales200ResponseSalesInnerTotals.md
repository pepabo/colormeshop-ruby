# ColorMeShop::GetSales200ResponseSalesInnerTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **normal_tax_amount** | **Integer** | 受注における通常税率(10%)の消費税 | [optional] |
| **reduced_tax_amount** | **Integer** | 受注における軽減税率(8%)の消費税 | [optional] |
| **discount_amount_for_normal_tax** | **Integer** | 通常税率(10%)の適用金額を対象としたの割引額 | [optional] |
| **discount_amount_for_reduced_tax** | **Integer** | 軽減税率(8%)の適用金額を対象としたの割引額 | [optional] |
| **total_price_with_normal_tax** | **Integer** | 通常税率(10%)の適用金額の税込合計額 | [optional] |
| **total_price_with_reduced_tax** | **Integer** | 軽減税率(8%)の適用金額の税込合計額 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetSales200ResponseSalesInnerTotals.new(
  normal_tax_amount: 90,
  reduced_tax_amount: 13,
  discount_amount_for_normal_tax: 171,
  discount_amount_for_reduced_tax: 29,
  total_price_with_normal_tax: 989,
  total_price_with_reduced_tax: 171
)
```

