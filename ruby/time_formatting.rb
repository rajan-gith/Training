time = Time.new
# puts time.to_s
puts time.ctime
# puts time.localtime
# puts time.strftime("%Y-%m-%d %H:%M:%S") # formatting date and time



# %a for abbreviated of week day
# %A for complete name of week day

p time.strftime("%A"),time.strftime("%a")

# %b for abbreviated name of month
# %B for complete name of month

p time.strftime("%b"), time.strftime("%B"), time.strftime("%c")
# The preferred local date and time representation. by %c
str= time.strftime("%c")
p str.class
print time.strftime("%I")+":"+ time.strftime("%M")+" "+time.strftime("%p")
=begin 
	some important keys
	%H for 24 hrs clock
	%I for 12 hrs clock
	%p meridian indecation
	%M for minute
	%y year without centuary
	%Y year with centuary

=end


# time arithmetic

now = Time.now
past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

puts now






