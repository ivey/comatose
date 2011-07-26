require 'echoe'
require 'rake'
require 'rails/all'
require File.expand_path('../../comatose/version.rb', __FILE__)


Echoe.new('comatose') do |p|
  p.project = 'comatose'
  p.author = ['Bryan Taylor', 'Matt McCray', "Michael Kovacs"]
  p.summary = 'Micro CMS - resurrected for Rails 3'
  p.runtime_dependencies = ['rake >=0.9.2', 'rails >=3.0.9', 'acts_as_versioned', 'acts_as_list-rails3', 'acts_as_tree_rails3']
  p.development_dependencies = ['term-ansicolor']
  p.retain_gemspec = true
  p.rubygems_version = ">=1.8.4"
  p.version = Comatose::VERSION
  p.install_message = File.read('INSTALL')
  p.description = %q{Web Content Management in Rails 3.}
  p.email = %q{btaylor39@csc.com}
  p.clean_pattern = ["comatose.gemspec", "pkg", "Manifest"]
  p.ignore_pattern = [
      "bin/*",

      "config/database.yml",
      "config/routes.rb",
      "config/initializers/*",

      "db/schema.rb",
      "db/*.sqlite3",

      "lib/tasks/gem.rake"
  ]

end