$VERBOSE = nil

working_directory = File.join( File.dirname(__FILE__))
$: << working_directory if !$:.include?(working_directory)
Dir[ File.join( working_directory, "*.jar") ].each do |jar|
  require jar
end

require "ribiprocessing/version"
require "ribiprocessing/proxy"
require "ribiprocessing/simple_app"
