time = Time.new
# puts time.to_s
puts time.ctime
# puts time.localtime
# puts time.strftime("%Y-%m-%d %H:%M:%S") # formatting date and time



# %a for short_name
# %A for complete name

p time.strftime("%A"),time.strftime("%a")

 