time=Time.new
p time # shows time
p time.year # extracts year
p time.month # extracts month
p time.day # extracts day
p time.wday # extracts weekday
p time.yday # extracts year day
p time.hour # extracts hour
p time.min # extracts min
p time.sec # extracts second
p time.usec # extracts micro second
p time.zone # extracts zone

a=Time.local(1999,12,10,9,10) # local(year,month,date,hr,min)
val=a.to_a # converts to array [sec,min,hrs,dd,mm,yy,]
p a
p a.getutc
p a.gmtime
p val

p a.to_i
print "\n"

print"UTC offset is "
p a.utc_offset

print "\n"
print a.utc?
print "\n"*2

b=Time.utc(2019,3,7,10,58)
p b