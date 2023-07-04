#!/usr/bin/env ruby

regex = /\[from:(?<sender>[^\]]+)\] \[to:(?<receiver>[^\]]+)\] \[flags:(?<flags>[^\]]+)\]/

input = ARGV[0]
matches = input.scan(regex)

matches.each do |match|
  sender = match[0]
  receiver = match[1]
  flags = match[2]
  puts "#{sender},#{receiver},#{flags}"
end
