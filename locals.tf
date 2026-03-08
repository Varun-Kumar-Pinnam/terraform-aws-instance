locals {
   common_tags={
  environment = var.environment
  project = var.project 
  terraform = true
  }
    ec2_final_tags=merge(
        local.common_tags,
        var.tags
    )

}