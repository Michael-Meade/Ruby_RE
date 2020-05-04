

require 'chilkat'

require 'rubygems/package'
require 'zlib'

module RE
	class Gzip
		def self.ungzip(filename)
			tar_extract = Gem::Package::TarReader.new(Zlib::GzipReader.open(filename))
			tar_extract.rewind # The extract has to be rewinded after every iteration
			tar_extract.each do |entry|
				puts entry.full_name
				puts entry.directory?
				puts entry.file?
				# puts entry.read
			end
			tar_extract.close
		end
	end
end