a = [1,2,3]
p a.permutation().to_a	#permutation of all elements
p a.permutation(1).to_a	#permute for single elements
p a.permutation(2).to_a	#for two
p a.permutation(3).to_a	#for three
p a.permutation(4).to_a	#for four returns nill
p a.permutation(0).to_a #for 0 elements only one possible permutation