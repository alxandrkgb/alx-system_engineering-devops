#!/usr/bin/env ruby

regex = /Holberton[0-9]{2,}!/

input = ARGV[0]
matches = input.scan(regex)
puts matches.join
