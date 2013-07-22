require 'spec_helper'

describe "MicropostPages" do
  
  
  subject { page }
  let(:user) { FactoryGirl.create :user }
  before { sign_in user }
  
  describe "micropost creation" do
    before { visit root_path }
    
    describe "with invalid information" do
      
      it "should not create a micropost" do
        expect { click_button "Post" }.should_not change(Micropost, :count)
      end
      
      describe "error messages" do
        before { click_button "Post" }
        it { should have_content "error" }
      end
    end
    
    describe "with valid information" do
      before { fill_in "text_area_for_post", with: "Lorem ipsum" }
      it "should create a micropost" do
        expect { click_button "Post" }.should change(Micropost, :count).by 1
      end
    end
    
  end
  
  describe "micropost destruction" do
    before { FactoryGirl.create(:micropost, user: user) }
    
    describe "as correct user" do
      before { visit root_path }
      it "should delete a micropost" do
        expect { click_link "delete" }.should change(Micropost, :count).by(-1)
      end
    end
    describe "as other user" do
      let(:posts_owner) { FactoryGirl.create(:user, name: "post owner") }
      let(:passing_by) { FactoryGirl.create(:user, name: "passing by") }
      before do
        FactoryGirl.create(:micropost, user: user)
        sign_in passing_by
        visit user_path posts_owner
      end
      it { should_not have_link "delete" }
      
    end
  end
  
  
end
