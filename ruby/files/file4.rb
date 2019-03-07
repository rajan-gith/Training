f=File.new("text1.txt",'w')
f.close
File.rename("text1.txt","text2.txt")

File.delete("text2.txt")