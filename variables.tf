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
    "amazon" = "ami-01216e7612243e0ef"
   /* "ubuntu" = "ami-062df10d14676e201"
    "linux"  = "ami-05c8ca4485f8b138a" */

  }
}
