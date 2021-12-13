d = Dir.new("assets/img/logo/")
d.each_child {
  |folder| 
  name = folder.capitalize.split('.').first
  File.open("_data/services/#{folder}.yml", "w") {|f| f.write(
"- name: #{name}
  url: #{folder}
  2fa: null"
    )}
  puts folder
}


Dir.foreach("_data/services/") do |filename|
  file_extension = File.extname(filename)
  if file_extension == ".yml"
    file_no_extension = File.basename(filename, ".yml")
    file_title = file_no_extension.split('.').first
    file_ser = file_no_extension.tr('.', '')
    puts file_ser
    File.open("_services/#{file_no_extension}.html", "w") {|f| f.write(
"---
layout: main
title: #{file_title}
description: #{file_no_extension} Service page description
permalink: /#{file_no_extension}/
ser: #{file_ser}
---
<div class="+'"container"'+">{% include service.html %}</div>
"
)}
  end
end