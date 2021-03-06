#! /usr/bin/env ruby

def mapmap(a)
  a.map { |r| 
    r.map { |e| 
      yield e
    }
  }
end 

def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/) }
  a = mapmap(a) { |x| x.to_f }
end

def leerMatrices
  text = File.open('datos.dat').read

  a, b = text.split(/\n\n+/)
  a = to_m(a)
  b = to_m(b)

  [a, b]
end
