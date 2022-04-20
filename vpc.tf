module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = "p-dkbal56bi8rcwwtdnmlv55yc6qhe"
    network_name = "derek-vnet"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name   = "gaurav-subnet"
            subnet_ip     = "10.100.10.0/24"
            subnet_region = var.region
        }
    ]
}
