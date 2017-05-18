class AddRoleToUser < ActiveRecord::Migration[5.0]

  def change

    # ActiveRecord::Base.connection.execute(
        # <<-SQL
          # SET foreign_key_checks = 0;
        # SQL
      # )

    add_reference :users, :role, foreign_key: true

    # ActiveRecord::Base.connection.execute( 
        # <<-SQL
          # SET foreign_key_checks = 1;
        # SQL
      # )

  end
  
end


