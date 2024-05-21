require 'rails_helper'

RSpec.describe Task, type: :model do
  subject(:task) { build :task }

  describe 'Validation' do
    it { should validate_presence_of(:title) }
    
  end
end
