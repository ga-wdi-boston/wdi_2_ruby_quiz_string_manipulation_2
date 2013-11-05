# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb
describe "question 1: a function called sleep_in?" do

  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to be(false)
  end

  it "takes an options hash as a parameter" do
    parameters = method(:sleep_in?).parameters.first
    expect(parameters).to include(:options)
  end

  it "returns true if vacation is true" do
    question_1 = sleep_in?(vacation: true)
    expect(question_1).to be(true)
  end
end

# Write the next tests yourself!
# See quiz.rb for more details

# Question 2: a function called del_del
  # Example Usage:
  # del_del("abdelcd") => "abcd"
  # del_del("xyz") => "xyz"

describe "del_del" do
  it "returns an altered string when it contains del" do
    expect(del_del("abdelcd")).to eq("abcd")
  end

  it "returns an unaltered string when it has no del" do
    expect(del_del("xyz")).to eq("xyz")
  end
end

# Question 3: a function called missingChar
  # Example Usage:
  # missing_char("kittie", 1) => "kttie"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-error
describe "missing_char" do
  it "returns kttie when passed kittie, 1" do
    expect(missing_char("kittie", 1)).to eq "kttie"
  end

  it "returns error when passed integer instead of string" do
    expect{missing_char(1, 1)}.to raise_error
  end
end


# Question 4: a function called nearHundred
  # Example Usage:
  # 93.near_hundred? => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
describe "near_hundred" do
  it "returns true when number between 90-99" do
    expect(near_hundred(92)).to eq(true)
  end

  it "returns false when number not between 90-99" do
    expect(near_hundred(78)).to eq(false)
  end

  it "throws an error if we pass it a string" do
    expect{near_hundred("5")}.to raise_error
  end
end


# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"
# this is a function

describe "near_hundred" do
  it "returns tca when given cat" do
    expect(back_around("cat")).to eq("tca")
  end

  it "returns ohell when given hello" do
    expect(back_around("hello")).to eq("ohell")
  end

end