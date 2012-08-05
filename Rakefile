require "bundler/gem_tasks"

LIB_FILES = FileList.new('lib/**/*.rb').exclude('lib/chemistry/version.rb')
TEST_FILES = LIB_FILES.pathmap('%{^lib,test}d/test_%f')

task :test do
  TEST_FILES.zip(LIB_FILES).each do |test_file, lib_file|
    ruby "-I . -I test -r #{lib_file} #{test_file}"
  end
end
