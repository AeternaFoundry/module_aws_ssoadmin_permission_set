output "ssoadmin_permission_sets_id" {
  description = "Map of id values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssoadmin_permission_sets_arn" {
  description = "Map of arn values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ssoadmin_permission_sets_created_date" {
  description = "Map of created_date values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "ssoadmin_permission_sets_description" {
  description = "Map of description values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ssoadmin_permission_sets_instance_arn" {
  description = "Map of instance_arn values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.instance_arn if v.instance_arn != null && length(v.instance_arn) > 0 }
}
output "ssoadmin_permission_sets_name" {
  description = "Map of name values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssoadmin_permission_sets_region" {
  description = "Map of region values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssoadmin_permission_sets_relay_state" {
  description = "Map of relay_state values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.relay_state if v.relay_state != null && length(v.relay_state) > 0 }
}
output "ssoadmin_permission_sets_session_duration" {
  description = "Map of session_duration values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.session_duration if v.session_duration != null && length(v.session_duration) > 0 }
}
output "ssoadmin_permission_sets_tags" {
  description = "Map of tags values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ssoadmin_permission_sets_tags_all" {
  description = "Map of tags_all values across all ssoadmin_permission_sets, keyed the same as var.ssoadmin_permission_sets"
  value       = { for k, v in aws_ssoadmin_permission_set.ssoadmin_permission_sets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

