# ColorMeShop::GetProducts200ResponseProductsInnerVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | 商品ID | [optional] |
| **account_id** | **String** | ショップアカウントID | [optional] |
| **option1_value** | **String** | オプション1の値 | [optional] |
| **option2_value** | **String** | オプション2の値 | [optional] |
| **title** | **String** | オプション1とオプション2の名前を\&quot;　x　\&quot;で結合した表示名。オプションが1つしか設定されていない場合はそのオプションの名前に等しい | [optional] |
| **stocks** | **Integer** | 在庫数 | [optional] |
| **few_num** | **Integer** | 残りわずかとなる在庫数 | [optional] |
| **model_number** | **String** | 型番 | [optional] |
| **option_price** | **Integer** | 販売価格 | [optional] |
| **option_price_including_tax** | **Integer** | 消費税込販売価格 | [optional] |
| **option_price_tax** | **Integer** | 消費税額 | [optional] |
| **option_members_price** | **Integer** | 会員価格 | [optional] |
| **option_members_price_including_tax** | **Integer** | 消費税込会員価格 | [optional] |
| **option_members_price_tax** | **Integer** | 会員価格の消費税額 | [optional] |
| **make_date** | **Integer** | オプション作成日時 | [optional] |
| **update_date** | **Integer** | オプション更新日時 | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::GetProducts200ResponseProductsInnerVariantsInner.new(
  product_id: 1342332,
  account_id: PA01234567,
  option1_value: 赤,
  option2_value: S,
  title: 赤　x　S,
  stocks: 20,
  few_num: 5,
  model_number: T-RED-S-223,
  option_price: 1980,
  option_price_including_tax: 2178,
  option_price_tax: 198,
  option_members_price: 100,
  option_members_price_including_tax: 110,
  option_members_price_tax: 10,
  make_date: 1465784944,
  update_date: 1494496809
)
```

