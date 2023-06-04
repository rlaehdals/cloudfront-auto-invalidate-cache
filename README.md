# cloudfront-auto-invalidate-cache

cloudfront cache를 자동으로 invalidate 실행시켜주는 terraform code 레포입니다.

# 사용 순서
각각의 모듈 순서대로 조작해야 하고, 진행함에 따라 dev.tfvars에 해당하는 내용을 모두 채워주셔야 합니다.

```
terraform init
terraform plan -var-file=dev.tfvars
terraofrm apply -var-file=dev.tfvars
```

1. s3
2. cloudfront
3. s3_bucket_policy
4. lambda
5. s3_notification

이렇게 진행하면 완성됩니다. 
