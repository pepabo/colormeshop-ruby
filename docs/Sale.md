# ColorMeShop::Sale

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 売上ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **make_date** | **Integer** | 受注日時 | [optional] |
| **update_date** | **Integer** | 受注更新日時 | [optional] |
| **memo** | **String** | 備考 | [optional] |
| **payment_id** | **Integer** | 使用された決済方法ID | [optional] |
| **mobile** | **Boolean** | モバイルからの注文であるか否か | [optional] |
| **paid** | **Boolean** | 入金済みであるか否か | [optional] |
| **delivered** | **Boolean** | 発送済みである否か | [optional] |
| **canceled** | **Boolean** | キャンセル済みであるか否か | [optional] |
| **accepted_mail_state** | **String** | 受注メールの送信状態  - &#x60;not_yet&#x60;: 未送信 - &#x60;sent&#x60;: 送信済み - &#x60;pass&#x60;: 送信しない  | [optional] |
| **paid_mail_state** | **String** | 入金メールの送信状態  - &#x60;not_yet&#x60;: 未送信 - &#x60;sent&#x60;: 送信済み - &#x60;pass&#x60;: 送信しない  | [optional] |
| **delivered_mail_state** | **String** | 発送メールの送信状態  - &#x60;not_yet&#x60;: 未送信 - &#x60;sent&#x60;: 送信済み - &#x60;pass&#x60;: 送信しない  | [optional] |
| **accepted_mail_sent_date** | **Integer** | 受注メールの送信日時 | [optional] |
| **paid_mail_sent_date** | **Integer** | 入金メールの送信日時 | [optional] |
| **delivered_mail_sent_date** | **Integer** | 発送メールの送信日時 | [optional] |
| **point_state** | **String** | ショップポイント付与状態  - &#x60;assumed&#x60;: 仮付与 - &#x60;fixed&#x60;: 確定済み - &#x60;canceled&#x60;: キャンセル済み  | [optional] |
| **gmo_point_state** | **String** | GMOポイント付与状態  - &#x60;assumed&#x60;: 仮付与 - &#x60;fixed&#x60;: 確定済み - &#x60;canceled&#x60;: キャンセル済み  | [optional] |
| **yahoo_point_state** | **String** | Yahooポイント付与状態  - &#x60;assumed&#x60;: 仮付与 - &#x60;fixed&#x60;: 確定済み - &#x60;canceled&#x60;: キャンセル済み  | [optional] |
| **product_total_price** | **Integer** | 商品の合計金額 | [optional] |
| **delivery_total_charge** | **Integer** | 配送料 | [optional] |
| **fee** | **Integer** | 決済手数料 | [optional] |
| **tax** | **Integer** | 商品合計金額に対する消費税 | [optional] |
| **noshi_total_charge** | **Integer** | 熨斗料金 | [optional] |
| **card_total_charge** | **Integer** | メッセージカード料金 | [optional] |
| **wrapping_total_charge** | **Integer** | ラッピング料金 | [optional] |
| **point_discount** | **Integer** | ショップポイントによる割引額 | [optional] |
| **gmo_point_discount** | **Integer** | GMOポイントによる割引額 | [optional] |
| **other_discount** | **Integer** | その他、クーポン等による割引額 | [optional] |
| **other_discount_name** | **String** | その他割引の名称 | [optional] |
| **total_price** | **Integer** | 注文総額 | [optional] |
| **granted_points** | **Integer** | 付与されたショップポイント数 | [optional] |
| **use_points** | **Integer** | 使用されたショップポイント数 | [optional] |
| **granted_gmo_points** | **Integer** | 付与されたGMOポイント数 | [optional] |
| **use_gmo_points** | **Integer** | 使用されたGMOポイント数 | [optional] |
| **granted_yahoo_points** | **Integer** | 付与されたYahooポイント数 | [optional] |
| **use_yahoo_points** | **Integer** | 使用されたYahooポイント数 | [optional] |
| **external_order_id** | **String** | 外部システムで発行された決済識別番号  該当受注の決済が、楽天ペイ（オンライン決済）、LINE Pay、PayPal Commerce Platform、Amazon Pay、Amazon Pay V2、Square対面決済のいずれかである場合、その決済の決済識別番号を返します。 それ以外の決済に関しては空文字列を返します。  | [optional] |
| **customer** | [**GetSales200ResponseSalesInnerCustomer**](GetSales200ResponseSalesInnerCustomer.md) |  | [optional] |
| **details** | [**Array&lt;GetSales200ResponseSalesInnerDetailsInner&gt;**](GetSales200ResponseSalesInnerDetailsInner.md) |  | [optional] |
| **sale_deliveries** | [**Array&lt;GetSales200ResponseSalesInnerSaleDeliveriesInner&gt;**](GetSales200ResponseSalesInnerSaleDeliveriesInner.md) |  | [optional] |
| **segment** | [**GetSales200ResponseSalesInnerSegment**](GetSales200ResponseSalesInnerSegment.md) |  | [optional] |
| **totals** | [**GetSales200ResponseSalesInnerTotals**](GetSales200ResponseSalesInnerTotals.md) |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::Sale.new(
  id: 4434233,
  account_id: PAXXXXXXXX,
  make_date: 1465784934,
  update_date: 1494496895,
  memo: null,
  payment_id: 751,
  mobile: false,
  paid: true,
  delivered: true,
  canceled: false,
  accepted_mail_state: null,
  paid_mail_state: null,
  delivered_mail_state: null,
  accepted_mail_sent_date: 1363152822,
  paid_mail_sent_date: 1363153288,
  delivered_mail_sent_date: 1363154591,
  point_state: null,
  gmo_point_state: null,
  yahoo_point_state: null,
  product_total_price: 1000,
  delivery_total_charge: 350,
  fee: 300,
  tax: 80,
  noshi_total_charge: 0,
  card_total_charge: 200,
  wrapping_total_charge: 0,
  point_discount: 0,
  gmo_point_discount: 0,
  other_discount: 0,
  other_discount_name: ,
  total_price: 1930,
  granted_points: 100,
  use_points: 0,
  granted_gmo_points: 0,
  use_gmo_points: 0,
  granted_yahoo_points: 0,
  use_yahoo_points: 0,
  external_order_id: ABC0123456789,
  customer: null,
  details: null,
  sale_deliveries: null,
  segment: null,
  totals: null
)
```

