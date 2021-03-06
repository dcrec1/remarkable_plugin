require 'rbconfig'
 
class RemarkablePluginGenerator < RubiGen::Base
  
  DEFAULT_SHEBANG = File.join(Config::CONFIG['bindir'],
                              Config::CONFIG['ruby_install_name'])
  
  attr_reader :name, :module_name
  
  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?
    @destination_root = File.expand_path(args.shift)
    @name = base_name
    @module_name = base_name.split(/_+/).each{ |word| word.capitalize! }.join('')
  end
 
  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory ''
      BASEDIRS.each { |path| m.directory path }
 
      # Create stubs
      # m.template "template.rb", "some_file_after_erb.rb"
      m.template "init.rb", "init.rb"
      m.template "Rakefile", "Rakefile"
      m.template "README.textile", "README.textile"
      
      m.template "lib/en.yml", "lib/en.yml"
      m.template "lib/pt.yml", "lib/pt.yml"
      m.template "lib/remarkable_you_name_it.rb", "lib/remarkable_#{@name}.rb"
      
      m.template "spec/remarkable_you_name_it_spec.rb", "spec/remarkable_#{@name}_spec.rb"
      m.template "spec/spec_helper.rb", "spec/spec_helper.rb"
      
      m.file "spec/model_builder.rb", "spec/model_builder.rb" 
    end
  end
 
  protected
    def banner
      <<-EOS
Creates a simple RubyGems scaffold.
 
USAGE: #{spec.name} name --simple"
EOS
    end
 
    def add_options!(opts)
      opts.separator ''
      opts.separator 'Options:'
      # For each option below, place the default
      # at the top of the file next to "default_options"
      # opts.on("-a", "--author=\"Your Name\"", String,
      # "Some comment about this option",
      # "Default: none") { |x| options[:author] = x }
      opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
    end
 
    # Installation skeleton. Intermediate directories are automatically
    # created so don't sweat their absence here.
    BASEDIRS = %w(lib spec)
end