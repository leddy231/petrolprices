require 'sinatra'
require "open-uri"

URL = 'https://www.globalpetrolprices.com/api/getGasXML_weekly.php?gasoline_diesel=1&rate=SEK&countries=all&p=eff9fa4b166d0e92a02621933f6472f4'

get "/" do
	send_file "public/index.html"
end

get "/xmldata" do
	res = ""
	open(URL) do |data|
		res = data.read
	end
	res
end