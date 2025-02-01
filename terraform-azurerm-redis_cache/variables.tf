variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
    type = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created."
  type = string
}

variable "redis_cache_tier" {
    description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
    type = string
}

variable "redis_cache_name" {
    description = "The name of the Redis instance. Changing this forces a new resource to be created."
    type = string 
}

variable "public_enabled" {
  type = bool
  default = false
  description = "Whether or not public network access is allowed for this Redis Cache. true means this resource could be accessed by both public and private endpoint. false means only private endpoint access is allowed. Defaults to true."
}


variable "redis_cache_capacity" {
    description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4"
    type = string
}


variable "redis_cache_family" {
    description = "The SKU family/pricing group to use. Valid values are C (for Basic/Standard SKU family) and P (for Premium)"
    type = string
}


variable "redis_cache_enable_non_ssl_port" {
    description = "Enable the non-SSL port (6379) - disabled by default."
    type = string
    default = "false"
}

variable "redis_cache_minimum_tls_version" {
    description = "The minimum TLS version. Defaults to 1.0."
    type = string
    default = "1.2"
}

variable "redis_cache_maxmemory_reserved" {
    description = "The value in megabytes reserved for non-cache usage e.g. failover"
    type = string
    default = "10"
}

variable "redis_cache_maxmemory_delta" {
    description = "The max-memory delta for this Redis instance."
    type = string
    default = "2"
}

variable "redis_cache_maxmemory_policy" {
    description = "How Redis will select what to remove when maxmemory is reached."
    type = string
    default = "volatile-lru"
}


variable "redisCache_tags" {
type = map(any)
}
