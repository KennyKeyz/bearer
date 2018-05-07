class TestUser < ActiveRecord::Migration[5.1]
  def change
  end

  User.create! do |u|
      u.email     = 'test@test.com'
      u.password    = 'password'
  end
end
