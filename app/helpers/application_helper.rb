module ApplicationHelper

  def us_states
    %w(AK AL AR AZ CA CO CT DC DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA WI WV WY)
  end

  # returns % of responses rated true
	def cum_rating(responses)
		t = responses.select { |r| r == true }
		f = responses.select { |r| r == false }
		total = t.length + f.length
		number_to_percentage(t.length.to_f / total * 100, precision: 0)
	end

	# returns average rating
	def avg_rating(rating)
		rating.inject{ |sum, el| sum + el }.to_f / rating.length
	end

end
