require 'geoffrey'
Geoffrey.package do
  url "http://github.com/albertllop/Blurminal/raw/master/Blurminal.bundle.zip"
  options :file => "Blurminal.bundle"

  def install
    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"
    FileUtils.mkdir_p plugins_dir
    FileUtils.mv file_to_install, plugins_dir, :force => true
  end

end
