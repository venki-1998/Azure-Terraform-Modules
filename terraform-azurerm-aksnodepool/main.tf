resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = var.cluster_id
  vm_size               = var.vm_size
  node_count            = var.agent_count
  vnet_subnet_id        = var.vnet_subnet_id
  os_disk_size_gb       = var.os_disk_size_gb
  mode                  = var.mode
  max_pods              = var.max_pods
  max_count             = var.max_count
  min_count             = var.min_count
  enable_auto_scaling   = var.enable_auto_scaling
  node_taints           = var.node_taints
  tags                  = {for k, v in var.aks_tags : lower(k) => lower(v)}#var.aks_tags
  lifecycle {
       ignore_changes = [node_count,] 
    }
}
