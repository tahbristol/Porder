require_relative 'spec_helper'

describe 'class User' do
  before do
    @user = User.create(name: "john", email: "john@doe.com", password: "johnd")
  end

  describe "attributes" do
    it 'has a name, email, and password' do
      expect(@user).to be_an_instance_of(User)
      expect(@user.name).to eq("john")
      expect(@user.email).to eq("john@doe.com")
    end
    end
  end

describe 'class Request'do
  before do
    @request = Request.create(item: "freezer boxes")
  end

  describe "attributes" do
    it 'has an item' do
      expect(@request.item).to eq("freezer boxes")
    end
  end

  end
