module PagesHelper

	def main_page_content_partial_path
		if user_signed_in?
      		'layouts/navigation/dashboard_elements/signed_in_content'
    	else
      		'layouts/navigation/dashboard_elements/non_signed_in_content'
    	end	
	end
end
