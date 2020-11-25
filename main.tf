# Configure the Opsgenie Provider
provider "opsgenie" {
  api_key = "c04b1ee8-0763-4f50-845d-0f444781e001"
  api_url = "api.opsgenie.com" 
}

# Create a user
resource "opsgenie_user" "fred_krueger" {
  username  = "fkrueger@domain.com"
  full_name = "Fred Krueger"
  role      = "User"
  locale    = "en_US"
  timezone  = "America/New_York"
  tags = ["sre", "opsgenie"]
  skype_username = "skypename"
  user_address {
      country = "USA"
      state = "Ohio"
      city = "Springwood"
      line = ""
      zipcode = "45505"
  }
  user_details = {
    key1 = "val1,val2"
    key2 = "val3,val4"
  }
}

resource "opsgenie_user" "jason_voorhees" {
  username  = "jvoorhees@domain.com"
  full_name = "Jason Voorhees"
  role      = "User"
  locale    = "en_US"
  timezone  = "America/New_York"
  tags = ["sre", "opsgenie"]
  skype_username = "skypename"
  user_address {
      country = "USA"
      state = "New Jersey"
      city = "Cunningham"
      line = ""
      zipcode = ""
  }
  user_details = {
    key1 = "val1,val2"
    key2 = "val3,val4"
  }
}