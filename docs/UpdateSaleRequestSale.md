# ColorMeShop::UpdateSaleRequestSale

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paid** | **Boolean** | 入金済みであるか否か | [optional] |
| **point_state** | **String** | ショップポイントの付与状態。&#x60;fixed&#x60;へ変更すると、購入者にショップポイントが付与される。&#x60;fixed&#x60;から別のステータスには変更できない また、受注が分割されている場合、子受注のショップポイント付与状態は変更することができません。  - &#x60;assumed&#x60;: 仮付与 - &#x60;fixed&#x60;: 確定済み - &#x60;cenceled&#x60;: キャンセル済み  | [optional] |
| **sale_deliveries** | [**Array&lt;GetSales200ResponseSalesInnerSaleDeliveriesInner&gt;**](GetSales200ResponseSalesInnerSaleDeliveriesInner.md) |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::UpdateSaleRequestSale.new(
  paid: null,
  point_state: null,
  sale_deliveries: null
)
```

