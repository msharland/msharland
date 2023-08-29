

#################################################################################################
#                               Configure Jenkins Instance                                      #
#################################################################################################

resource "aws_instance" "jenkins_instance" {

  ami           = var.ami 
  count         = var.instance_count  # Specify the number of instances you want
  instance_type = var.instance_type  # Change to your desired instance type
  availability_zone = var.availability_zone
  associate_public_ip_address = true
  key_name         = "demo-" #  This key-pair is manually in AWS Console for security purposes

  tags = {
    Name = "${var.prefix}-jenkins-${count.index}"
  }

  user_data = file("${path.module}/jenkins-install.sh")

  iam_instance_profile = aws_iam_instance_profile.Jenkins.name  # Attach the IAM role here
  
  depends_on = [aws_iam_role.Jenkins-EC2-to-ECR] 

}

resource "aws_iam_role" "Jenkins-EC2-to-ECR" {
  name = "Jenkins-EC2-to-ECR"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"  # Replace with the service that will assume this role
        }
      }
    ]
  })
}

resource "aws_iam_instance_profile" "Jenkins" {
  name = "Jenkins-EC2-to-ECR"
  role = aws_iam_role.Jenkins-EC2-to-ECR.name
}

# Attach policies to the role if needed
 resource "aws_iam_policy_attachment" "EC2-to-ECR" {
   name       = "Jenkins-EC2-to-ECR"
   policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
   roles      = [aws_iam_role.Jenkins-EC2-to-ECR.name]
 }

#################################################################################################
#                                End of File! Thank you!                                        #
#################################################################################################
