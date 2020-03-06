require 'rails_helper'

RSpec.describe User, type: :model do
  it '登録可能' do
    user = User.new(email: 'test@test.test', password: 'test01', password_confirmation: 'test01')
    expect(user).to be_valid
  end

  it 'emalが存在しないので保存されない' do
    user = User.new(password: 'test01', password_confirmation: 'test01')
    expect(user).not_to be_valid
  end
end
