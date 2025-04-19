variable "username" {
  type = string
}
variable "list" {
  type = list(string)

}
variable "age" {
  type = number
}

output "print" {
  value = "the name is ${var.username}, list is ${join(", ", var.list)}, and age is ${var.age}"
}