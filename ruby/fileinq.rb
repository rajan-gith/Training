p Dir.chdir("files")
status = File.exist?("test.txt") # tells whether the file exists or not
p status
file = File.new("abc")
file.chmod(0755) # changes file mode

p File.file?("abc") # checks file

p File.ftype("abc") #checks the file type

p File.zero?(file) # checks for file if null or empty

p File.ctime(file) # creation time

p File.mtime(file) # modification time

p File.atime(file) # access time 

p File.readable?(file)

p File.executable?(file)

p File.writable?(file)


file.close

