module ApplicationHelper

	def user_access
		if signed_in? && current_user.user_type == "pending"

		end
	end
end
