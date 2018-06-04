#!/usr/bin/env ruby

gem 'thor', '> 0.19'

require 'thor'

class Sloth < Thor
  package_name 'Sloth'

  # Report status exit to the OS
  def self.exit_on_failure?
    true
  end

  map ['-h', '--help', 'help'] => :help

  desc 'Show all available commands', 'Show all available commands'
  def help
    say 'This will be  very helpful help section'
  end
end

Sloth.start
