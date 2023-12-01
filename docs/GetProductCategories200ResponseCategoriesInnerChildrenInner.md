# ColorMeShop::GetProductCategories200ResponseCategoriesInnerChildrenInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_big** | **Integer** | 大カテゴリーID | [optional] |
| **id_small** | **Integer** | 小カテゴリーID。大カテゴリーのことを表している場合は0 | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **name** | **String** | 商品カテゴリー名 | [optional] |
| **image_url** | **String** | 商品カテゴリー画像URL | [optional] |
| **expl** | **String** | 商品カテゴリー説明 | [optional] |
| **sort** | **Integer** | 表示順 | [optional] |
| **display_state** | **String** | 掲載設定  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;members_only&#x60;: 会員にのみ掲載  | [optional] |
| **make_date** | **Integer** | 商品カテゴリー作成日時 | [optional] |
| **update_date** | **Integer** | 商品カテゴリー更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetProductCategories200ResponseCategoriesInnerChildrenInner.new(
  id_big: 9923,
  id_small: 0,
  account_id: PA01234567,
  name: Tシャツ,
  image_url: null,
  expl: null,
  sort: 2,
  display_state: showing,
  make_date: 1465784944,
  update_date: 1494496809
)
```

