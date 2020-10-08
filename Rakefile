require 'rake'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:test) do |task|
  task.cucumber_opts = ['--format=AllureCucumber::CucumberFormatter', '--require run-local-test/', 'run-local-test/', 'CONFIG_NAME=local', '--publish', '--out reports/allure-reports']
end

task :default => :test