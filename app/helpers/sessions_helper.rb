module SessionsHelper
	def current_cat
		@current_cat ||= Cat.find_by_id(session[:cat_id])
	end
end
