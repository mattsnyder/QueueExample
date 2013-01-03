notification :terminal

group :all do
  guard :rspec do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  end
end
