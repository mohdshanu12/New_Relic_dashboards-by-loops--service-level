terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "2.22.1"
    }
  }
}

provider "newrelic" {
  # Configuration options
  account_id=var.account_id
  api_key="NRAK-S0D6RKUBGBH7CJ6TAT6ALATUCSJ"
}