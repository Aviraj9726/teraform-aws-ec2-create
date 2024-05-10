/*variable "users" {
  type = list (string)
  //default = ["armstrong","nil","woziniak","spider"]
  }

variable "groups" {
  type = list(string)
  //default = ["developers","admins","Readers"]
}*/


variable "images" {
  type = map(string)

  default = {
    "amazon" = "ami-0f58b397bc5c1f2e8"
   /* "ubuntu" = "ami-062df10d14676e201"
    "linux"  = "ami-05c8ca4485f8b138a" */

  }
}
