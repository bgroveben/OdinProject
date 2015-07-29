require "string_calculator"

describe StringCalculator do

  describe ".add" do
    context "given an empty string" do  # context is technically the same as describe, but is used in different places.
      it "returns zero" do  # The it block describes a specific example.
        expect(StringCalculator.add("")).to eql(0)  # eql is a basic equality matcher; RSpec has many more.
        # By convention, class methods are prefixed with a '.'(.add) and instance methods are prefixed with a '#'(#add).
      end
    end
  end

  describe ".add" do
    context "given '4'" do
      it "returns 4" do
        expect(StringCalculator.add("4")).to eql(4)
      end
    end

    context "given '10'" do
      it "returns 10" do
        expect(StringCalculator.add("10")).to eql(10)
      end
    end
  end

  describe ".add" do
    context "two numbers" do
      context "given '2,4'" do
        it "returns 6" do
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end

      context "given '17,100'" do
        it "returns 117" do
          expect(StringCalculator.add("17,100")).to eql(117)
        end
      end
    end
  end


end