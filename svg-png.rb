Dir.foreach("assets/img/logo/") do |filename|
  file_extension = File.extname(filename)
  if file_extension == ".svg"
    file_no_extension = File.basename(filename, ".svg")
    file_title = file_no_extension.split(' ', 2).first
    system("cd ./assets/img/logo/ && mkdir #{file_title}") 
    puts file_title
    puts file_extension
    # svg -> png
    # system("cd ./assets/img/logo/ && rsvg-convert -w 1024 #{filename} > #{file_no_extension}.png ")
  end
end