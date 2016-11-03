#Task 3: Use OOP to create simple TODO list.
#todo list manager.
#Ask user what he want: 1) add new 'todo' 2) check one of 'todos' as done or cancel it.
#Display all 'todos' after all actions.
class Todo
  attr_reader :task
  def initialize(id, title, status = nil)
    @task = {"id" =>id, "title"=>title, "status" =>status}
  end


  def to_hash
    @task
  end
end

class TodoList
  attr_reader :list
  def initialize
    @list = []
  end

  def update_status(id,status)
    list.each do |val|
      if id == val['id']
        val['status'] = status
      end
    end
  end
  def show
    list.each { |val| puts "task -> id: #{val['id']}  title: #{val['title']} status: #{val['status']}" }
    puts
  end

end

# [{'task':'ddd',''},{}]
tasklist = TodoList.new
while true
puts "ToDo list manager"
puts "Select action:"
puts "[1] add new"
puts "[2] check todo"
puts "[3] to exit"
action = gets.chomp
if action == "1"
    id =0
    while true
    puts "Input task"
    id+=1
    title= gets.chomp
    tasklist.list << Todo.new(id, title).to_hash
    tasklist.show
    puts "Would you like to continue? [y/n]"
    if gets.chomp =="n"
      break
      end
    end
elsif action == "2"
  tasklist.show
  puts "\t [1] done"
  puts "\t [2] canceled"
  action = gets.chomp
  if action =="1"
    puts "Input id of task"
    id = gets.chomp
    puts "\t Task  #{id}: done"

    tasklist.update_status(id.to_i,"done")
    tasklist.show
  elsif action =="2"
    puts "Input id of task"
    id = gets.chomp
    puts "\t Task  #{id}: canceled"
    tasklist.update_status(id.to_i,"canceled")
    tasklist.show
  end
end
  if action == "3"
    break
    exit(0)
  end
end

