# Title: github_link plugin
# Author: Carl Boettiger, @cboettig
# Licence: MIT

# A custom filter to generate the github link from the URL
# Not very robust, will break if a custom title is set.  
#
#
# Unfortunately we don't seem to have access to "page.name" 
# for the filename or page.base for the page path 
# https://github.com/mojombo/jekyll/blob/master/lib/jekyll/layout.rb
# Example use: 
#
# {{ post.url | github.link }}
# 

module TextFilter
  def github_link(input)
    input.gsub(/(\d\d\d\d)\/(\d\d)\/(\d\d)\/(.*)\.html/, "\\1-\\2-\\3-\\4.md")
  end
end
Liquid::Template.register_filter(TextFilter)
