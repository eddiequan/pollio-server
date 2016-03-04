require 'rails_helper'

RSpec.describe Poll do
  it "has a title" do
    poll = Poll.new(title: nil)
    p poll.class

    expect do
      poll.save
    end.to_not change{ Poll.count }
  end
end