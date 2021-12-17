#!/usr/bin/env ruby
require 'openssl'
require 'date'

results = Array.new(10)
sum = 0

for i in 0..10
  start = DateTime.now.strftime('%Q')

  for j in 0..1000000
    sha256 = OpenSSL::Digest.new("SHA256")
    sha256.digest("hello world")
  end

  ends = DateTime.now.strftime('%Q')

  results.push(ends.to_f - start.to_f)
end

results.each { |result| sum += result }

sum = sum / 10

puts sum