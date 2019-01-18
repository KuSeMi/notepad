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

  def to_db_hash
    return super.merge(
                    {
                        'text' => @text,
                        'due_date'=> @due_data.to_s
                    }
    )
  end

  def load_data(data_hash)
    super # сперва дергаем родительский метод для общих полей

    # теперь прописываем свое специфичное поле
    @due_date = Date.parse(data_hash['due_date'])
  end
end
