output "schedulev2s_id" {
  description = "Map of id values across all schedulev2s, keyed the same as var.schedulev2s except keys with no id are omitted"
  value       = { for k, v in pagerduty_schedulev2.schedulev2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schedulev2s_description" {
  description = "Map of description values across all schedulev2s, keyed the same as var.schedulev2s except keys with no description are omitted"
  value       = { for k, v in pagerduty_schedulev2.schedulev2s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "schedulev2s_name" {
  description = "Map of name values across all schedulev2s, keyed the same as var.schedulev2s except keys with no name are omitted"
  value       = { for k, v in pagerduty_schedulev2.schedulev2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "schedulev2s_rotation" {
  description = "Map of rotation values across all schedulev2s, keyed the same as var.schedulev2s except keys with no rotation are omitted"
  value       = { for k, v in pagerduty_schedulev2.schedulev2s : k => v.rotation if v.rotation != null && length(v.rotation) > 0 }
}
output "schedulev2s_teams" {
  description = "Map of teams values across all schedulev2s, keyed the same as var.schedulev2s except keys with no teams are omitted"
  value       = { for k, v in pagerduty_schedulev2.schedulev2s : k => v.teams if v.teams != null && length(v.teams) > 0 }
}
output "schedulev2s_time_zone" {
  description = "Map of time_zone values across all schedulev2s, keyed the same as var.schedulev2s except keys with no time_zone are omitted"
  value       = { for k, v in pagerduty_schedulev2.schedulev2s : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

