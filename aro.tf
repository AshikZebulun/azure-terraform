resource "azurerm_redhat_openshift_cluster" "aro-cluster-1" {
  name                = "aro-cluster-1"
  location            = azurerm_resource_group.aro-rg-1.location
  resource_group_name = azurerm_resource_group.aro-rg-1.name

  cluster_profile {
    domain = "aro-cluster-1.com"
    version = "4.14.16"
  }

  network_profile {
    pod_cidr = "10.128.0.0/14"
    service_cidr = "172.30.0.0/16"
  }

  api_server_profile {
    visibility = "Private"
  }

  ingress_profile {
    visibility = "Private"
  }
  
  main_profile {
    vm_size = "Standard_D8s_v3"
    subnet_id = azurerm_subnet.aro-master-subnet-1.id
  }

  worker_profile {
    vm_size = "Standard_D4s_v3"
    disk_size_gb = 128
    node_count = 3
    subnet_id = azurerm_subnet.aro-worker-subnet-1.id
  }

  service_principal {
    client_id = azuread_application.aro-app-1.client_id
    client_secret = azuread_service_principal_password.aro-spn-pass-1.value
  }
}

output "console_url" {
  value = azurerm_redhat_openshift_cluster.aro-cluster-1.console_url
}