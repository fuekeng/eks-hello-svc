resource "helm_release" "myapp" {
  name       = "hello-svc"
  repository = "https://fuekeng.github.io/springboot-helm-chart/" # Using the published Helm repo
  chart      = "springboot"
  namespace  = "app1"  # Change as per your setup
  version    = "0.1.5"    # Use the correct version from index.yaml!
  create_namespace = true
  force_update = true
  values = [
    templatefile("${path.module}/${var.environment}/values_hello.yaml", {
      ENVIRONMENT = var.environment
    })
  ]



  set = [
    {
      name  = "image.tag"
      value = var.container_version  # Pass dynamic value here
    }
  ]
}
