require 'geoffrey'

# The original SIMBL
Geoffrey.package do
  url 'http://www.culater.net/dl/files/SIMBL-0.9.7a.zip'
  options :sudo => true, :unless => Proc.new{ File.exists?("/Library/LaunchAgents/net.culater.SIMBL.Agent.plist") }
end

# And now the two bundles I like to use
Geoffrey.package do
  url "http://github.com/albertllop/Blurminal/raw/master/Blurminal.bundle.zip"
  options :file => "Blurminal.bundle"

  def install
    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"
    FileUtils.mkdir_p plugins_dir
    FileUtils.mv file_to_install, plugins_dir, :force => true
  end
end

Geoffrey.package do
  url "http://github.com/dabeeeenster/terminaltabswitching/raw/master/TerminalTabSwitching.bundle.zip"
  options :file => "TerminalTabSwitching.bundle"

  def install
    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"
    FileUtils.mkdir_p plugins_dir
    FileUtils.mv file_to_install, plugins_dir, :force => true
  end

end

# Configure the Terminal. This way it'll probably restart it anyway
# The idea is to set all the options as I like them for the Terminal.app
# * TODO: Set some annoying key fixes, like being able to delete and <C-l> <C-R>
Geoffrey.plist do
  file :terminal
  affects "/Applications/Utilities/Terminal.app"

  options["Default Window Settings"] = "Pro"
  options["Startup Window Settings"] = "Pro"
  options["HasMigratedDefaults"] = true
  options["Window Settings"]["Pro"]["Font"] = "bplist00\xD4\x01\x02\x03\x04\x05\x06\x18\x19X$versionX$objectsY$archiverT$top\x12\x00\x01\x86\xA0\xA4\a\b\x11\x12U$null\xD4\t\n\v\f\r\x0E\x0F\x10V$classVNSNameVNSSizeXNSfFlags\x80\x03\x80\x02\#@,\x00\x00\x00\x00\x00\x00\x10\x10]Menlo-Regular\xD2\x13\x14\x15\x16Z$classnameX$classesVNSFont\xA2\x15\x17XNSObject_\x10\x0FNSKeyedArchiver\xD1\x1A\eTroot\x80\x01\b\x11\x1A#-27<BKRY`ikmvx\x86\x8B\x96\x9F\xA6\xA9\xB2\xC4\xC7\xCC\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x1C\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xCE"
  options["Window Settings"]["Pro"]["Font"].blob = true
  options["Window Settings"]["Pro"]["columnCount"] = 520
  options["Window Settings"]["Pro"]["rowCount"]    = 100
end

