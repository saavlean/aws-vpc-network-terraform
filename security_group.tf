resource "aws_security_group" "default_group" {
  name        = "${var.environment}-defaul-sg"
  description = "Default security group for EKS VPC network"
  vpc_id      = aws_vpc.eks_vpc.id

  tags = {
    "name" = "${var.environment}-default-sg"
  }
}
