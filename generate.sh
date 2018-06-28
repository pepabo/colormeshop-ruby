#!/bin/bash

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
    -DmodelTests=false -DapiTests=false \
    -i https://api.shop-pro.jp/v1/swagger.json \
    -g ruby \
    -o /local/ \
    --additional-properties moduleName=ColorMeShop,gemAuthor="GMO Pepabo inc.",gemHomepage=https://shop-pro.jp,gemLicense=MIT,gemDescription="カラーミーショップAPIのRubyクライアントです。"
