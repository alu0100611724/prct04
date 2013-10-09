#! /usr/bin/env ruby

def sum_matrices(a , b)
	c = Array.new(a.length, Array.new(a[0].length, 0))
	for fi in (0...a.length) do
		for co in (0...a[0].length) do
			c[fi][co] = a[fi][co] + b[fi][co]
		end
	end
	c
end

def mul_matrices(a, b)
  tam = a.length
  c = Array.new(tam, Array.new(tam, 0))
  for i in 0...tam do
    for j in 0...tam do
        for k in 0...tam do
         c[i][j] += a[i][k]*b[k][j]
        end
    end
  end
  c
end

