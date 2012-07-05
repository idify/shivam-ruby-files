
@name=ARGV[1]
@pay=ARGV[0].to_i
	

	if  @pay <=18200 && @pay>=0
		puts "no tax"
	elsif @pay>18200 && @pay.to_i<=37000
		@taxpay=@pay-18200
		@tax=@taxpay*19/100
		@totaltax=(@pay*1.5/100)+@tax
		
	
	elsif @pay <= 80000 && @pay > 37000
		@taxpay=@pay-37000
		@tax=@taxpay*32.5/100
		@totaltax=(@pay*1.5/100)+@tax+3572
	
	elsif @pay <= 180000 && @pay > 80000
		@taxpay=@pay-80000
		@tax=@taxpay*37/100
		@totaltax=(@pay*1.5/100)+@tax+17547
		
	else
		@taxpay=@pay-180000
		@tax=@taxpay*45/100	
		@totaltax=(@pay*1.5/100)+@tax+54547
	end
	puts "#{@name} #{@totaltax}"

