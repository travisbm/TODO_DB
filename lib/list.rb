require_relative '../lib/task'

class List

  def print_options
    loop do

      print "Pick 1) Add To Do 2) Mark To Do Complete 3) Edit or Delete ToDo (q)uit > "
      option = gets.chomp

      if option.downcase == 'q'
        exit
      end

      case option.to_i
      when 1
        add_todo
      # when 2
      #   mark_complete
      # when 3
      #   edit_or_delete_todo
      else
        puts "Invalid option."
      end
    end

  end

  def add_todo
    print "Type ToDo > "
    todo = gets.chomp

    Task.create(:task => todo)
  end

end
