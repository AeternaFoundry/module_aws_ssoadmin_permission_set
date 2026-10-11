variable "ssoadmin_permission_sets" {
  description = <<EOT
Map of ssoadmin_permission_sets, attributes below
Required:
    - instance_arn
    - name
Optional:
    - description
    - region
    - relay_state
    - session_duration
    - tags
    - tags_all
EOT

  type = map(object({
    instance_arn     = string
    name             = string
    description      = optional(string)
    region           = optional(string)
    relay_state      = optional(string)
    session_duration = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssoadmin_permission_sets : (
        v.relay_state == null || ((length(v.relay_state) >= 1 && length(v.relay_state) <= 240) && (can(regex("[0-9A-Za-z&$@#\\\\\\/%?=~\\-_'\"|!:,.;*+\\[\\]\\ \\(\\)\\{\\}]+", v.relay_state))))
      )
    ])
    error_message = "all of: must be between 1 and 240 characters; must match [0-9A-Za-z&$@#\\\\\\/%?=~\\-_'\"|!:,.;*+\\[\\]\\(\\)\\{\\}]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssoadmin_permission_sets : (
        v.session_duration == null || (length(v.session_duration) >= 1 && length(v.session_duration) <= 100)
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

