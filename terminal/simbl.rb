require 'geoffrey'
Geoffrey.package do
  url 'http://www.culater.net/dl/files/SIMBL-0.9.7a.zip'
  options :sudo => true, :unless => Proc.new{ File.exists?("/Library/LaunchAgents/net.culater.SIMBL.Agent.plist") }
end
