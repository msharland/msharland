
#################################################################################################
#                              < Create EC2 Jenkins and ECR Repo >                              #
#################################################################################################

module "ec2-jenkins" {
  source                = "./modules/ec2-jenkins"
  ami                   = "ami-0d3183af565a0a95d" # AWS Linux 2
  instance_count        = 1
  instance_type         = "t2.micro"
  prefix                = "demo-"
  availability_zone     = "us-east-2c"
  #ec2_security_group_id = module.security_groups.ec2_security_group_id
}

module "ecr" {
  source                 = "./modules/ecr"
  prefix                 = "demo-"
}

module "ecs-cluster" {
  source                 = "./modules/ecs-cluster"
}

#module "iam-ec2-jenkins-to-ecr" {
#  source                 = "./modules/iam-ec2-jenkins-to-ecr"
#}

#################################################################################################
#                             < / Create EC2 Jenkins and ECR Repo >                             #
#################################################################################################
