module ApplicationHelper

  def us_states
    %w(AK AL AR AZ CA CO CT DC DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA WI WV WY)
  end

  def good_or_bad(response)
		if response == nil
			"No response"
		elsif response == true
			"Good!"
		elsif response == false
			"Bad!"
		end
	end

	 def yes_or_no(response)
		if response == nil
			"No response"
		elsif response == true
			"Yes"
		elsif response == false
			"No"
		end
	end

end
