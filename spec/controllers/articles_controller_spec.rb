require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
describe "GET #index" do
    it "renders the :index view" do 
    	get :index 
    	response.should render_template :index
    end 
  
end
describe "GET #show" do
    it "renders the :show view" do 
    	get :show
    	response.should render_template :show
    end 
  
end
    
      
    
end
