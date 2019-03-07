a="sringnirs"
l=a.length
j = -(l-1)
count = 1
for i in 0...l
	# p i,j
	if a[i] == a[j]
		count +=  1
		j += 1
	end

end
if count == l
	p "pallindrome"
end