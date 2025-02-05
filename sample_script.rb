require 'oembed'

provider = OEmbed::Providers::Youtube

begin
  resource = provider.get("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
  puts "Title: #{resource.title}"
  puts "Author: #{resource.author_name}"
rescue OEmbed::ParseError => e
  puts "There was an error parsing the server response: #{e.message}"
end