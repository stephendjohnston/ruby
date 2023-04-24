STACK = []

def PUSH(register_value)
  STACK << register_value
  register_value
end

def ADD(register_value)
  register_value += STACK.pop
end

def SUB(register_value)
  register_value -= STACK.pop
end

def MULT(register_value)
  register_value *= STACK.pop
end

def DIV(register_value)
  register_value /= STACK.pop
end

def MOD(register_value)
  register_value %= STACK.pop
end

def pop(register_value)
  register_value = STACK.pop
end

def PRINT(register_value)
  p register_value
end

def OPERATION(command, register_value)
  case 
  when command == 'PUSH'
    PUSH(register_value)
  when command == 'ADD'
    ADD(register_value)
  when command == 'SUB'
    SUB(register_value)
  when command == 'MULT'
    MULT(register_value)
  when command == 'DIV'
    DIV(register_value)
  when command == 'MOD'
    MOD(register_value)
  when command == 'POP'
    pop(register_value)
  when command == 'PRINT'
    PRINT(register_value)
  else
    "put a rescue error??"
  end
end

def number_or_operation(command)
  command.split.map do |element|
    if element.to_i > 0 || element.to_i < 0
      element.to_i
    else
      element
    end
  end
end

def minilang(command)
  register_value = 0
  number_or_operation(command).each do |element|
    if element.is_a?(Integer)
      register_value = element
    else
      register_value = OPERATION(element, register_value)   
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
