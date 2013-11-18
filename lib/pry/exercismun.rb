require "pry/exercismun/version"

class Pry
  module Exercismun
  
  extend self
    
  Pry::Commands.block_command "exercism-test", "Run tests" do |*args|
  puts args[1] unless args[1].nil?
  unless args[0].nil? || args[0].empty?
   name = "#{args[0]}_test.rb" 
  else
    dir = Dir.pwd
    file = dir.split('/').last
    name = "#{dir+'/'+file}_test.rb"
  end
  output.puts `ruby #{name}`
end

Pry::Commands.create_command "exercism-fetch" do 
  description "Fetch exercises from exercism.io"

  def process
    
    lines = `exercism fetch`
    puts Pry::Exercismun.short_fetch lines
  end
  
  
end

Pry::Commands.create_command "exercism-submit" do |*args|
  description "Submit exercise to exercism.io"
  
  def process
    output.puts submit
  end
  
  def submit
    unless args[0].nil? || args[0].empty?
     name = "#{args[0]}.rb" 
    else
      dir = Dir.pwd
      file = dir.split('/').last
      name = "#{dir+'/'+file}.rb"
    end
    `exercism submit #{name}`
  end
end

Pry.config.commands.alias_command "etest", "exercism-test"
Pry.config.commands.alias_command "efetch", "exercism-fetch"
Pry.config.commands.alias_command "esubmit", "exercism-submit"


def short_fetch string
  string.lines do |line|
    if a = line.gsub!('Fetched ', '')
      lang, exercise = a.split '/'
      output.puts "#{lang.capitalize}:                 #{exercise}"
    end
  end
end


  end
end
