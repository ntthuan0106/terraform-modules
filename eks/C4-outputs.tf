
output "eks_cluster_name" {
  value = aws_eks_cluster.cluster.name
}
output "eks_endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "eks_certificate_authority" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}
output "eks_token" {
  value = data.aws_eks_cluster_auth.eks.token
}
# output "eks_token" {
#   value = data.aws_eks_cluster.eks.token
# }