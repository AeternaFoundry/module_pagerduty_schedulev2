resource "pagerduty_schedulev2" "schedulev2s" {
  for_each = var.schedulev2s

  name        = each.value.name
  time_zone   = each.value.time_zone
  description = each.value.description
  teams       = each.value.teams

  dynamic "rotation" {
    for_each = each.value.rotation != null ? each.value.rotation : []
    content {
      dynamic "event" {
        for_each = rotation.value.event != null ? rotation.value.event : []
        content {
          dynamic "assignment_strategy" {
            for_each = event.value.assignment_strategy != null ? event.value.assignment_strategy : []
            content {
              dynamic "member" {
                for_each = assignment_strategy.value.member != null ? assignment_strategy.value.member : []
                content {
                  type    = member.value.type
                  user_id = member.value.user_id
                }
              }
              shifts_per_member = assignment_strategy.value.shifts_per_member
              type              = assignment_strategy.value.type
            }
          }
          effective_since = event.value.effective_since
          effective_until = event.value.effective_until
          end_time        = event.value.end_time
          name            = event.value.name
          recurrence      = event.value.recurrence
          start_time      = event.value.start_time
        }
      }
    }
  }
}

