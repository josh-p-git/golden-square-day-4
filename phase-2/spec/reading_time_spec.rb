require "reading_time"

describe "reading_time method" do
  it "returns 0 minutes, given an empty string" do
    expect(reading_time(' ')).to eq '0 minutes'
  end
end