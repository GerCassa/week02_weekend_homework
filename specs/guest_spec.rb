require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../guest")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Ozzy", 50, "Planet Caravan")
  end

  def test_guest_has_name
    assert_equal("Ozzy", @guest.name)
  end

  def test_guest_wallet
    assert_equal(50, @guest.wallet)
  end

end
