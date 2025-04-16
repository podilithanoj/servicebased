module "ec2" {
  source         = "../../../services/ec2/modules/ec2"
  env            = var.env
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = var.subnet_id
}