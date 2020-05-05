require 'open3'
require 'colorize'
require_relative 'lib/re'
require_relative 'dl/the_downloader'



if ARGV[0].nil?
  puts "EX: ruby main.rb file"
else
  if !File.exist?(ARGV[0])
      puts "File Doesnt exist"
  elsif ARGV[1].nil?
    RE::Commands.new_file(ARGV[0])
    RE::Commands.file_command(ARGV[0])
    RE::Commands.strings_command(ARGV[0])
    RE::Commands.detect_urls(ARGV[0])
    RE::Commands.detect_strings(ARGV[0])
    RE::Commands.hash_file(ARGV[0])
    RE::Crypto.all(ARGV[0])
    The_downloader.download_files(ARGV[0])
  end
end
