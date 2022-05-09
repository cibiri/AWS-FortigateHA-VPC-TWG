# Default Region

variable "region" {
  default = "us-east-1"
}

# Availability zone 1 for the region

variable "az1" {
  default = "us-east-1a"
}

# Availability zone 2 for the region

variable "az2" {
  default = "us-east-1b"
}

# IAM role that has proper permission for HA

variable "iam" {
  default = "AWS-EC2-Fortigate"
}

# VPC CIDR Settings 

variable "vpc-cidr" {
  default = "10.0.0.0/20"
}

# VPC CIDR Subnet Settings (AZ1)

variable "publiccidraz1" {
  default = "10.0.1.0/24"
}

variable "privatecidraz1" {
  default = "10.0.3.0/24"
}

variable "hasynccidraz1" {
  default = "10.0.5.0/24"
}

variable "hamgmtcidraz1" {
  default = "10.0.7.0/24"
}

# VPC CIDR Subnet Settings (AZ1)

variable "publiccidraz2" {
  default = "10.0.2.0/24"
}

variable "privatecidraz2" {
  default = "10.0.4.0/24"
}

variable "hasynccidraz2" {
  default = "10.0.6.0/24"
}

variable "hamgmtcidraz2" {
  default = "10.0.8.0/24"
}

# VPC CIDR Transit Gateway Subnets

variable "tgw-az1" {
  default = "10.0.9.0/24"
}

variable "tgw-az2" {
  default = "10.0.11.0/24"
}

// License Type to create FortiGate-VM

variable "license_type" {
  default = "payg"
}

// AMIs are for FGTVM-AWS(PAYG) - 7.2.0
variable "fgtvmami" {
  type = map
  default = {
    us-east-1      = "ami-035a7ca1d22b2ac60"
    us-east-2      = "ami-0c89751940e00028a"
    us-west-1      = "ami-027023effe0d0cbcb"
    us-west-2      = "ami-0e18da7f57b1455de"
    af-south-1     = "ami-0020b49aee42aac43"
    ap-east-1      = "ami-040df30827808387e"
    ap-southeast-3 = "ami-08b193fa0e26053bc"
    ap-south-1     = "ami-03ce0208e1bf0a4c2"
    ap-northeast-3 = "ami-0dba0e863219fbd2c"
    ap-northeast-2 = "ami-01966ce84e55ce9af"
    ap-southeast-1 = "ami-0abcebf6fa84ec1c9"
    ap-southeast-2 = "ami-0d4a09cac89f2cb2b"
    ap-northeast-1 = "ami-08e9a008d439bd92d"
    ca-central-1   = "ami-0f575e9fe174cc613"
    eu-central-1   = "ami-09b319a3f356c62a3"
    eu-west-1      = "ami-0295b18e7c5c68440"
    eu-west-2      = "ami-0e0cf6ee5949311d3"
    eu-south-1     = "ami-00c0fd80460334680"
    eu-west-3      = "ami-0a2f70eeaccb4f756"
    eu-north-1     = "ami-0980a6c5462eb20c7"
    me-south-1     = "ami-0e971c7104d9ab577"
    sa-east-1      = "ami-0f857d7ef57d996d7"
  }
}


// AMIs are for FGTVM AWS(BYOL) - 7.2.0
variable "fgtvmbyolami" {
  type = map
  default = {
    us-east-1      = "ami-08a9244de2d3b3cfa"
    us-east-2      = "ami-0b07d15df1781b3d8"
    us-west-1      = "ami-02dc2d7ea094493d6"
    us-west-2      = "ami-0c0dcf7b73b82c9b1"
    af-south-1     = "ami-0d74ee5597e3ef661"
    ap-east-1      = "ami-0a0c5c6454847d23a"
    ap-southeast-3 = "ami-028cc9519f272bcb6"
    ap-south-1     = "ami-085942a3a94223f47"
    ap-northeast-3 = "ami-09b93acca6bd3596c"
    ap-northeast-2 = "ami-0cf302c5443f1ebb0"
    ap-southeast-1 = "ami-0a766a36e6c0b330e"
    ap-southeast-2 = "ami-0b658e3ca1fc97423"
    ap-northeast-1 = "ami-0daa2ffa06df3702f"
    ca-central-1   = "ami-07f812bb597b8c317"
    eu-central-1   = "ami-0d049e761ea8dbffc"
    eu-west-1      = "ami-0caa0716272a43357"
    eu-west-2      = "ami-09dc1af4df14fd469"
    eu-south-1     = "ami-0767c696d9d0d5f9f"
    eu-west-3      = "ami-0820c09066de0e77e"
    eu-north-1     = "ami-06828be5bef414e7d"
    me-south-1     = "ami-054c0c3be39202670"
    sa-east-1      = "ami-07fe117d69adc5f80"
  }
}

variable "size" {
  default = "c5.xlarge"
}

//  Existing SSH Key on the AWS 
variable "keyname" {
  default = "FortigateVM"
}

// HTTPS access port
variable "adminsport" {
  default = "8443"
}

// Active Port 1
variable "activeport1" {
  default = "10.0.1.10"
}

variable "activeport1mask" {
  default = "255.255.255.0"
}

// Active Port 2
variable "activeport2" {
  default = "10.0.3.10"
}

variable "activeport2mask" {
  default = "255.255.255.0"
}

// Active Port 3
variable "activeport3" {
  default = "10.0.5.10"
}

variable "activeport3mask" {
  default = "255.255.255.0"
}

// Active Port 4
variable "activeport4" {
  default = "10.0.7.10"
}

variable "activeport4mask" {
  default = "255.255.255.0"
}

// Passive Port 1
variable "passiveport1" {
  default = "10.0.2.10"
}

variable "passiveport1mask" {
  default = "255.255.255.0"
}

// Passive Port 2
variable "passiveport2" {
  default = "10.0.4.10"
}

variable "passiveport2mask" {
  default = "255.255.255.0"
}

// Passive Port 3
variable "passiveport3" {
  default = "10.0.6.10"
}

variable "passiveport3mask" {
  default = "255.255.255.0"
}

// Passive Port 4
variable "passiveport4" {
  default = "10.0.8.10"
}

variable "passiveport4mask" {
  default = "255.255.255.0"
}

variable "activeport1gateway" {
  default = "10.0.1.1"
}

variable "activeport2gateway" {
  default = "10.0.3.1"
}

variable "activeport4gateway" {
  default = "10.0.7.1"
}

variable "passiveport1gateway" {
  default = "10.0.2.1"
}

variable "passiveport2gateway" {
  default = "10.0.4.1"
}

variable "passiveport4gateway" {
  default = "10.0.8.1"
}

variable "bootstrap-active" {
  type    = string
  default = "config-active.conf"
}

variable "bootstrap-passive" {
  type    = string
  default = "config-passive.conf"
}

// license file for the active fgt
variable "license" {
  type    = string
  default = "license.lic"
}

// license file for the passive fgt
variable "license2" {
  type    = string
  default = "license2.lic"
}

