# ColorMeShop::StatSale200ResponseSalesStat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **date** | **Integer** | 集計対象とする売上の作成日 | [optional] |
| **amount_today** | **Integer** | 合計売上金額 | [optional] |
| **count_today** | **Integer** | 合計件数 | [optional] |
| **amount_last_7days** | **Integer** | &#x60;date&#x60;を含む過去7日間の合計売上金額 | [optional] |
| **count_last_7days** | **Integer** | &#x60;date&#x60;を含む過去7日間の合計件数 | [optional] |
| **amount_this_month** | **Integer** | &#x60;date&#x60;が含まれる月の合計売上金額 | [optional] |
| **count_this_month** | **Integer** | &#x60;date&#x60;が含まれる月の合計件数 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::StatSale200ResponseSalesStat.new(
  account_id: PA01234567,
  date: 1363151732,
  amount_today: 15000,
  count_today: 5,
  amount_last_7days: 100000,
  count_last_7days: 10,
  amount_this_month: 220000,
  count_this_month: 44
)
```

