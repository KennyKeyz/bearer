class CreateAdminUser < ActiveRecord::Migration[5.1]
  def change
    
  end

   User.create! do |u|
      u.email     = 'adminuser@email.com'
      u.password    = 'pass1234'
  end
 
end
