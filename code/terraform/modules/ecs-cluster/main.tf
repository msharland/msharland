
#################################################################################################
#                                          < ECS Cluster >                                      #
#################################################################################################

# https://dev.to/thnery/create-an-aws-ecs-cluster-using-terraform-g80

resource "aws_ecs_cluster" "cluster" {
  name = "my-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  capacity_providers = [aws_ecs_capacity_provider.cp.name]

  default_capacity_provider_strategy {
    capacity_provider = aws_ecs_capacity_provider.cp.name
    weight            = 1
    base              = 1
  }
}

resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.lc.id
  min_size             = 1
  max_size             = 3
  desired_capacity     = 2
  #vpc_zone_identifier  = [aws_subnet.subnet.id]
}

resource "aws_ecs_capacity_provider" "cp" {
  name = "my-capacity-provider"

  auto_scaling_group_provider {
    auto_scaling_group_arn = aws_autoscaling_group.asg.arn
    managed_termination_protection = "ENABLED"

    managed_scaling {
      status          = "ENABLED"
      target_capacity = 80
      minimum_scaling_step_size = 1
      maximum_scaling_step_size = 100
    }
  }
}

#resource "aws_cloudwatch_log_group" "log-group" {
#  name = "${var.app_name}-${var.app_environment}-logs"

#  tags = {
#    Application = var.app_name
#    Environment = var.app_environment
#  }
#}

#resource "aws_ecs_task_definition" "ecs-fargate" {
#  family                   = "demo-"
#  network_mode            = "awsvpc"
#  requires_compatibilities = ["FARGATE"]
#  execution_role_arn      = aws_iam_role.ecs_execution_role.arn

#  container_definitions = jsonencode([])
#}

#resource "aws_iam_role" "ecs_execution_role" {
#  name = "ecs-execution-role"

#  assume_role_policy = jsonencode({
#    Version = "2012-10-17",
#    Statement = [
#      {
#        Action = "sts:AssumeRole",
#        Effect = "Allow",
#        Principal = {
#          Service = "ecs-tasks.amazonaws.com"
#        }
#      }
#    ]
#  })
#}

#################################################################################################
#                                        < / ECS Cluster >                                      #
#################################################################################################
