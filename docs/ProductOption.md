# ColorMeShop::ProductOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | オプションID | [optional] |
| **product_id** | **Integer** | 商品ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **name** | **String** | オプション名 | [optional] |
| **values** | **Array&lt;String&gt;** | オプション値の配列 | [optional] |
| **make_date** | **Integer** | オプション作成日時 | [optional] |
| **update_date** | **Integer** | オプション更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::ProductOption.new(
  id: 539903,
  product_id: 1342332,
  account_id: PA01234567,
  name: 色,
  values: [&quot;赤&quot;,&quot;白&quot;],
  make_date: 1465784944,
  update_date: 1494496809
)
```

