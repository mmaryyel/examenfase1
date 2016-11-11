class CreateFlights < ActiveRecord::Migration
  
  def change
    create_table :flights do |t|
      # Completa con las columnas que necesites
      t.string :num_flight
      t.datetime :date
      t.string :depart
      t.string :from
      t.string :to
      t.string :duration
      t.float :cost, default: 0
      t.integer :passengers, default: 40

      t.timestamps
    end
    
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      #
      t.boolean :admin, default: false

      t.timestamps
    end
    #crea las tablas restantes
  
    create_table :bookings  do |t|
      t.integer :flight_id
      #t.string :num_booking
      t.integer :num_of_person
      t.integer :total, default: 0
      t.timestamps
    end

    create_table :user_flights do |t|
    t.integer :flight_id
    t.integer :user_id
    t.timestamps
    end
    
    create_table :user_bookings do |t|
      t.string :booking_id
      t.string :user_id
      t.timestamps 
    end
    

  end
end

