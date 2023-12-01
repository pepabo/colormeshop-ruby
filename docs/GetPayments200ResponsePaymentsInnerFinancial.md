# ColorMeShop::GetPayments200ResponsePaymentsInnerFinancial

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | 金融機関名 | [optional] |
| **branch_name** | **String** | 支店名 | [optional] |
| **kouza_type** | **String** | 講座種別  - &#x60;saving&#x60;: 普通 - &#x60;checking&#x60;: 当座  | [optional] |
| **kouza_number** | **String** | 口座番号 | [optional] |
| **kouza_name** | **String** | 口座名義 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetPayments200ResponsePaymentsInnerFinancial.new(
  name: サンプル銀行,
  branch_name: サンプル支店,
  kouza_type: saving,
  kouza_number: 1234567890,
  kouza_name: サンプル太郎
)
```

