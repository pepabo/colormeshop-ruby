# ColorMeShop::SendSalesMailRequestMail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | 送信するメールの種類  - &#x60;accepted&#x60;: 受注メールを送信する - &#x60;paid&#x60;: 入金確認メールを送信する - &#x60;delivered&#x60;: 商品発送メールを送信する  | [optional] |

## Example

```ruby
require 'color_me_shop'

instance = ColorMeShop::SendSalesMailRequestMail.new(
  type: null
)
```

