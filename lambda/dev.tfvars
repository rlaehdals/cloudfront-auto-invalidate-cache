region      = "ap-northeast-2"
lambda_role = "" # 이전에 만든 마스터 권한 iam arn
tags = {
  Terraform  = "true"
  Enviroment = "dev"
}
function_name = "" # 함수 이름
handler       = "index.js"
runtime       = "nodejs14.x"
filename      = "index.js"