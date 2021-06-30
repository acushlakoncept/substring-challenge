require 'rails_helper'

RSpec.describe Submission, type: :model do
  it { should validate_presence_of(:word) }
end
