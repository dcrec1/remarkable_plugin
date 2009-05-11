# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{remarkable_plugin}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FIXME Author"]
  s.date = %q{2009-05-10}
  s.default_executable = %q{remarkable_plugin}
  s.email = %q{FIXME Email}
  s.executables = ["remarkable_plugin"]
  s.files = ["app_generators/remarkable_plugin", "app_generators/remarkable_plugin/remarkable_plugin_generator.rb", "app_generators/remarkable_plugin/templates", "app_generators/remarkable_plugin/templates/init.rb", "app_generators/remarkable_plugin/templates/lib", "app_generators/remarkable_plugin/templates/lib/en.yml", "app_generators/remarkable_plugin/templates/lib/pt.yml", "app_generators/remarkable_plugin/templates/lib/remarkable_you_name_it.rb", "app_generators/remarkable_plugin/templates/Rakefile", "app_generators/remarkable_plugin/templates/README.textile", "app_generators/remarkable_plugin/templates/spec", "app_generators/remarkable_plugin/templates/spec/model_builder.rb", "app_generators/remarkable_plugin/templates/spec/remarkable_you_name_it_spec.rb", "app_generators/remarkable_plugin/templates/spec/spec_helper.rb", "bin/remarkable_plugin", "lib/remarkable_plugin.rb", "Rakefile", "README.textile"]
  s.homepage = %q{FIXME HomePage}
  s.require_paths = ["app_generators", "bin", "lib"]
  s.rubyforge_project = %q{remarkable_plugin}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{FIXME Summary}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
