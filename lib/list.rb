require_relative '../lib/task'

class List

  def print_options
    loop do

      puts " ID ---------- Task ---------- Completed"

      Task.all.each do |n|
      row = "%2s" % "#{n.id}" + "          #{n.task}" + "%20s" % "#{n.complete}"
      puts row
      end

      print "Pick 1) Add To Do 2) Mark To Do Complete 3) Edit or Delete ToDo (q)uit > "
      option = gets.chomp

      if option.downcase == 'q'
        exit
      end

      case option.to_i
      when 1
        add_todo
      when 2
        mark_complete
      when 3
        edit_or_delete_todo
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

  def mark_complete
    print "Which ToDo would you like to mark complete > "
    todo = gets.chomp.to_i

    Task.find(todo).update_attribute(:complete, true)
  end

  def edit_or_delete_todo
    print "(E)dit or (D)elete ToDo > "
    edit_or_delete = gets.chomp.downcase

    case edit_or_delete

    when 'e'
      print "Which ToDo would you like to edit > "
      todo = gets.chomp.to_i

      print "Enter new task > "
      Task.find(todo).update_attribute(:task, gets.chomp)
    when 'd'
      print "Which ToDo would you like to delete > "
      todo = gets.chomp.to_i

      Task.destroy(todo)
    else
      puts "Invalid input."
    end
  end

end
