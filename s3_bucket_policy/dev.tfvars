region          = "ap-northeast-2"
bucket_id       = "" # bucket 아이디
cloudfront_id   = "cloudfront.amazonaws.com"
condition_value = ["arn:aws:cloudfront::{}:distribution/{}"] # {}자리에 account id와 cloudfront id
resources = [""] # {bucekt-arn}/* 형태로 채워주면 됩니다.