amount = 0

billing_account = "string" #required

credit_treatment = "INCLUDE_ALL_CREDITS"

email_recipients = object({
    project_id = string
    emails     = list(string)
  }) #required

name = "string" #required

notification_channels = list(string) #required

notify_default_recipients = false

projects = list(string) #required

pubsub_topic = "string" #required

services = list(string) #required

thresholds = object({
    current    = list(number)
    forecasted = list(number)
  }) #required

