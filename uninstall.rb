# Uninstall hook code here
# Removing sites_EN.xml
puts "Removing /config/sites_EN.xml"
dest = File.join(RAILS_ROOT, '/config/sites_EN.xml')
FileUtils.rm(dest) if File.exists?(dest)

# Removing directory public/images/social_bookmark/
puts "Removing /public/images/social_bookmark/"
dest = File.join(RAILS_ROOT, '/public/images/social_bookmark/')
FileUtils.rm_rf(dest) if File.exists?(dest)
