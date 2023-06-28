# Copyright 2023 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Setup Terraform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference
provider "google" {
  region                      = "us-central1"
  project                     = "ENTER_YOUR_PROJECT_ID_HERE"
}

locals {
    vpc_name = "ENTER_VPC_NAME"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "example_vpc" {

  name                            = "ENTER_VPC_NAME"
  description                     = "ENTER_VPC_DESCRIPTION"
  mtu                             = 1460
  routing_mode                    = "REGIONAL"
  delete_default_routes_on_create = true
  auto_create_subnetworks         = false
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
## WE WILL UNCOMMENT THIS AFTER WE INITIALLY DEPLOY THE VPC TO SHOWCASE THE DECLARATIVE NATURE OF TERRAFORM
# resource "google_compute_subnetwork" "example_subnet" {

#   name          = "ENTER_SUBNET_NAME"
#   description   = "ENTER_SUBNET_DESCRIPTOIN"
#   ip_cidr_range = "10.0.0.0/16"
#   network       = google_compute_network.example_vpc.id
# }
