

describe 'User' do

  describe "attributes" do
    it 'has a name, password and email' do
      user = User.new("John", "john@doe.com", "johnd")
      expect(user.name).to eq("John")
      expect(user.email).to eq("john@doe.com")
    end
    end
  end
