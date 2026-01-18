############################################################
/* AMIs
   Updated to use dynamic lookups for the latest versions.
*/
############################################################

#------------------------------
# Windows Images
#------------------------------

# Mapping "Windows 11" to Server 2022 (as per original file) but fetching LATEST
data "aws_ami" "windows-desktop-11" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }
}

# Windows Server 2022 - Latest
data "aws_ami" "windows-server-2022" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }
}

# Windows SQL Server 2022 - Latest
data "aws_ami" "windows-sql-server-2022" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-SQL_2022_Standard-*"]
  }
}


#------------------------------
# Linux Images
#------------------------------

# Ubuntu 20.04 (Focal) - Latest
data "aws_ami" "ubuntu-focal" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Ubuntu 22.04 (Jammy) - Latest
data "aws_ami" "ubuntu-jammy" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

# Kali Linux - Latest
data "aws_ami" "kali" {
  most_recent = true
  owners      = ["679593333241"] # Kali Organization
  filter {
    name   = "name"
    values = ["kali-last-snapshot-*"] 
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
