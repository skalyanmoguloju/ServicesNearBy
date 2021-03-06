require 'spec_helper'
require 'rails_helper'
RSpec.describe AdminController, type: :controller do

  # describe "Form to enter details" do
  #   it "check which user has logged in" do
  #   #  user = User.new(
  #   #  first_name: 'Aaron',
  #   #  last_name: 'Sumner',
  #   #  email: 'tester@example.com',
  #   #  password: '12341234')
  #   #
  #   #   user.roles << Role.find_by_name('driver')
  #   #   expect(user.roles[0].name).to eq 'driver'
  #     # get :new
  #     # expect(response).to render_template("driverdetails/new")
  #   end
  # end

  describe 'Activating user'do
    it 'should call click activate in user tab' do
      post :activate, {:id => 1}
      expect(response).to redirect_to("/admin/index")
    end

  end

  describe 'Deactivating user' do
    it 'should call click dectivate in user tab' do
      post :deactivate, {:id => 1}
      expect(response).to redirect_to("/admin/index")
    end

  end


  describe 'Activating categories'do
    it 'should call click activate in categories tab' do
      post :activatecategory, {:id => 1}
      expect(response).to redirect_to("/admin/index")
    end

  end

  describe 'Deactivating categories' do
    it 'should call click dectivate in categories tab' do
      post :deactivatecategory, {:id => 1}
      expect(response).to redirect_to("/admin/index")
    end

  end

  describe 'Activating service'do
    it 'should call click activate in service tab' do
      post :activateservice, {:id => 1}
      expect(response).to redirect_to("/admin/index")
    end

  end

  describe 'Deactivating service' do
    it 'should call click dectivate in service tab' do
      post :deactivateservice, {:id => 1}
      expect(response).to redirect_to("/admin/index")
    end

  end



  describe 'Rejecting vendor' do
    it 'should call click dectivate in service tab' do
      post :reject, {:id => 7}
      expect(response).to redirect_to("/admin/index")
    end

  end


  describe 'Acceptiong vendor' do
    it 'should call click dectivate in service tab' do
      post :show, {:id => 7}
      expect(response).to redirect_to("/admin/index")
    end

  end

  describe 'Rejecting service' do
    it 'should call click dectivate in service tab' do
      post :rejectservice, {:id => 2}
      expect(response).to redirect_to("/admin/index")
    end

  end



  describe 'Loading' do
    it 'page load' do
      get :index
    end

  end

  describe 'Adding category' do
    it 'page load' do
      post :addcategory, {:service_name => { :service_name => "test"},:service_information => { :service_information => "test"}}
      expect(response).to redirect_to("/admin/index")
    end

  end

end