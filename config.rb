#############
# based on jina.me
#############

require "builder"
require 'active_support/core_ext/integer/inflections'

Time.zone = "Asia/Singapore"

#activate :autoprefixer do |config|
#  config.browsers = ['last 2 versions', 'Explorer >= 9']
#  config.remove   = false
#  config.cascade = false
#  config.inline  = true
#end


activate :data_source do |c|
  c.root = "./lexicons/data/"
  c.files = {
    "words_en.yml" => "tangowords",
    "biglist-sorted.yml" => "tangodict"
  }
end

#data.tangodict.each do |chunk|
#  proxy "/junk/#{chunk.term.parameterize}.md", "/proxy/word.html",
#  :locals => { :entry => chunk }, :ignore => true
#end

#page '/words/*', :layout=>"entry"

#words.each_with_index do |chunk, index|
#  proxy "/tt/#{chunk.term.parameterize}.html",
#    "/proxy/entry.html",
#    :locals => { :entry => chunk },
#    :ignore => true
#end




#activate :blog do |blog|
  #blog.prefix = 'journal'
  #blog.permalink = '{category}/{year}{month}/{title}.html'
  #blog.sources = "posts/{year}-{month}-{day}-{title}.html"

  #blog.layout = "entry"
  #blog.sources = "words/{title}.md"
  #blog.default_extension = ".md"
  #blog.permalink =  "tt/{title}.html"

  #blog.calendar_template = "proxy/calendar.html"
  #blog.year_template = "proxy/calendar.html"
  #blog.month_template = "proxy/calendar.html"
  #blog.day_template = "proxy/calendar.html"
  #blog.year_link =  "archive/{year}.html"
  #blog.month_link = "archive/{year}/{month}.html"
  #blog.day_link =   "archive/{year}/{month}/{day}.html"
  #blog.tag_template = "proxy/tag.html"
  #blog.taglink =   "tagged/{tag}.html"
  #blog.summary_separator = /(READMORE)/
  #blog.summary_length = 250
#end

#ignore "proxy/calendar.html"
ignore "proxy/*"

#activate :deploy do |deploy|
#  deploy.method = :git
#  deploy.remote   = 'git@github.com:jina/jina.me.git'
#  deploy.branch   = 'gh-pages'
#end

activate :directory_indexes
activate :relative_assets
activate :livereload

#compass_config do |config|
#  config.output_style = :expanded
#end

#Sass::Script::Number.precision = 8


#page "/feed.xml",   layout: false
#page "/humans.txt", layout: false
page '/*.xml',     :layout => false
#page '/*.json',    layout: false
page '/*.txt',     :layout => false
#page '/admin/*', :layout => 'admin'



#set :source, "pages"
#set :css_dir,     'stylesheets'
#set :images_dir,  'images'
#set :js_dir,      'javascripts'
#set :layout_dir,  'layouts'
set :css_dir,     'assets/css'
#set :fonts_dir,   'assets/fonts'
set :images_dir,  'assets/img'
set :js_dir,      'assets/js'

set :haml, {    :format => :html5  }

set :markdown,  :tables => true,
                :autolink => true,
                :gh_blockcode => true,
                :fenced_code_blocks => true,
                :with_toc_data => true,
                :smartypants => true

set :markdown_engine, :redcarpet

configure :build do
  set :build_dir, 'docs'
  set :base_url, ""

  #activate :asset_hash, ignore: "/assets/img/"
  #activate :asset_host, :host => '//YOURDOMAIN.cloudfront.net'

  #activate :minify_css
  #activate :minify_html
  #activate :minify_javascript
  #activate :relative_assets

  #compass_config do |config|
  #  config.output_style = :compressed
  #end

  set :relative_links, true
end
