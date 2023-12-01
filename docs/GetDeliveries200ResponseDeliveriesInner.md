# ColorMeShop::GetDeliveries200ResponseDeliveriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 配送方法ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **name** | **String** | 配送方法名 | [optional] |
| **method_type** | **String** | 配送方法区分  - &#x60;other&#x60;: そのほか - &#x60;yamato&#x60;: クロネコヤマト - &#x60;yamato_pickup&#x60;: ヤマト自宅外受け取り - &#x60;sagawa&#x60;: 佐川急便 - &#x60;jp&#x60;: 日本郵便  | [optional] |
| **image_url** | **String** | 配送方法画像URL | [optional] |
| **charge_free_type** | **String** | 配送料が無料になる基準  - &#x60;not_free&#x60;: 有料 - &#x60;free&#x60;: 無料 - &#x60;free_to_limit&#x60;: 注文金額が一定以上の場合は無料  | [optional] |
| **charge_free_limit** | **Integer** | 配送料が無料になる金額。&#x60;charge_free_type&#x60;が&#x60;free_to_limit&#x60;の場合のみ意味を持つ | [optional] |
| **charge_type** | **String** | 配送料の計算方法  - &#x60;fixed&#x60;: 固定額 - &#x60;by_price&#x60;: 注文金額によって決定 - &#x60;by_area&#x60;: 配送先都道府県によって決定 - &#x60;by_weight&#x60;: 商品重量によって決定  | [optional] |
| **charge** | [**GetDeliveries200ResponseDeliveriesInnerCharge**](GetDeliveries200ResponseDeliveriesInnerCharge.md) |  | [optional] |
| **tax_included** | **Boolean** | 送料が税込み料金であるか否か | [optional] |
| **slip_number_use** | **Boolean** | 配送伝票番号設定を使用するか否か | [optional] |
| **slip_number_url** | **String** | 配送伝票番号確認URL | [optional] |
| **memo** | **String** | 配送方法の説明 | [optional] |
| **memo2** | **String** | フィーチャーフォン向けショップ用の配送方法説明 | [optional] |
| **sort** | **Integer** | 表示順 | [optional] |
| **display_state** | **String** | 表示状態 | [optional] |
| **preferred_date_use** | **Boolean** | 配送希望日を指定可能か | [optional] |
| **preferred_period_use** | **Boolean** | 配送時間帯を指定可能か | [optional] |
| **unavailable_payment_ids** | **Array&lt;Integer&gt;** | 利用不可決済方法の配列 | [optional] |
| **make_date** | **Integer** | 配送方法作成日時 | [optional] |
| **update_date** | **Integer** | 配送方法更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetDeliveries200ResponseDeliveriesInner.new(
  id: 113922,
  account_id: PA01234567,
  name: メール便,
  method_type: null,
  image_url: null,
  charge_free_type: null,
  charge_free_limit: null,
  charge_type: null,
  charge: null,
  tax_included: false,
  slip_number_use: true,
  slip_number_url: http://example.co.jp/okurijo-search,
  memo: 申し訳ございませんが、商品の配送は日本国内のみとなります。何卒ご了承下さい。

Please note that we do not ship abroad.
,
  memo2: ■ 申し訳ございませんが、商品の配送は日本国内のみとなります。何卒ご了承下さい。

■ Please note that we do not ship abroad.
,
  sort: 1,
  display_state: showing,
  preferred_date_use: true,
  preferred_period_use: false,
  unavailable_payment_ids: [600001,600002],
  make_date: 1465784944,
  update_date: 1494496809
)
```

