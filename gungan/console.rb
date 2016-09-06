module Gungan
  class Console
    def initialize
      puts "----------------"
      puts "- GUNGAN CONSOLE"
      puts "----------------"
    end

    def reload!
      console_path = `pwd`.gsub("\n", "/bin/gungan")
      exec(console_path)
      exit 0
    end
  end
end
