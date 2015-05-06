require 'active_record'
require 'sqlite3' # or 'pg' or 'sqlite3'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3', # or 'postgresql' or 'sqlite3'
  host:     'localhost'

)

# Define your classes based on the database, as always
class NoticesClass < ActiveRecord::Base
  #blah, blah, blah
end

# Now do stuff with it
puts NoticesClass.find :all
