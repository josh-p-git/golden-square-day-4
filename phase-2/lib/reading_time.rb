=begin

# The name of the method.
- reading_time(string).

# What parameters it takes, their names and data types.
- 1 parameter called 'string' which is a String

# What it returns and the data type of that value.
- returns a string with tells the user an estimate of how long it would take to read the text with a reading time of 200 wpm.

# Any other side effects it might have.
- consider type conversion.

# Example tests
- if we passed a string containing 200 words, we would expect it to return '1 minute'
- if we passed an empty string, it should return '0 minutes'
- if we passed 100 words we would epect '0.5 minutes'
- if we passed anything that was not a string we should expect an error

=end

def reading_time(string)
  time_for_word = 60 / 200
  time_to_read = time_for_word * string.split.length / 60
  return `#{time_to_read} minutes`
end

string1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis magna eros, elementum dictum lorem ac, consequat mattis eros. Donec et scelerisque quam. Nunc dignissim maximus ex, interdum lacinia nisl luctus nec. Aliquam lorem nisl, scelerisque nec eros venenatis, mollis viverra felis. Sed sollicitudin et turpis a fermentum. Nulla pulvinar iaculis quam ut viverra. Aenean et arcu iaculis, vehicula urna a, sollicitudin odio. Vivamus tempor massa non orci commodo, sit amet tincidunt tellus posuere. Aenean risus urna, tristique et nunc et, blandit convallis lectus. Morbi quis enim velit. Etiam ut purus in nulla laoreet viverra. Morbi sit amet nisi vitae lorem vehicula feugiat. Donec id urna ac eros accumsan sodales at nec enim. Duis sagittis rutrum nulla, vitae lobortis lectus malesuada a. Vestibulum aliquet elit id massa fermentum tincidunt. In varius sed massa tempus ultrices. "

puts reading_time(string1)