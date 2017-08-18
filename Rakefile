# RSpec
begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

# RDoc
begin
  require 'rdoc/task'
  RDoc::Task.new(:rdoc) do |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.title     = 'Mastermind Game'
    rdoc.rdoc_files.include('lib/**/*.rb')
  end
rescue LoadError
end