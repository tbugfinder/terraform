data "aws_vpc" "splunk" {
  default = true
}

module "index_subnet" {
  source = "../mods/subnet"
  vpc_id = "${data.aws_vpc.splunk.id}"
  cidr_block = "172.31.0.0/16"
  tags = {
    Name = "Splunk Index Tier"
    owner = "Brent Weaver"
    purpose = "Index Servers"
    }
}

module "index_secgrp" {
  source = "../mods/sec_group"
  name = "Index Sec Group"
  description = "Index Server Sec Group"
  tags = {
    Name = "Splunk Index Tier"
    owner = "Brent Weaver"
    purpose = "Index Servers"
    }
}
