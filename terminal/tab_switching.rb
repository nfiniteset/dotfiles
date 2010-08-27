require 'geoffrey'
Geoffrey.package do
  url "http://github.com/dabeeeenster/terminaltabswitching/raw/master/TerminalTabSwitching.bundle.zip"
  options :file => "TerminalTabSwitching.bundle"

  def install
    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"
    FileUtils.mkdir_p plugins_dir
    FileUtils.mv file_to_install, plugins_dir, :force => true
  end

end
