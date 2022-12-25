require 'rails_helper'
require 'spec_helper'

RSpec.describe Service, type: :model do

  before(:each) do
    @user = User.new(
      id: 1,
      email: "adri@gmail.com",
      password: "123456",
      name: "Adrianderson",
      admin: false
    )

    @status = Status.new(
      id: 1,
      description: "",
    )

    @service = Service.new(
      user_id: @user,
      description: nil,
      status_id: @status
    )
  end
  context "Validade de um service" do
    it "Service válido?" do
      expect(Service.new).not_to be_valid
    end
  end
end
