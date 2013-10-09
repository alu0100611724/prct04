#! /usr/bin/env ruby

require './fichero.rb'
require './matriz.rb'

def mostrarMatriz a
  for i in 0...a.length do
    puts "#{a[i]}"
  end
end

a, b = leerMatrices

resultado = Array.new

puts "El resultado de la suma es \n"
resultado = sum_matrices(a, b)
mostrarMatriz resultado

puts "El resultado de la multiplicación es \n"
resultado = mul_matrices(a, b)
mostrarMatriz resultado

