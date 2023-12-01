# ColorMeShop::GetPayments200ResponsePaymentsInnerCod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changeable** | **Boolean** | 手数料が決済金額によって変わるか否か | [optional] |
| **fees** | **Array&lt;Array&lt;Integer&gt;&gt;** | 手数料が変わる決済金額の区分  &#x60;[3000, 100]&#x60;であれば、3000円以下の場合、手数料は100円であることを表す  | [optional] |
| **fee_max** | **Integer** | &#x60;fees&#x60;に設定されている区分以上の金額の場合の手数料 | [optional] |
| **changeable_by_total** | **Boolean** | 手数料計算に用いる決済総額を用いるか否か  - &#x60;true&#x60;: 決済総額で計算 - &#x60;false&#x60;: 商品合計額で計算  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetPayments200ResponsePaymentsInnerCod.new(
  changeable: true,
  fees: [[3000,100],[5000,200]],
  fee_max: 500,
  changeable_by_total: true
)
```

