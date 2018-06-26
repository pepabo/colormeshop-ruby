#!/bin/bash

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
    -DmodelTests=false -DapiTests=false \
    -i https://api.shop-pro.jp/v1/swagger.json \
    -g ruby \
    -o /local/ \
    --additional-properties moduleName=ColorMeShop
