#!/usr/bin/ruby

require 'uri'
require 'net/http'

num=ARGV[1].to_i

num.times do
Net::HTTP.version_1_2

uri=URI(ARGV[0])

http = Net::HTTP.new(uri.host,uri.port)

http.set_debug_output $stderr

http.start{|http|
  req = Net::HTTP::Get.new(uri.path)
  res = http.request(req)
  print res.body
}
sleep(1)
end

