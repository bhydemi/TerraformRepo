variable "environment" {
    description = "either dev staging prod"
    type =  string
    default = "dev"

    validation  {
        condition = contains(["dev", "staging", "production"], var.environment)
        error_message = "Environment must be dev, staging or production"
    }
}