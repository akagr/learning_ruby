puts "Renaming files..."

folder_path = "/media/akash/01CE04F5E0334C80"
Dir.glob(folder_path + "/**/*").each do |f|
    filename = File.basename(f)
    puts "Visiting file: #{filename}" unless File.directory? filename
    if filename =~ /Folder/
    	puts "Renaming "+filename
		File.rename(f, folder_path + "/" + "."+filename + File.extname(f))
	end
end

puts "Renaming complete."
