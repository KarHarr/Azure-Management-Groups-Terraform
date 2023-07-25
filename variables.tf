/*Root Management Group

ChildA0  ChildB0
ChildA1  ChildA2 ChildA3
ChildB1

*/
# Root Management Group
variable "managementgroup" {
  type = string
  default = "mg-isg-root"
}
# Level 1 Down Child Management Group A0
variable "childgroupA0" { 
  type = string
  default = "mg-isg-platform"
}
# Level 1 Down Child Management Group B0
variable "childgroupB0" { 
  type = string
  default = "mg-isg-sd1"
}
# Level 2 Down Child Management Group of A0 (mg-isg-platform) A1 , A2 , A3
variable "childgroupA1" { 
  type = string
  default = "mg-isg-platform-conn"
}
# Level 2 Down Child Management Group of A0 (mg-isg-platform) A1 , A2 , A3
variable "childgroupA2" { 
  type = string
  default = "mg-isg-platform-iden"
}
# Level 2 Down Child Management Group of A0 (mg-isg-platform) A1 , A2 , A3
variable "childgroupA3" { 
  type = string
  default = "mg-isg-platform-mgmt"
}
# Level 2 Down Child Management Group of B0 (mg-isg-sd1) B1
variable "childgroupB1" { 
  type = string
  default = "mg-isg-sd1-prd"
}
