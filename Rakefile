require_relative 'app'

task :default => :migrate

namespace :db do
	desc "Run migrations"
	task :migrate do
	  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
	end
end