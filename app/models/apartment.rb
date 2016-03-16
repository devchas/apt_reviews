class Apartment < ActiveRecord::Base
	has_many :reviews

	def full_address
		street_address << " " << street << ", " << city << ", " << state
	end

	# Calculate average rating for a given apartment
	def avg_rating
		ratings = reviews.collect { |r| r.overal_rating }
		ratings.inject{ |sum, el| sum + el }.to_f / ratings.length
	end

  # returns % of responses rated true
	def cum_rating(question_id)
		answers = response_array(question_id)
		t = answers.select { |answer| answer.response == true }
		f = answers.select { |answer| answer.response == false }
		total = t.length + f.length
		t.length.to_f / total * 100
	end


	# returns an array of response objects that match a given question_id
	private
	def response_array(question_id)
		answers = reviews.each.collect { |review| review.answers }
		ans_arr = []
		answers.each do |answer|
			answer.each do |a|
				ans_arr << a if a.review_question_id == question_id
			end
		end
		return ans_arr
	end

end