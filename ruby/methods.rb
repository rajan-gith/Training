def hello(name)
	puts "hello %s" %name
end 

hello('jack')

def sample(*test)
	for i in 0..test.length
		puts"#{test[i]}"
	end
end

sample('one','two','three','four','five','six','seven')

def block
	yield
	puts("out of the block")
end 
block {
	puts("this is an block")
}