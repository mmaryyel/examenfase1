
class Controller 
  

  def initialize(args)
    @view = View.new
    welcome(args)
  end

  def welcome(option)
    user_option = @view.welcome
      case user_option
      when "1"
        select = @view.book
        booking(select)
      when "2"
        login = @view.login
        user = User.find_by(email: login[0])
        if user
          if login[1] == user.password
            option_adm = @view.menu_adm
            case option_adm
            when "1" then show_all_flights
            when "2" then show_all_reservations
            when "3" then create_flight
            else return exit
            end
          else
            @view.user_error
          end
        else
          @view.user_error
        end
      else
        @view.exit
      end
    end

  def show_all_flights
    flights = Flight.all
    @view.show_all_f(flights)
  end

  def show_all_reservations
    booking = Booking.all
    @view.show_all_r(booking)
  end

  def create_flight
    info = @view.create_f
    new_flight = Flight.create(num_flight: info[0], date: info[1], depart: info[2], from: info[3], to: info[4], duration: info[5], cost: info[6])
    @view.show_flight_created(new_flight)
  end

  def exit
    @view.exit
  end

  def booking(select)
    case select 
    when "1"
      info = @view.find_your_flight(select)
      option1 = @view.confirm_find(info)
      if option1 == "1"
        flights = Flight.where(from: info[0], to: info[1])
        if flights.empty?
          @view.ticket_not_found
        else
          reservation_confirm = @view.show_list(info, flights)
          flight_select = flights[reservation_confirm.to_i - 1] 
          result = @view.booking_confirmation(flight_select)
          result
          confirm_find(reservation_confirm)
          total1 = result.length
          total_price = result[1] * total1
          booking = Booking.create(flight_id: result[0], num_of_person: total1, total: total_price)
          @view.ticket(booking)
        
        end
      else
        @view.error
      end 
    when "2"
      @view.exit
    end
  end 

  def confirm_find(reserv_num)
    case reserv_num
    when "1"
    end
  end

end
