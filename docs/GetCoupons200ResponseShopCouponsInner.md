# ColorMeShop::GetCoupons200ResponseShopCouponsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Coupon ID | [optional] |
| **name** | **String** | クーポン名 | [optional] |
| **code** | **String** | クーポンコード | [optional] |
| **coupon_type** | **String** | クーポン種別  - &#x60;amount&#x60;: 定額 - &#x60;rate&#x60;: 定率 - &#x60;delivery_charge&#x60;: 送料無料  | [optional] |
| **discount_amount** | **Integer** | 割引金額または割引率 | [optional] |
| **minimum_amount** | **Integer** | 利用最低額 | [optional] |
| **starts_at** | **Integer** | 利用開始日 | [optional] |
| **ends_at** | **Integer** | 利用終了日 | [optional] |
| **total_usage_limit** | **Integer** | 総利用可能数 | [optional] |
| **usage_limit** | **String** | ユーザ毎の利用可能数  - &#x60;indisposable&#x60;: 無制限 - &#x60;disposable&#x60;: 一度のみ  | [optional] |
| **group_limit_type** | **String** | 商品グループによる制限  - &#x60;none&#x60;: 無制限 - &#x60;including&#x60;: 含む - &#x60;excluding&#x60;: 除外  | [optional] |
| **status** | **String** | クーポンの利用可否  - &#x60;unavailable&#x60;: 利用不可 - &#x60;available&#x60;: 利用可能  | [optional] |
| **created_at** | **Integer** | 作成日時 | [optional] |
| **updated_at** | **Integer** | 更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetCoupons200ResponseShopCouponsInner.new(
  id: 187239,
  name: 100円割引,
  code: descount100,
  coupon_type: null,
  discount_amount: 50,
  minimum_amount: 1000,
  starts_at: 1465784934,
  ends_at: 1465784934,
  total_usage_limit: 10,
  usage_limit: null,
  group_limit_type: null,
  status: null,
  created_at: 1465784934,
  updated_at: 1465784934
)
```

