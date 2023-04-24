def dog(name)
  "The dog's name is #{name}."
end

def cat(name)
  "The cat's name is #{name}."
end

puts dog("Spot")
puts cat("Ginger")

# OR LS solution

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."
