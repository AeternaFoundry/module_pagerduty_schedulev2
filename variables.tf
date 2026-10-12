variable "schedulev2s" {
  description = <<EOT
Map of schedulev2s, attributes below
Required:
    - name
    - time_zone
Optional:
    - description
    - teams
    - rotation (block):
        - event (optional, block):
            - assignment_strategy (optional, block):
                - member (optional, block):
                    - type (required)
                    - user_id (optional)
                - shifts_per_member (optional)
                - type (required)
            - effective_since (required)
            - effective_until (optional)
            - end_time (required)
            - name (required)
            - recurrence (required)
            - start_time (required)
EOT

  type = map(object({
    name        = string
    time_zone   = string
    description = optional(string)
    teams       = optional(list(string))
    rotation = optional(list(object({
      event = optional(list(object({
        assignment_strategy = optional(list(object({
          member = optional(list(object({
            type    = string
            user_id = optional(string)
          })))
          shifts_per_member = optional(number)
          type              = string
        })))
        effective_since = string
        effective_until = optional(string)
        end_time        = string
        name            = string
        recurrence      = list(string)
        start_time      = string
      })))
    })))
  }))
}

