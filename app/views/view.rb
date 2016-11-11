class View
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # Los siguientes métodos son sólo un ejemplo:
  def welcome
    puts
    puts "--------------------------"
    puts "--------------------------"
    puts "Bienvenidos a vuelos Codea"
    puts "--------------------------"
    puts "--------------------------"
    puts "1) Reservaciones"
    puts "2) Administrator"
    puts "3) Salir" 
    puts
    puts "Seleccione su opcion aqui"
    gets.chomp
  end
	
  def book
    puts "BUSCANDO TU VUELO"
    puts "1) Encuentra tu boleto de avión"
    puts "2) salir"
    puts
    puts "Selecciona tu opción aqui"
    gets.chomp
  end

  # def index(flights)
  #   # flights = 0
  #   # flights.each do |flight|
  #   #   p flight
  #   #   flight +=1
  #   puts flights
    

  #   #end
  # end

  def find_your_flight(flight)
    flight_charact = []
    puts "--------------------------"
    puts "!!!Encuentra tu vuelo!!!"
    puts "--------------------------"
    puts
    puts "From"
    flight_charact << gets.chomp
    puts "to"
    flight_charact << gets.chomp
    puts "date"
    flight_charact << gets.chomp
    puts "Cuantas reservaciones deseas realizar"
    flight_charact << gets.chomp
    flight_charact
  end

  def confirm_find(info)
    puts "Deseas encontrar una reservacion:"
    puts "de: #{info[0]} a: #{info[1]} en la fecha: #{info[2]} para: #{info[3]} persona(s)" 
    puts "Si es correcto presiona 1 de lo contrario 2"
    gets.chomp
  end
  

  def show_list(info, flights)
    puts "*" * 30
    puts "Vuelos disponibles:"
    puts "*" * 30
    puts
    puts "From: #{info[0]}  To: #{info[1]}"
    puts "-" * 46
    i = 0
    flights.each do |flight|
      i += 1
      puts "#{i}) Número de vuelo #{flight.num_flight}"
      puts "Date: #{info[2]}, Depart: #{info[3]}, UTF From: #{info[1]} "
      puts "To: #{flight.to}, Duration: #{flight.duration}, Price: #{flight.cost}, Lugares: #{flight.passengers}"
      puts "-" * 46
    end
    
    puts "Introduce el número del vuelo que deseas reservar"
    reservation_num = gets.chomp
    puts "-" * 46
    puts "Tu opcion es el vuelo numero #{reservation_num}"
     #puts "flights[reservation_num.to_i - 1]"
  end


  def booking_confirmation(flight)
    puts "-" * 46
    puts "Tu seleccionaste el vuelo #{flight.num_flight}:"
    puts "con destino a: #{flight.to}, partiendo de: #{flight.from}"
    puts "con una duración de #{flight.duration}horas"
    puts "precio: #{flight.cost}"
    puts "-" * 46
    puts "Vuelve a introducir el número de reservaciones"
    total_reserv = gets.chomp.to_i
    puts "Si estas estas seguro del total de las reservaciones presiona 1 y 2 para salir"
    confirm_total = gets.chomp
    passengers = [flight.id, flight.cost]
    puts "Ingresa los datos de tus pasajeros"
    total_reserv.times do |i|
      each_passenger = []
      puts "Pasajero #{i +1} Nombre completo (como aparece en tu pasaporte)"
      each_passenger << nombre_p = gets.chomp.to_s
      puts "correo electronico"
      each_passenger << email_p = gets.chomp.to_s
      passengers << each_passenger 
  end
    puts "-" * 50
    passengers[2..-1].each do |passenger|
      passenger.each do |passenger|
        print "#{passenger}\t" 
      end
      puts
    end
    puts "Son los datos de tus pasajeros correctos y deseas confirmar la reservacion"
    puts " (presiona 1)"
    yes = gets.chomp.to_s
    informationbooking = []
    passengers
  end
  
  def ticket(booking)
     puts "*" * 46
     puts "Reservacion correcta"
     puts "*" * 46
     puts "El costo total es de #{booking.total}"
     puts "Y tu ID de la reservacion es la siguiente #{booking.flight_id}-ALEMEXRS"
  end

  def login
    puts "Bienvenido Administrador"
    puts "-" * 46
    puts "Ingrese email"
    email = gets.chomp
    puts "Ingrese contraseña"
    password = gets.chomp
    return email, password
  end

  def menu_adm
    puts "Bienvenido Administrador"
    puts "-" * 60
    puts "1) Muestra todos los vuelos"
    puts "2) Muestra todas las reservaciones"
    puts "3) Crea un nuevo vuelo"
    puts "4) Salir"
    gets.chomp
  end

  def show_all_f(flights)
    flights.each do |flight|
      puts "-" * 46
      puts "Flight número: #{flight.id}" 
      puts "Número de vuelo#{flight.num_flight} from: #{flight.from} con destino a: #{flight.to}"
      puts "Fecha: #{flight.date} Terminal #{flight.depart} Duración #{flight.duration}"
      puts "Precio #{flight.cost}"
      puts "-" * 46
    end
  end
  
  def show_all_r(bookings)
    bookings.each do |book|
      puts "-" * 60
      puts "Reservacion número #{book.id}"
      puts "total de vuelos reservados #{book.num_of_person}"
      puts "Total pagado $#{book.total}.00 pesos"
      puts "-" * 60
    end
  end
  
  def create_f
    new_flight = []
    puts "Introduce el numero de vuelo"
    new_flight << flight_num = gets.chomp
    puts "Introduce la fecha del vuelo"
    new_flight << date = gets.chomp
    puts "Introduce la terminal"
    new_flight << depart = gets.chomp
    puts "Saliendo de:"
    new_flight << from = gets.chomp
    puts "con destino a:"
    new_flight << to = gets.chomp
    puts "con duración de (horas)"
    new_flight << duration = gets.chomp
    puts "Introduce el precio unitario del boleto"
    new_flight << cost = gets.chomp
    
  end
    
  def show_flight_created(new_flight)
   puts "-" * 60
   puts "Tu creaste el Vuelo:"
   puts "Numero #{new_flight.num_flight}"
   puts "Con destino a: #{new_flight.to} saliendo de: #{new_flight.from} Terminal: #{new_flight.depart}"
   puts "Con una duración aproximada #{new_flight.duration} horas"
   puts "Precio: #{new_flight.cost}"
   puts "-" * 60
  end 
  
  def user_error 
    puts "Su información es inválida"
    puts "Intentelo nuevamente"
  end
    

	def exit
    puts "Gracias por su visita"
	end

  def error
    puts "Introdujo una opción invalida"
  end

  def ticket_not_found
    puts "*" * 60
    puts "Lo sentimos!"
    puts "No encotramos ningún vuelo con los datos solicitados"
    puts "*" * 60
  end
  
end
