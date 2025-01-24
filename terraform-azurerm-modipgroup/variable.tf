variable "ip_group_name" {
    type = string
}

variable "rg_name" {
    type = string
}

variable "rg_location" {
    type = string
}

variable "ip_group_cidr_range" {
    type = list(string)
}

variable "ipgrp_tags" {
    type = list(string)
}
