require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

require_relative 'spec/config/timecop'

reset_time

# used for the preview
require_relative 'lib/tricle'
require_relative 'spec/app/group_test_mailer.rb'
require_relative 'spec/app/list_test_mailer.rb'
require_relative 'spec/app/test_mailer.rb'
require_relative 'spec/app/uber_test_mailer.rb'

require_relative 'lib/tricle/tasks'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
