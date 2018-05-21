using Gadfly

function lowlist()
  x = []
  for i in rand(10000)
    if i < 0.50 && length(x) < 1000
      push!(x, i)
    end
  end
  return x
end

p = plot(x=sort(lowlist(), rev=true), y=sort(lowlist()), Geom.line)
img = SVG("test.svg", 6inch, 4inch)
draw(img, p)
