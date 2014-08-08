class Calculate < ActiveRecord::Base

def daily_sum
	@calculates = Calculate.all
		
end # end daily_sum

end
