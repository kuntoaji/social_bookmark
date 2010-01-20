# Install hook code here
puts "** Installing Social Bookmarks Plugin...." 

config = File.join(RAILS_ROOT, '/vendor/plugins/social_bookmark/lib/sites_EN.xml')
dest = File.join(RAILS_ROOT, '/config/sites_EN.xml')
puts "** Copying config file into #{dest} ...." 
FileUtils.cp(config, dest) unless File.exists? dest

images_parent = File.join(RAILS_ROOT, '/vendor/plugins/social_bookmark/')
dest = File.join(RAILS_ROOT, '/public/images/social_bookmark/')

unless File.exists? dest
  puts "** Moving all images to public/images/social_bookmark/ ..."
  FileUtils.cd images_parent
  FileUtils.mv 'images/', dest
end

puts "** Installation finished, edit your configuration file to select your bookmark list and restart your application afterwards ...." 
