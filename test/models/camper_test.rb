require 'test_helper'

class CamperTest < ActiveSupport::TestCase
  def setup
    @camper = Camper.new(name: "Example Camper")
  end

  test "should be valid" do
    assert @camper.valid?
  end
  
  test "name should be present" do
    @camper.name = "     "
    assert_not @camper.valid?
  end
  
  test "name should not be too long" do
    @camper.name = "a" * 101
    assert_not @camper.valid?
  end
  
  test "names should be unique" do
    duplicate_user = @camper.dup
    duplicate_user.name = @camper.name.upcase
    @camper.save
    assert_not duplicate_user.valid?
  end
  
end
