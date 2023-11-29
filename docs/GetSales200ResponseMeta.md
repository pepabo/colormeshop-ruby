# ColorMeShop::GetSales200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | トータルの件数 | [optional] |
| **limit** | **Integer** | 実効limit | [optional] |
| **offset** | **Integer** | 実効offset | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetSales200ResponseMeta.new(
  total: 300,
  limit: 50,
  offset: 200
)
```

