module "cloudfront" {
  source      = "../../modules/cloudfront"
  domain_name = var.domain_name
  origin_id   = var.origin_id

  tags = var.tags
  price_class = var.price_class
}