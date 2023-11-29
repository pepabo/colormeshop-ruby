# ColorMeShop::ProductGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 商品グループID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **name** | **String** | 商品グループ名 | [optional] |
| **image_url** | **String** | 商品グループ画像URL | [optional] |
| **expl** | **String** | 商品グループ説明 | [optional] |
| **sort** | **Integer** | 表示順 | [optional] |
| **display_state** | **String** | 掲載設定  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **parent_group_id** | **Integer** | 親の商品グループID | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::ProductGroup.new(
  id: 9923,
  account_id: PA01234567,
  name: 夏物,
  image_url: null,
  expl: 暑い夏を涼しく乗り切る、当店イチオシの夏物衣類,
  sort: 2,
  display_state: showing,
  parent_group_id: 9923
)
```

