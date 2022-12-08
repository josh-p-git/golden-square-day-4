# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

User wants to be able to keep track of their tasks.
User wants a way to add todo tasks
User wants a way to see a list of todo tasks previously added
User wants to be able to mark tasks as complete and remove them

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

class Todolist
    def initialize
    @list = []
    end

    def addtask(task)
    @list << task
    end

    def showlist
    return @list - with index value
    end

    def remove(number)
    @list.pop
    end
end


## 3. Create Examples as Tests

Todolist.new => Creates a new todo list with blank array
Todolist.addtask(task) => adds a task to the @list array
Todolist.showlist => displays the @list

## 4. Implement the Behaviour
