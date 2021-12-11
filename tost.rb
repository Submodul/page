Dir.foreach("_data/services/") do |filename|
  file_extension = File.extname(filename)
  if file_extension == ".yml"
    file_no_extension = File.basename(filename, ".yml")
    file_title = file_no_extension.split('.').first
    file_ser = file_no_extension.tr('.', '')
    puts file_ser
    File.open("_services/#{file_no_extension}.html", "w") {
|f| f.write(
"---
layout: main
title: #{file_title}
description: #{file_no_extension} Service page description
permalink: /#{file_no_extension}/
ser: #{file_ser}
---
<div class="+'"container"'+">{% include service.html %}</div>
"
)
}
  end

# File.open("../#{filename}.html", "w") {|f| f.write(filename) }
  # Do work on the remaining files & directories
  # filen =  File.basename(filename, ".*")
  # puts filen
  # puts "file name: #{filename}"
  # print filename + "\n"
end