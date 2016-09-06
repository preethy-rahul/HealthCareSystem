# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!



Time::DATE_FORMATS[:due_date] = "due on %B %d at %I:%M %p"

