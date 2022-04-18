module "sit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "namnt11@tcbs.com.vn"
    AccountName               = "SIT-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "namnt11@tcbs.com.vn"
    SSOUserFirstName          = "SIT"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "SIT"
}
