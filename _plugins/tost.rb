File.open( thefile ).each do |line|
  print line without the new line if line does not contain  /--+/
  if line contains /--+/
      print line with a new line
  end
end