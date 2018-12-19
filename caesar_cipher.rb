class CaesarCipher
    attr_accessor :input, :number
end

puts "Enter a string to encypt"
  @input = gets.chomp
puts "Enter a number"
  @number = gets.chomp

def caesar_cipher(input, number)
    encrypted = ""
    input.split("").each do |char|
      char.match(/[\s\W]+/) != nil ? "" : number.to_i.times { char = char.next }
      encrypted += char[-1]
    end

    return encrypted
end
puts caesar_cipher(@input, @number)
