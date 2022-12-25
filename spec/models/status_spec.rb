require 'rails_helper'

RSpec.describe Status, type: :model do
  context "Validade de um status" do
    before(:each) do
      @status = Status.new
    end

    it "Status válido?" do
      @status.description = "Design"

      expect(@status.valid?).to be_truthy
    end

    it "É invalido sem o campo description" do 
      @status.description = nil
      @status.valid?

      expect(@status.errors[:description]).to include("can't be blank") 
     end
  end
end
