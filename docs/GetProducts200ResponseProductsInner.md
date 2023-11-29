# ColorMeShop::GetProducts200ResponseProductsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **id** | **Integer** | 商品ID | [optional] |
| **name** | **String** | 商品名 | [optional] |
| **stocks** | **Integer** | 在庫数 | [optional] |
| **stock_managed** | **Boolean** | 在庫管理するか否か | [optional] |
| **few_num** | **Integer** | 残りわずかとなる在庫数 | [optional] |
| **model_number** | **String** | 型番 | [optional] |
| **category** | [**GetProducts200ResponseProductsInnerCategory**](GetProducts200ResponseProductsInnerCategory.md) |  | [optional] |
| **group_ids** | **Array&lt;Integer&gt;** | 商品が属するグループのIDの配列 | [optional] |
| **display_state** | **String** | 掲載設定   - &#x60;showing&#x60;: 掲載状態  - &#x60;hidden&#x60;: 非掲載状態  - &#x60;showing_for_members&#x60;: 会員にのみ掲載  - &#x60;sale_for_members&#x60;: 掲載状態だが購入は会員のみ可能  | [optional] |
| **sales_price** | **Integer** | 販売価格 | [optional] |
| **sales_price_including_tax** | **Integer** | 消費税込販売価格 | [optional] |
| **sales_price_tax** | **Integer** | 消費税額 | [optional] |
| **price** | **Integer** | 定価 | [optional] |
| **members_price** | **Integer** | 会員価格 | [optional] |
| **members_price_including_tax** | **Integer** | 消費税込会員価格 | [optional] |
| **members_price_tax** | **Integer** | 会員価格の消費税額 | [optional] |
| **cost** | **Integer** | 原価 | [optional] |
| **delivery_charge** | **Integer** | 個別送料 | [optional] |
| **cool_charge** | **Integer** | クール便の追加料金 | [optional] |
| **unavailable_payment_ids** | **Array&lt;Integer&gt;** | 利用不可決済方法の配列 | [optional] |
| **unavailable_delivery_ids** | **Array&lt;Integer&gt;** | 利用不可配送方法の配列 | [optional] |
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
| **images** | [**Array&lt;GetProducts200ResponseProductsInnerImagesInner&gt;**](GetProducts200ResponseProductsInnerImagesInner.md) | メインの商品画像以外の3つの画像に関する、PC用とモバイル用の画像URL | [optional] |
| **options** | [**Array&lt;GetProducts200ResponseProductsInnerOptionsInner&gt;**](GetProducts200ResponseProductsInnerOptionsInner.md) | 選択できるオプションの一覧 | [optional] |
| **variants** | [**Array&lt;GetProducts200ResponseProductsInnerVariantsInner&gt;**](GetProducts200ResponseProductsInnerVariantsInner.md) | オプションのバリエーション一覧 | [optional] |
| **pickups** | [**Array&lt;GetProducts200ResponseProductsInnerPickupsInner&gt;**](GetProducts200ResponseProductsInnerPickupsInner.md) | おすすめ商品情報  ※おすすめ商品種別が「3: 新着商品」の情報は、「[新着商品管理](https://shop-pro.jp/manual/new_item_lst)」が「手動モード」の場合のみ取得できます。  | [optional] |
| **digital_conent** | **Boolean** | デジタルコンテンツ商品かどうか | [optional] |
| **regular_purchase** | **Boolean** | 定期購入商品かどうか | [optional] |
| **tax_reduced** | **Boolean** | 軽減税率対象なら &#x60;true&#x60; | [optional] |
| **without_shipping** | **Boolean** | 配送不要商品なら &#x60;true&#x60; | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetProducts200ResponseProductsInner.new(
  account_id: PA01234567,
  id: 1342332,
  name: Tシャツ,
  stocks: 20,
  stock_managed: false,
  few_num: 5,
  model_number: T-223,
  category: null,
  group_ids: [5456,62098],
  display_state: showing,
  sales_price: 1980,
  sales_price_including_tax: 2178,
  sales_price_tax: 198,
  price: null,
  members_price: 1680,
  members_price_including_tax: 1848,
  members_price_tax: 168,
  cost: null,
  delivery_charge: null,
  cool_charge: null,
  unavailable_payment_ids: [600001,600002],
  unavailable_delivery_ids: [400001,400002],
  min_num: null,
  max_num: null,
  sale_start_date: null,
  sale_end_date: null,
  unit: null,
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
  images: null,
  options: null,
  variants: null,
  pickups: null,
  digital_conent: false,
  regular_purchase: false,
  tax_reduced: false,
  without_shipping: false
)
```
