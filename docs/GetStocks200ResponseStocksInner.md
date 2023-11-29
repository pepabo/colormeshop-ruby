# ColorMeShop::GetStocks200ResponseStocksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **product_id** | **Integer** | 商品ID | [optional] |
| **name** | **String** | 商品名 | [optional] |
| **option1_value** | **String** | オプション1の値 | [optional] |
| **option2_value** | **String** | オプション2の値 | [optional] |
| **stocks** | **Integer** | 在庫数 | [optional] |
| **few_num** | **Integer** | 残りわずかとなる在庫数 | [optional] |
| **model_number** | **String** | 型番 | [optional] |
| **variant_model_number** | **String** | オプションの型番 | [optional] |
| **category** | [**GetProducts200ResponseProductsInnerCategory**](GetProducts200ResponseProductsInnerCategory.md) |  | [optional] |
| **display_state** | **String** | 掲載設定  - &#x60;showing&#x60;: 掲載状態 - &#x60;hidden&#x60;: 非掲載状態 - &#x60;showing_for_members&#x60;: 会員にのみ掲載 - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **sales_price** | **Integer** | 販売価格 | [optional] |
| **price** | **Integer** | 定価 | [optional] |
| **members_price** | **Integer** | 会員価格 | [optional] |
| **cost** | **Integer** | 原価 | [optional] |
| **delivery_charge** | **Integer** | 個別送料 | [optional] |
| **cool_charge** | **Integer** | クール便の追加料金 | [optional] |
| **min_num** | **Integer** | 最小購入数量 | [optional] |
| **max_num** | **Integer** | 最大購入数量 | [optional] |
| **sale_start_date** | **Integer** | 掲載開始時刻 | [optional] |
| **sale_end_date** | **Integer** | 掲載終了時刻 | [optional] |
| **unit** | **String** | 単位 | [optional] |
| **weight** | **Integer** | 重量(グラム単位) | [optional] |
| **soldout_display** | **Boolean** | 売り切れているときもショップに表示するか | [optional] |
| **sort** | **Integer** | 表示順 | [optional] |
| **simple_expl** | **String** | 簡易説明 | [optional] |
| **expl** | **String** | 商品説明 | [optional] |
| **mobile_expl** | **String** | フィーチャーフォン向けショップの商品説明 | [optional] |
| **smartphone_expl** | **String** | スマホ向けショップの商品説明 | [optional] |
| **make_date** | **Integer** | 商品作成日時 | [optional] |
| **update_date** | **Integer** | 商品更新日時 | [optional] |
| **memo** | **String** | 備考 | [optional] |
| **image_url** | **String** | メインの商品画像URL | [optional] |
| **mobile_image_url** | **String** | メインの商品画像のモバイル用URL | [optional] |
| **thumbnail_image_url** | **String** | メインの商品画像のサムネイルURL | [optional] |
| **images** | [**Array&lt;GetStocks200ResponseStocksInnerImagesInner&gt;**](GetStocks200ResponseStocksInnerImagesInner.md) | メインの商品画像以外の3つの画像に関する、PC用とモバイル用の画像URL | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetStocks200ResponseStocksInner.new(
  account_id: PA01234567,
  product_id: 1342332,
  name: Tシャツ,
  option1_value: 白,
  option2_value: Sサイズ,
  stocks: 20,
  few_num: 5,
  model_number: T-WHITE-S-223,
  variant_model_number: T-WHITE-S-223-WITH-NAME,
  category: null,
  display_state: showing,
  sales_price: 1980,
  price: null,
  members_price: 1680,
  cost: null,
  delivery_charge: null,
  cool_charge: null,
  min_num: null,
  max_num: null,
  sale_start_date: null,
  sale_end_date: null,
  unit: 個,
  weight: null,
  soldout_display: true,
  sort: 2,
  simple_expl: 素材にこだわってつくった、弊社の人気商品です。,
  expl: 綿100%のこだわりTシャツです。

肌触りや吸水性の良さにみなさま驚かれます。弊社の人気商品です。
,
  mobile_expl: null,
  smartphone_expl: null,
  make_date: 1465784934,
  update_date: 1494496895,
  memo: ,
  image_url: https://img07.shop-pro.jp/XXX/XX/product/123.jpg?20130319164314,
  mobile_image_url: https://img07.shop-pro.jp/XXX/XX/product/123_mb.jpg?20130319164314,
  thumbnail_image_url: https://img07.shop-pro.jp/XXX/XX/product/123_th.jpg?20130319164314,
  images: null
)
```

