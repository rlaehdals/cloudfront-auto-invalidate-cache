variable "region" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "function_name" {
  type = string
}

variable "handler" {
  type = string
}

variable "runtime" {
  type = string
}

variable "lambda_role" {
  type = string
}

variable "filename" {
  type = string
}