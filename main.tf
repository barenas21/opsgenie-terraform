# Configure the Opsgenie Provider
provider "opsgenie" {
  api_key = "$OPSGENIE_API_KEY"
  api_url = "api.opsgenie.com" 
}

# Create a user
resource "opsgenie_user" "test" {
  username  = "fkrueger@domain.com"
  full_name = "Fred Krueger"
  role      = "User"
  locale    = "en_US"
  timezone  = "America/New_York"
  tags = ["sre", "opsgenie"]
  skype_username = "skypename"
  user_address {
      country = "USA"
      state = "Illinois"
      city = "Elmwood"
      line = "Line"
      zipcode = "66666"
  }
  user_details = {
    key1 = "val1,val2"
    key2 = "val3,val4"
  }
}
