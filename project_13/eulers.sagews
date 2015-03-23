︠c84709a9-693d-4416-92ae-85af3c0958e9is︠
%md
# Basic Euler's Method
︡5b58134f-12cc-4de8-85f7-13f37f95339b︡{"md":"# Basic Euler's Method\n"}︡
︠769096df-666c-4863-a272-a7e65e4da36d︠
# setup variables
x,y = var('x y')

# a container for our graph
graph = Graphics()

# the differential equations with initial conditions
de_e(x,y)   = y           # y = e^x initial: (0,1)
de_pi(x,y)  = 4/(1+x^2)   # y = 4arctan(x)  initial: (0,0)
de_ln2(x,y) = 1/x         # y = ln(x)  initial: (1,0)

# choose whichever equation you want to solve
de = de_e

# initial conditions
x_0 = 0
y_0 = 1

# the x-value we use for our approximation
x_final = 1

# the number of steps we should take
steps = 10

# compute the step size value
h = (x_final - x_0)/steps

# store the points in a list, starting with the initial conditions
# as the first point in the list
solution_pts = [(x_0,y_0)]

# as long as x_0 is less than x_final, do these calculations
while( x_0 < x_final ):
    # compute the new y-value
    y_0 = y_0 + de(x_0,y_0)*h
    # compute the new x-value
    x_0 += h
    # add the approximated point to the list
    solution_pts.append((N(x_0,digits=10),N(y_0,digits=10)))

# make a list plot connected by straight lines to show the approximation
graph += list_plot(solution_pts,plotjoined=True,color='red',legend_label='%s'%steps)

# print the last value, number of steps, and the absolute value of the error
print solution_pts[-1], steps, abs(N(solution_pts[-1][1]-e,digits=10) )

# add the exact value to the plot
graph += plot(e,(x,0,1),title="Approximating $e$")

# add the slope field to the plot
graph += plot_slope_field(y, (x,0,1), (y,0,3))

# add a label
graph += text("The true value of $e$, as a horizontal line.",(0.5,2.6))

# set up a nice window to show what's going on
graph.set_axes_range(0,1,0,3)
graph.set_aspect_ratio(0.27)
graph.legend(True)

show(graph)
︡0a8323fd-b070-4c54-8d9a-86fcd652340d︡{"stdout":"(1.000000000, 2.593742460) 10 0.1245393683\n"}︡{"once":false,"file":{"show":true,"uuid":"0d0de81f-34c0-447a-b230-9f1c08105b22","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/4363/tmp_JSOYlU.svg"}}︡{"html":"<div align='center'></div>"}︡
︠0477e215-b7e9-435a-9623-9c89c1bd5001︠









