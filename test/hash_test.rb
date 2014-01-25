require 'minitest/autorun'
require 'dayz'

describe "Check if day of the week converts to first 2 letters of abbreviation" do
  it "ensures the weekday is correct and only outputting 2 letters" do
    daze = DayOfWeek.new
    daze.datez(1990, 8, 14).must_equal "Tu"
  end
end
