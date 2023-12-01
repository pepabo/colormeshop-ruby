# ColorMeShop::GetDeliveryDateSetting200ResponseDeliveryDate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **days** | [**GetDeliveryDateSetting200ResponseDeliveryDateDays**](GetDeliveryDateSetting200ResponseDeliveryDateDays.md) |  | [optional] |
| **times** | [**GetDeliveryDateSetting200ResponseDeliveryDateTimes**](GetDeliveryDateSetting200ResponseDeliveryDateTimes.md) |  | [optional] |
| **make_date** | **Integer** | 配送日時設定作成日時 | [optional] |
| **update_date** | **Integer** | 配送日時設定更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetDeliveryDateSetting200ResponseDeliveryDate.new(
  account_id: PA01234567,
  days: null,
  times: null,
  make_date: 1465784944,
  update_date: 1494496809
)
```

