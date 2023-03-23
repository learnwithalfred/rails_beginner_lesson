require 'rails_helper'

RSpec.describe Course, type: :model do
   it { should validate_presence_of(:description) }
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3) }
    it {should belong_to(:category)}
    it {should belong_to(:language)}
    it { should have_many(:sections) }
    it {should have_many(:lectures).through(:sections)}  
end
