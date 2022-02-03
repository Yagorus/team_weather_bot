terraform {
  source = "../../../modules//ecr"
}

include {
  path = find_in_parent_folders()
}

dependency "db" {
    config_path = "../db"
}