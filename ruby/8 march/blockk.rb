# make sure your block name should be same as method name
def block1
	puts ("I am calling a block with the help of yield")
	yield
end

block1{
	puts ("Hi There here you come in a block")
}


def blockwithparam
	puts("Here comes the parameter block yielding only one argument")
	yield 4
end

blockwithparam{|i|
	puts("Hi you are again in the blockwith parameter here is your arg #{i}")
	
}

def blockwithmultipleparam
	puts("Here comes the parameter block")
	yield 4,6,7,9
end

blockwithmultipleparam{|*i|
	puts("Hi you are again in the blockwith parameter here is your arg #{i}")
	i.each { |e| p e  }
}