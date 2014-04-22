Sample Sinatra Recipe
==============

An old Sinatra config / base recipe (~12 months). Was used for a prototype, until I
moved that service to Go.

Features/Freebies:
--------------

- Bundler
- ActiveRecord
- ActionMailer
- racksh (console)
- Rake
- RSpec & FactoryGirl
- Flashes /w Rake Flash

**Important:** Configure database.yml, application.rb (especially Rack Cookie) & initializers/

Run 'rackup' & head to http://localhost:9292 to get started. I use
[Puma](https://github.com/puma/puma/) in Development & Production.
