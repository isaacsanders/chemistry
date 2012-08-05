require "bundler/gem_tasks"

LIB_FILES = FileList.new('lib/**/*.rb').exclude('lib/chemistry/version.rb')
TEST_FILES = LIB_FILES.pathmap('%{^lib,test}d/test_%f')

LIB_FILES.each do |lib_file|
  file lib_file do
    sh "flay -m 0 #{lib_file}" do |ok, res|
      "#{lib_file} has structural similarities. DRY it."
    end
  end
end

TEST_FILES.zip(LIB_FILES).each do |test_file, lib_file|
  file test_file => lib_file do
    ruby "-I test -I . -r #{lib_file} #{test_file}"
  end
end

task :test => TEST_FILES do
end
