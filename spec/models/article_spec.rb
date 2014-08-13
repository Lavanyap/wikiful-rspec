require 'rails_helper'

RSpec.describe Article, :type => :model do
  it "is invalied without a title" do
      article = Article.new 
      article.should_not be_valid
  end
 

  it "changes the number od article" do
     category1= Category.new(name: "science")
     category2 = Category.new(name: "Technology")
  	  article = Article.new(title: "recent bioingormatics news", content: "nnnknkn",categories: [category1])
	  expect {article.save}.to change {Article.count}.by(1)      
    end

    it { should belong_to :user }
end
