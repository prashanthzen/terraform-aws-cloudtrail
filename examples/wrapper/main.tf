module "cloudtrail" {
  source = "https://github.com/appzen-oss/terraform-aws-cloudtrail.git"

  name                          = "dev-account-cloudtrail"
  enable_log_file_validation    = true
  include_global_service_events = true
  insight_selector              = [ {insight_type = "ApiCallRateInsight"} ]
  is_multi_region_trail         = false
  enable_logging                = true
  s3_bucket_name                = "s3-log-storage"
  s3_key_prefix                 = "cloudtrail"
}
