using Gadfly

xlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ylist = [1, 2, 3, 2, 1, 0, 1, 2, 3, 5]
colo = [1, 2, 1, 2, 1, 2, 1, 2, 1, 2]

p = plot(x=xlist, y=ylist, color=colo)

img = SVG("test.svg", 6inch, 4inch)
draw(img, p)
