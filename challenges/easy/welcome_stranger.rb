def greetings(array, hsh)
  name = array.join(' ')
  title = hsh[:title]
  occupation = hsh[:occupation]

  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
