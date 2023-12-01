# ColorMeShop::GetPayments200ResponsePaymentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | 決済方法ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **name** | **String** | 決済名 | [optional] |
| **fee** | **Integer** | 決済手数料 | [optional] |
| **ip_code** | **String** | GMOイプシロン等との契約コード | [optional] |
| **memo** | **String** | 説明 | [optional] |
| **order_end_note** | **String** | 説明 | [optional] |
| **memo_mobile** | **String** | フィーチャーフォン向けショップ用の説明 | [optional] |
| **sort** | **Integer** | 表示順 | [optional] |
| **image_url** | **String** | 決済画像URL | [optional] |
| **type** | **Integer** | 決済タイプを表す数値。  |type|決済| |---|---| |0|代引き| |1|銀行振込| |2|郵便振替| |3|クレジット（ZEUS）| |4|クロネコ@ペイメント| |5|NP後払い| |6|クレジット（イプシロン）| |7|コンビニ決済（イプシロン）| |8|カラーミークレジット| |9|その他決済| |10|ウェブマネー| |11|イーバンクデビット| |12|ネット銀行（イプシロン）| |13|電子マネー（イプシロン）| |14|ATM・コンビニ・ネット銀行決済（ペイジェント）| |15|Do-Link決済（イプシロン）| |16|ペイジー（イプシロン）| |17|後払い.com| |18|ジャパンネット銀行（送料無料キャンペーン）| |19|クロネコwebコレクト| |20|PayPal（イプシロン）| |21|Yahoo!ウォレット（イプシロン）| |22|全額ポイント利用| |23|スマートフォンキャリア決済（イプシロン）| |24|GMO PG マルチペイメントクレジットカード| |25|住信SBIネット銀行（イプシロン）| |26|GMO後払い（イプシロン）| |27|GMO後払い（GMOペイメントサービス）| |28| - | |29|ATM（ペイジー）（ペイジェント）| |30|カード（ペイジェント）| |31|コンビニ番号方式（ペイジェント）| |32|インターネットバンキング（ペイジェント）| |33|PayPal（ペイパル）| |34|SMBC GMO PAYMENTクレジットカード| |35|Amazon Pay（イプシロン）| |36|楽天ペイ（オンライン決済）| |37|銀行振込（バーチャル口座）（イプシロン）| |38|Amazon Pay（アマゾンペイ）| |39|クレジットカード（SGシステム）| |40|LINE Pay（イプシロン）| |41|PayPal Commerce Platform（ペイパル）| |42|PayPay（イプシロン）| |43|Amazon Pay V2（アマゾンペイ）| |44|Amazon Pay V2（イプシロン）| |45|Square対面決済|  | [optional] |
| **display** | **Boolean** | 表示設定。&#x60;true&#x60;なら表示される | [optional] |
| **use_mobile** | **Boolean** | フィーチャーフォン向けショップでの表示設定 | [optional] |
| **make_date** | **Integer** | 決済作成日時 | [optional] |
| **update_date** | **Integer** | 決済更新日時 | [optional] |
| **cod** | [**GetPayments200ResponsePaymentsInnerCod**](GetPayments200ResponsePaymentsInnerCod.md) |  | [optional] |
| **card** | [**GetPayments200ResponsePaymentsInnerCard**](GetPayments200ResponsePaymentsInnerCard.md) |  | [optional] |
| **financial** | [**GetPayments200ResponsePaymentsInnerFinancial**](GetPayments200ResponsePaymentsInnerFinancial.md) |  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetPayments200ResponsePaymentsInner.new(
  id: 751,
  account_id: PA01234567,
  name: 銀行振り込み,
  fee: 300,
  ip_code: 12345678,
  memo: 購入後、振込口座情報をメールにて差し上げます。,
  order_end_note: null,
  memo_mobile: 購入後、振込口座情報をメールにて差し上げます。,
  sort: 1,
  image_url: null,
  type: 33,
  display: true,
  use_mobile: true,
  make_date: 1495007163,
  update_date: 1495007163,
  cod: null,
  card: null,
  financial: null
)
```

