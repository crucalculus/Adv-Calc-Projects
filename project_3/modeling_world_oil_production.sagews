︠e5244976-fd2f-4ebd-ab95-73e8ca007cd6i︠
%md
# You will need to plot logistic functions.
︡393ef312-b830-4b03-b86f-7f4d26d71e1e︡{"md":"# You will need to plot logistic functions.\n"}︡
︠0be9ad30-8386-4f0e-a3d5-4642877dda66︠
t = var('t')
def p(t):
    return 4000 / (1+99*e^(-0.194*t)) # the logistic equation from Elk population example in Larson on page 420
plot(p, (t,8,80), title="Elk Population", title_pos=(0.75,0.5), axes_labels=['$t$','$P(t)$'])
︡401e1875-a6b1-482f-bc61-ec67a2e3f18c︡{"once":false,"file":{"show":true,"uuid":"0d3a15e0-c3aa-4fe1-838f-0d040b822b87","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/29866/tmp_n4J5X2.svg"}}︡
︠92b38e96-127c-4d16-9a47-33205ca5d44ai︠
%md
# You will need to plot a bunch of data points
︡d614d9f1-2cfb-488d-be83-99859127858f︡{"md":"# You will need to plot a bunch of data points\n"}︡
︠1ebd5e17-f96e-4472-8860-a94f8076613c︠
# The point command plots a list of points.
# You can control the color and size of the plotted points.
# Let's store a list of points in the variable called points
points = point(((1, 1), (2, 2), (3, 3), (4, 4), (5,5)), rgbcolor=hue(1), size=30)
# Then use the show command to graph them. Notice how I have used xmin xmax ymin ymax here to control the graph
show(points,xmin=-2,xmax=6,ymin=-1,ymax=6)
︡2fc7047a-f437-4192-92e3-6fd80a79310a︡{"once":false,"file":{"show":true,"uuid":"70d8270d-10da-44f8-89bf-328953137876","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/29866/tmp_I1kJCh.svg"}}︡
︠2c161ddb-7955-4923-91f0-2a48ab066e80︠
# Then, if I wanted to plot some lines or curves on the same graph as the points,
# I can set up the equation of the line or curve:
fitted_line = 0.5*x+1
# then use the plot command + points to show both on the same graph
plot(fitted_line, xmin=-2,xmax=6,ymin=-1,ymax=6) + points
︡acf75885-3b94-4120-9ea1-42a6997939f5︡{"once":false,"file":{"show":true,"uuid":"6f1dcf4d-d466-4aef-b3e1-ba46fb30f506","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/29866/tmp_rqoWow.svg"}}︡
︠ea70dc7a-0363-4847-bddd-a10aae96d0f2i︠
%md
# You may also want to plot the slope field for the differential equation whose solution is a logistic function.
︡9346ec73-937b-401a-9619-d5051ce3dd0a︡{"md":"# You may also want to plot the slope field for the differential equation whose solution is a logistic function.\n"}︡
︠b1da6f72-2165-4794-86a9-8bc882308c03︠
t = var('t')
def dp_dt(t,p): # plot_slope_field passes both t and p to this func, although dp_dt only depends on p
    return 0.194*p*(1-(p/4000))
plot_slope_field( dp_dt, (t,0,80), (p,0,5000), title="Slope Field for Elk Population", axes_labels=['$t$','$P$'])
 
︡32c1fc18-856d-4520-9313-ef7510369959︡{"once":false,"file":{"show":true,"uuid":"a553f927-b2d9-4fe7-9298-3486b2b92cac","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/29866/tmp_LJx9ei.svg"}}︡
︠db593e4e-1533-4082-b4c7-9be404e570b3i︠
%md
# You may want to put the specific solution curve on top of the slope field
︡1385d646-8f43-45e2-b124-379f3a323b29︡{"md":"# You may want to put the specific solution curve on top of the slope field\n"}︡
︠ea26bb28-cfb2-4d47-8c89-b1dc98eb6492︠
combined_plot = plot_slope_field( dp_dt, (t,0,80), (p,0,5000)) + plot(p, (t,8,80), color='red', thickness=3, title="Slope Field and Solution Curve", axes_labels=['$t$','$P$']) # notice that we can *add* two plots together just like you'd expect!
show(combined_plot)
︡bff8be1d-68e5-4333-a338-bf808f0a9af5︡{"once":false,"file":{"show":true,"uuid":"8ff7752d-967b-4143-b2f5-25a1f5006654","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/29866/tmp_qNRbDV.svg"}}︡
︠f5191504-e185-4960-b0a2-70c02abf0d43i︠
%md
# You may want to let SCM solve the differential equation for you!









