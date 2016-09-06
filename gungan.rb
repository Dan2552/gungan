require "require_all"
require "pry"
require_all "./gungan"

argument = ARGV[0]
mode = argument.to_sym if argument
mode = :console if mode == :c

if mode == :console
  Gungan::Console.new.pry
  exit 0
else
  puts "Usage: bin/gungan [COMMAND]"
  puts ""
  puts " console    Start the gungan console (short-cut alias: \"c\")"
  exit 0
end
