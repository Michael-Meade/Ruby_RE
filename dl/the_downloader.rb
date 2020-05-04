require_relative 'import'
class Downloader
  def initialize(file)
    @file = file
    @test = Import.new
  end

  def find_links
    @test.find_links(@file)
  end
end


class The_downloader
	def self.discord_download(url)
		system("wget #{url}")
	end
	def self.download_files(file)
		report = Downloader.new(file)
		report.find_links
	end
end



#report.formatter = PlainTextFormatter.new
#report.output_report