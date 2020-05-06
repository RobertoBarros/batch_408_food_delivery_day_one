class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      choose = options
      case choose
      when 1 then @meals_controller.add
      when 2 then @meals_controller.list
      when 3 then @customers_controller.add
      when 4 then @customers_controller.list
      end
    end
  end

  private

  def options
    puts '-' * 100
    puts '--- MEALS OPTIONS'
    puts '-' * 100
    puts '1. Add Meal'
    puts '2. List All Meals'
    puts '--- CUSTOMERS OPTIONS'
    puts '-' * 100
    puts '3. Add Customer'
    puts '4. List All Customers'
    puts '-' * 100
    puts 'Enter your option:'
    gets.chomp.to_i
  end
end
