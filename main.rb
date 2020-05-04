require 'open3'
require 'colorize'
#require_relative 'lib/commands'
#require_relative 'lib/utils'
require_relative 'lib/re'
require_relative 'dl/the_downloader'


print"

████████╗██╗  ██╗███████╗    ██╗      ██████╗  ██████╗ ██╗  ██╗███████╗██████╗
╚══██╔══╝██║  ██║██╔════╝    ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝██╔════╝██╔══██╗
   ██║   ███████║█████╗      ██║     ██║   ██║██║   ██║█████╔╝ █████╗  ██████╔╝
   ██║   ██╔══██║██╔══╝      ██║     ██║   ██║██║   ██║██╔═██╗ ██╔══╝  ██╔══██╗
   ██║   ██║  ██║███████╗    ███████╗╚██████╔╝╚██████╔╝██║  ██╗███████╗██║  ██║
   ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

".red
print("Looker>".green)
opt = gets.chomp.split
case opt[0]
when "run"
    if opt[1].nil?
    	puts "use file"
    end
    RE::Commands.new_file(opt[1])
    RE::Commands.file_command(opt[1])
    RE::Commands.strings_command(opt[1])
    RE::Commands.detect_urls(opt[1])
    RE::Commands.detect_strings(opt[1])
    RE::Commands.hash_file(opt[1])
    RE::Crypto.all(opt[1])
    The_downloader.download_files(opt[1])
    #Crypto.detect_base64(opt[1])
end