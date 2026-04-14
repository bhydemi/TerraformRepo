variable "bucket_name" {
    description = "Name of s3 bucket"
    type = string
}

variable "enable_versioning" {
    description = " Enable Version"
    type = bool
}


variable "tags" {
    description = "Tags to apply"
    type = map(string)
}