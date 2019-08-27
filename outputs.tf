output "iam_instance_profile" {
  description = "The name of created iam_instance_profile"
  value       = "${module.iam.iam_instance_profile}"
}

output "service_name" {
  description = "The service role name of created service_name"
  value       = "${module.iam.service_name}"
}
