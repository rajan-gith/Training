# ruby program to print date and time
t = Time.now
puts t.strftime("%a")+" "+t.strftime("%d")+","+t.strftime("%Y")+" "+t.strftime("%I")+":"+t.strftime("%M")+t.strftime("%p")