require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
	
    it "renders the :index view" do 
    	get :index 
    	response.should render_template :index
    end 

end
