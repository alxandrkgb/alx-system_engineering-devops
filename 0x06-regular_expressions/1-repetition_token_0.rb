#!/usr/bin/env ruby

regex = /Holberton{2,}!/

input = ARGV[0]
matches = input.scan(regex)
puts matches.join
