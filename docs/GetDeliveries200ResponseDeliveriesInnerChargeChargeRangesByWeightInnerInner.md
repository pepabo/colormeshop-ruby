# ColorMeShop::GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByWeightInnerInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'color_me_shop'

ColorMeShop::GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByWeightInnerInner.openapi_one_of
# =>
# [
#   :'GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner',
#   :'Integer'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'color_me_shop'

ColorMeShop::GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByWeightInnerInner.build(data)
# => #<GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner:0x00007fdd4aab02a0>

ColorMeShop::GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByWeightInnerInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetDeliveries200ResponseDeliveriesInnerChargeChargeRangesByAreaInner`
- `Integer`
- `nil` (if no type matches)

