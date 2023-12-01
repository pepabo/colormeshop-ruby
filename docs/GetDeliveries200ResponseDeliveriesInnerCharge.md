# ColorMeShop::GetDeliveries200ResponseDeliveriesInnerCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_id** | **Integer** | 配送方法ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **charge_fixed** | **Integer** | 配送料が固定の場合の金額 | [optional] |
| **charge_ranges_by_price** | **Array&lt;Array&lt;Integer&gt;&gt;** | 配送料が変わる決済金額の区分  &#x60;[3000, 100]&#x60;であれば、3000円以下の場合、手数料は100円であることを表す  | [optional] |
| **charge_max_price** | **Integer** | &#x60;charge_ranges_by_price&#x60;に設定されている区分以上の金額の場合の手数料 | [optional] |
| **charge_ranges_by_area** | [**Array&lt;GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner&gt;**](GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner.md) | 都道府県ごとの配送料 | [optional] |
| **charge_ranges_by_weight** | **Array&lt;Array&lt;GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByWeightInnerInner&gt;&gt;** | 配送料が変わる重量の区分  以下の値の場合、  - 1000g未満の商品を青森県に届ける際の配送料は300円 - 3000g未満の商品を青森県に届ける際の配送料は500円  であることを表す。  &#x60;&#x60;&#x60;json [   [     1000,     [       {         \&quot;pref_id\&quot;: 2,         \&quot;pref_name\&quot;: \&quot;青森県\&quot;,         \&quot;charge\&quot;: 300       }     ]   ],   [     3000,     [       {         \&quot;pref_id\&quot;: 2,         \&quot;pref_name\&quot;: \&quot;青森県\&quot;,         \&quot;charge\&quot;: 500       }     ]   ] ] &#x60;&#x60;&#x60;  | [optional] |
| **charge_ranges_max_weight** | [**Array&lt;GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner&gt;**](GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner.md) | &#x60;charge_ranges_by_weight&#x60;に設定されている区分以上の重量の場合の手数料 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetDeliveries200ResponseDeliveriesInnerCharge.new(
  delivery_id: 113922,
  account_id: PA01234567,
  charge_fixed: 300,
  charge_ranges_by_price: [[3000,100],[5000,200]],
  charge_max_price: 500,
  charge_ranges_by_area: null,
  charge_ranges_by_weight: null,
  charge_ranges_max_weight: null
)
```

