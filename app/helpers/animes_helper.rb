module AnimesHelper

	def full_url(url)
		url.prepend((url.include? "http") ? "" : "http://")
	end

end
