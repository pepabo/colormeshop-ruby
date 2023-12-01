# ColorMeShop::SaleDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 受注明細ID | [optional] |
| **sale_id** | **Integer** | 売上ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **product_id** | **Integer** | 商品ID | [optional] |
| **sale_delivery_id** | **Integer** | お届け先ID | [optional] |
| **option1_value** | **String** | オプション1の値(最新の商品情報) | [optional] |
| **option2_value** | **String** | オプション2の値(最新の商品情報) | [optional] |
| **option1_index** | **Integer** | オプション1の値の選択肢中の位置 | [optional] |
| **option2_index** | **Integer** | オプション2の値の選択肢中の位置 | [optional] |
| **product_model_number** | **String** | 型番 | [optional] |
| **product_name** | **String** | 商品名(最新の商品情報) | [optional] |
| **pristine_product_full_name** | **String** | 商品名とオプション名(注文時の商品情報) | [optional] |
| **product_cost** | **Integer** | 商品原価 | [optional] |
| **product_image_url** | **String** | 商品画像URL | [optional] |
| **product_thumbnail_image_url** | **String** | サムネイル用商品画像URL | [optional] |
| **product_mobile_image_url** | **String** | モバイル用商品画像URL | [optional] |
| **price** | **Integer** | 商品販売価格 | [optional] |
| **price_with_tax** | **Integer** | 税込み商品価格 | [optional] |
| **product_num** | **Integer** | 商品点数 | [optional] |
| **unit** | **String** | 単位 | [optional] |
| **subtotal_price** | **Integer** | 商品小計。販売価格と点数の積 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::SaleDetail.new(
  id: 44344599,
  sale_id: 4434233,
  account_id: PA01234567,
  product_id: 1342332,
  sale_delivery_id: 1173289,
  option1_value: 赤,
  option2_value: Sサイズ,
  option1_index: 0,
  option2_index: 0,
  product_model_number: T-RED-S-223,
  product_name: Tシャツ,
  pristine_product_full_name: Tシャツ（カラー：赤、サイズ：Sサイズ）,
  product_cost: 1000,
  product_image_url: https://img07.shop-pro.jp/XXX/XX/product/123.jpg?20130319164314,
  product_thumbnail_image_url: https://img07.shop-pro.jp/XXX/XX/product/123_th.jpg?20130319164314,
  product_mobile_image_url: https://img07.shop-pro.jp/XXX/XX/product/123_mb.jpg?20130319164314,
  price: 1680,
  price_with_tax: 1814,
  product_num: 1,
  unit: 枚,
  subtotal_price: 1814
)
```

