︠80105d7a-3834-440b-8a84-ac9ff97108b6i︠
%md
# Astronomer's Use Parabolic Mirrors
## You won't need a lot of stuff from SCM on this project.
## The graphs you need to generate a pretty easy and just show a parabola
## with some points marked.
︡3eea9290-c76d-4ff7-8046-26d09cbd744c︡{"md":"# Astronomer's Use Parabolic Mirrors\n## You won't need a lot of stuff from SCM on this project.\n## The graphs you need to generate a pretty easy and just show a parabola\n## with some points marked.\n"}︡
︠7a9158f0-8961-43db-a778-7febaff4eab3i︠
%md
## Let's graph a parabola and show how to mark points on the parabola.
︡eaa6adc7-9fdc-4f95-a75d-aae1b4e6ddfd︡{"md":"## Let's graph a parabola and show how to mark points on the parabola.\n"}︡
︠d83f67fa-12f6-4d41-951d-214227e20a30︠
x = var('x')
f(x) = x^2
plot(f)+text("Parabola",(0.5,0.8)) # you can place any text anywhere on the graph by specifying the text and the coordinates.
︡6127c170-2a0a-435f-92f2-0ca9e726e96e︡{"once":false,"file":{"show":true,"uuid":"b3a1b754-6a83-495a-a3a5-9535006a3ac9","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/8071/tmp_j0WFay.svg"}}︡
︠74291876-93ec-4495-8e48-c33e722c9515i︠
%md
## Adding a point to a plot is easy.
## You can even specify the point size.
︡ef5dc647-e76a-47c2-9ea1-ee8285e3272c︡{"md":"## Adding a point to a plot is easy.\n## You can even specify the point size.\n"}︡
︠56f2e437-4758-4f4f-8c86-6c7f48e5590a︠

plot(f)+point((0.25,f(0.25)) , pointsize=50)
︡86df643f-443f-45d3-b5e7-d262304dac23︡{"once":false,"file":{"show":true,"uuid":"d7343a4d-baa7-47eb-8a02-214f054892e2","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/8071/tmp_7mlX4I.svg"}}︡
︠eb40de70-5fd0-4759-907d-061fd58dcc17︠
%md
## The red line is the incoming light ray
## The parabola is plotting with a tangent line at the point of incidence
︠b5e99ba7-2823-4436-9ce9-a1e64b382ca9︠
t(x) = derivative(f,x)
plot(f) + line([ (0.25,f(0.25)) , (0.25,1) ],color='red') + plot(f(0.25)+t(0.25)*(x-0.25)) + point((0.25,f(0.25)) , pointsize=50) + text("$(x_0,y_0)$",(0.25,-0.1))
︡b9951341-6350-418d-a472-1b90f382f170︡{"once":false,"file":{"show":true,"uuid":"73510909-c7c3-48b7-a276-fb76311c9513","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/8071/tmp_Nry2tC.svg"}}︡
︠5b87a5e8-0767-4c10-afa2-929600b20beai︠
%md
## We need to figure out how this ray gets reflected.
︡b7f91be6-7ac7-4741-84a8-746b8ce4400f︡{"md":"## We need to figure out how this ray gets reflected.\n"}︡
︠0216568e-a2c3-4060-8fad-1c666fe689cf︠
def compute_slope_of_reflected_ray(x_value):
    angle_of_tan_line = arctan(t(x_value))
    angle_of_incidence = pi/2 - angle_of_tan_line
    angle_of_reflected_ray = angle_of_incidence - angle_of_tan_line
    slope_of_reflected_ray = N(tan(-angle_of_reflected_ray),10)
    return (slope_of_reflected_ray)
︡ae115390-e08d-4661-92b4-1ac56369e13a︡
︠5739beb9-29b3-424d-8572-549578a8303c︠
compute_slope_of_reflected_ray(0.5)
︡8eee0991-5caf-408a-82ff-5ed5b5d2e696︡{"stdout":"0.00\n"}︡
︠2fba75c3-d6bf-4c86-b194-44a74c586b77︠
# we know the slope of the tangent line, and we can use it to find the angle formed with the x-axis
# by default, trig functions use radians -- not degrees
slope_of_tan_line = arctan(t(0.25))
# we want the complementary angle, so take pi/2 - arctan(t(0.25))
angle_of_incidence = pi/2 - slope_of_tan_line
desired_angle = angle_of_incidence - slope_of_tan_line
N(tan(-desired_angle),10)
︡0cb045c7-4aa0-4ec7-8da8-a934b1cebe76︡{"stdout":"-0.75\n"}︡
︠2370d857-228b-44e2-a95b-4286313ef878︠
a2 = arctan(t(0.5))
angle_of_incidence_2 = pi/2 - a2
desired_angle_2 = angle_of_incidence_2 - a2
N(tan(-desired_angle_2),4)
︡7714c828-2c1b-452d-86ca-87bdb027a457︡{"stdout":"0.00\n"}︡
︠7b2539e4-942c-4a04-baa3-a75c0b0e0a26︠
# We carefully build up a plot of the parabola with two reflected rays
parabola = plot(f)
incident_ray_1 = line([ (0.25,f(0.25)) , (0.25,1) ],color='red')
reflected_ray_1 = plot(f(0.25)+compute_slope_of_reflected_ray(0.25)*(x-0.25),color='red',xmax=0.25)
incident_ray_2 = line([ (0.5,f(0.5)) , (0.5,1) ],color='red')
reflected_ray_2 = plot(f(0.5)+compute_slope_of_reflected_ray(0.5)*(x-0.5),color='red',xmax=0.5)
incident_ray_3 = line([ (-0.3,f(-0.3)) , (-0.3,1) ],color='red')
reflected_ray_3 = plot(f(-0.3)+compute_slope_of_reflected_ray(-0.3)*(x--0.3),color='red',xmin=-0.3)
show(parabola + incident_ray_1 + reflected_ray_1 + incident_ray_2 + reflected_ray_2 + incident_ray_3 + reflected_ray_3)
︡923ce2f1-1ff4-4b9b-a758-ed8f80c7517e︡{"once":false,"file":{"show":true,"uuid":"3cc4413b-890e-439c-a04f-6a117615b040","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/8071/tmp_8vIcYW.svg"}}︡
︠7d91c706-09e3-42e4-a1ae-aa69fb05b3ae︠
from numpy import *
list_of_x_values = linspace(-1,1,60)
graph = plot(f)
for i in list_of_x_values:
    incident_ray = line([ (i,f(i)) , (i,1) ],color='black')
    if( i < 0 ):
        reflected_ray = plot(f(i)+compute_slope_of_reflected_ray(i)*(x-i),color='red',xmin=i,xmax=0)
    if( i > 0 ):
        reflected_ray = plot(f(i)+compute_slope_of_reflected_ray(i)*(x-i),color='red',xmin=0,xmax=i)
    graph += incident_ray + reflected_ray
show(graph)
graph.save('parabolic.pdf')

︡7ea0fe20-2be2-49a2-b1df-8953fcef0265︡{"once":false,"file":{"show":true,"uuid":"047ef51f-c412-4bf4-8fa4-f7630bc11fee","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/8071/tmp_bFtL9k.svg"}}︡
︠9ce36d0b-8b46-4e25-87b4-4d7dea32e087︠
plot(f) + line([ (0.25,f(0.25)) , (0.25,1) ],color='red') + plot(f(0.25)+t(0.25)*(x-0.25)) + point((0.25,f(0.25)) , pointsize=50) + text("$(x_0,y_0)$",(0.25,-0.1)) + plot(f(0.25)+(-0.75)*(x-0.25),xmax=0.25,color='red') + plot(f(0.5)+t(0.5)*(x-0.5)) + line([ (0.5,f(0.5)) , (0.5,1) ],color='red') + plot(f(0.5)+(0)*(x-0.5),xmax=0.5,color='red')
︡3b767650-e501-4916-8d23-8a8eb0d93351︡{"once":false,"file":{"show":true,"uuid":"685c8aa8-e5d7-4050-b59c-533ae78a9498","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/8071/tmp_C_uGkr.svg"}}︡
︠27e8ea98-d176-4abd-893a-000c1715fea7︠









