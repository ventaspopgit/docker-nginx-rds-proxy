@Library('gnt-jenkins') _

helmDeployPipeline {
  registryId = "610061689986"
  region = "us-east-2"
  namespace = "production"
  ecrRepo = "docker-nginx-rds-proxy"
  ecrCredentialsKey = "jenkins_aws_credentials"
  helmValuesBucket = "ventaspop-helm-values"
  helmChartsBucket = "ventaspop-helm-charts"
  helmChart = "rds-proxy"
  appName = "vp-rds-proxy"
  buildImage = true
  deployTimeout = 240
}
