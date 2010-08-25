require 'rake'
require 'fileutils'

desc "Let's hook this motherfucker into your system"
task :install do
  linkables = Dir.glob('*/**{.symlink}')

  linkables.each do |linkable|
    file = linkable.split('/').last.split('.').first
    target = "#{ENV["HOME"]}/.#{file}"
    if File.exists?(target) || File.symlink?(target)
      puts "File already exists: #{target}, what do you want to do? [S]kip, [O]verwrite, [B]ackup"
      case STDIN.gets.chomp.downcase
      when 'o' then FileUtils.rm_f(target)
      when 'b' then `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"`
      end
    end
    `ln -s "$PWD/#{linkable}" "#{target}"`
  end

  runables = Dir.glob('*/**{.rb}')

  runables.each do |runable|
    load runable
  end
end