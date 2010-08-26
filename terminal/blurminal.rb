require 'geoffrey'
Geoffrey.package do
  url "http://github.com/albertllop/Blurminal/raw/master/Blurminal.bundle.zip"
  options :file => "Blurminal.bundle"

  def install

    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"

    unless File.exists?("#{plugins_dir}/#{file_to_install}")
      puts "Blurminal bundle already installed"
    else
      puts "Installing Blurminal bundle"
      FileUtils.mkdir_p plugins_dir
      FileUtils.mv file_to_install, plugins_dir
      puts "You only have to reload Terminal.app now"
    end

  end

end
