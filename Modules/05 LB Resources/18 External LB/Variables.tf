######################################################################
# This module creates an external load balancer
######################################################################

#Module variables

variable "LBCount" {
  type    = "string"
  default = "1"
}

variable "ExtLBName" {
  type = "string"
}

variable "AzureRegion" {
  type = "string"
}

variable "RGName" {
  type = "string"
}

variable "FEConfigName" {
  type = "string"
}

variable "PublicIPId" {
  type = "list"
}

variable "LBBackEndPoolName" {
  type = "string"
}

variable "LBProbeName" {
  type = "string"
}

variable "LBProbePort" {
  type = "string"
}

variable "FERuleName" {
  type = "string"
}

variable "FERuleProtocol" {
  type = "string"
}

variable "FERuleFEPort" {
  type = "string"
}

variable "FERuleBEPort" {
  type = "string"
}

variable "TagEnvironment" {
  type = "string"
}

variable "TagUsage" {
  type = "string"
}