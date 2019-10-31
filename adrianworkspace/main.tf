module "ec2module" {
  source = "./ec2module"

}

module "s3bucketmodule" {
  source = "./s3bucketmodule"
}

module "loadbalancermodule" {
  source = "./loadbalancermodule"
  instanceid = module.ec2module.ec2id
}