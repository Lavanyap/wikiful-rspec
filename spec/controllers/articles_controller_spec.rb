require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
	it "assigns all articles as @articles" do
      article = Article.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:articles)).to eq([article])
    end

end
