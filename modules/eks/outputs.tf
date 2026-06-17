output "cluster_name" {
  value = aws_eks_cluster.example.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.example.endpoint
}

output "cluster_arn" {
  value = aws_eks_cluster.example.arn
}