#!/usr/bin/env ruby
require './lib/compiler.rb'

Compiler.new(File.read('test.src')).compile