if RAILS_ENV == "test"

  require 'remarkable_activerecord'

  require File.join(File.dirname(__FILE__), "lib", "remarkable_<%= name %>")

  require 'spec'
  require 'spec/rails'

  Remarkable.include_matchers!(Remarkable::<%= module_name %>, Spec::Rails::Example::ModelExampleGroup)

end