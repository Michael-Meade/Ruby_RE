# Ruby_RE
Scan files


# Features 

## md5
```RE::Commands.hash_file(file)``` method can be used to hash the file.

## strings
```RE::Commands.strings_command(file)``` method uses the strings commands and saves it to a directory. The file that is created is also used 
by most if not all the other methods. Most of them will read through each line looking for something specfic.  

## file
```RE::Commands.file_command(file)``` This method runs the file command and saves the output.

## detect URLS

```RE::Commands.detect_urls(file)``` This method is used to detect possible urls. This method is able to detect both IP and domains. 

## The Downloader
```The_downloader.download_files(file)``` This was a seperate project that I was working with but decided to merge with this one. It will look for
URLS and try to download the files. This is supposed to make it easier figure out what script does. 

## CRYPTO
```RE::Crypto.all(file)``` - This method combines all the methods in the class into one. This function is to detect bitcoin addresses and monero address.
It is also able to detect SSH keys. 

### Example
```ruby main.rb ldm```
