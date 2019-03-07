f=File.new('test.txt','r+')
if f
	p f.sysread(20)
	f.syswrite("dummy text")

else
	p "unable to open the file"
end
f.close 