# output "client_key" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config.0.client_key
# }

# output "client_certificate" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config.0.client_certificate
# }

# output "cluster_ca_certificate" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config.0.cluster_ca_certificate
# }

# output "cluster_username" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config.0.username
# }

# output "cluster_password" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config.0.password
# }

# output "kube_config" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config_raw
#     sensitive = true
# }

# output "host" {
#     value = azurerm_kubernetes_cluster.Aks_testing[*].kube_config.0.host
# }

output "cluster_id" {
    value = azurerm_kubernetes_cluster.Aks_testing[*].id
}

output "cluster_name" {
    value = azurerm_kubernetes_cluster.Aks_testing[*].name
}
