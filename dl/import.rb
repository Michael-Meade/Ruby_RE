require 'uri'
require 'open3'
require 'fileutils'
class Import
  def download_files(file)
    FileUtils.mkdir_p(File.join("output", file,  "downloads"))  unless File.exists?(File.join("output", file, "downloads"))
    File.readlines(File.join("output", file, file)).each do |line|
      if line.match("http")
        stdout, status = Open3.capture2("wget -O #{File.join("output", file, "downloads", line.split("/")[-1].strip)} #{line.strip.gsub("\n", " ")}")
      end
    end
  end
  def find_links(file)
    # the main purpose of this method is to find all the links in a file. 
    FileUtils.mkdir_p("output/" + file)  unless File.exists?("output/" + file)
    File.readlines(file).each do |line|
      line = line.strip
      ip = URI.regexp.match(line)
      if !ip.nil?
        File.open(File.join("output", file, file), 'a') { |f| f.write(ip[0] + "\n") }
      end
    end
    # this method will download all the files
    download_files(file)
  end
end
