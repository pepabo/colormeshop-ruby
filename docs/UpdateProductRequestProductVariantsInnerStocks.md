# ColorMeShop::UpdateProductRequestProductVariantsInnerStocks

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'color_me_shop'

ColorMeShop::UpdateProductRequestProductVariantsInnerStocks.openapi_one_of
# =>
# [
#   :'Integer',
#   :'UpdateProductRequestProductStocksOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'color_me_shop'

ColorMeShop::UpdateProductRequestProductVariantsInnerStocks.build(data)
# => #<Integer:0x00007fdd4aab02a0>

ColorMeShop::UpdateProductRequestProductVariantsInnerStocks.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Integer`
- `UpdateProductRequestProductStocksOneOf`
- `nil` (if no type matches)

