require 'rails_helper'

RSpec.describe Submission, type: :model do
  it { should validate_presence_of(:word) }

  it 'should fail to submit new word' do
    new_word = Submission.new(word: "New Word").save
    expect(new_word) == false
  end
end
