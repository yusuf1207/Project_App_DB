module "rds_module" {
  source                    = "github.com/yusuf1207/Project_Modules//modules/rds_module"
  allocated_storage         = 10
  db_name                   = "procejt_db"
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t3.micro"
  username                  = "admin"
  password                  = random_password.db_password.result
  parameter_group_name      = "default.mysqk5.7"
  publicly_accessible       = false
  skip_final_snapshot       = false
  final_snapshot_identifier = true
}