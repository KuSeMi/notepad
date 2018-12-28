# Подключим встроенный в руби класс Date для работы с датами
require 'date'

class Task < Post
  def initialize
    super

    @due_data = Time.now
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 13.05.2013"
    input = STDIN.gets.chomp

    @due_data = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M,%S")} \n\r \n\r"

    deadline = "Крайний строк: #{@due_data}"

    return [deadline, @text, time_string]
  end
end
