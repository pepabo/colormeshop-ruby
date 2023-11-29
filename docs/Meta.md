# ColorMeShop::Meta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | トータルの件数 | [optional] |
| **limit** | **Integer** | 実効limit | [optional] |
| **offset** | **Integer** | 実効offset | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::Meta.new(
  total: 300,
  limit: 50,
  offset: 200
)
```

