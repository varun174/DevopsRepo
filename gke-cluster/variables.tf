variable "authorized_networks" {
  default = [
    { cidr_block = "", display_name = " Office-01" },
    { cidr_block = "", display_name = " Office-NL" },
    { cidr_block = "", display_name = " Office-02" },
    { cidr_block = "", display_name = " Office-03" }
  ]
}

variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in (required)"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster (required)"
}

variable "region" {
  type        = string
  description = "The region to host the cluster in (optional if zonal cluster / required if regional)"
}

variable "network" {
  type        = string
  description = "The VPC network to host the cluster in (required)"
}

variable "subnet" {
  type        = string
  description = "The subnetwork to host the cluster in (required)"
}

variable "maintenance_start_time" {
  type        = string
  description = "Time window specified for daily or recurring maintenance operations in RFC3339 format"
}

variable "maintenance_end_time" {
  type        = string
  description = "Time window specified for recurring maintenance operations in RFC3339 format"
}

variable "maintenance_recurrence" {
  type        = string
  description = "Frequency of the recurring maintenance window in RFC5545 format."
}
