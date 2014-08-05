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
︡570683a6-9672-4d93-971f-3d7cf28e4657︡{"once":false,"file":{"show":true,"uuid":"92407274-96e0-4a79-8baa-1766fe87325c","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/25699/tmp_A5D7Sr.svg"}}︡
︠74291876-93ec-4495-8e48-c33e722c9515i︠
%md
## Adding a point to a plot is easy.
## You can even specify the point size.
︡ef5dc647-e76a-47c2-9ea1-ee8285e3272c︡{"md":"## Adding a point to a plot is easy.\n## You can even specify the point size.\n"}︡
︠56f2e437-4758-4f4f-8c86-6c7f48e5590a︠

plot(f)+point((0.25,f(0.25)) , pointsize=50)
︡6d5fdbc8-6cbc-4ee7-a320-e2e25a71acfe︡{"once":false,"file":{"show":true,"uuid":"33473a7d-a3f2-44f0-bd5f-6193be1d48be","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/25699/tmp_cbxTHh.svg"}}︡
︠eb40de70-5fd0-4759-907d-061fd58dcc17︠
%md
## The red line is the incoming light ray
## The parabola is plotting with a tangent line at the point of incidence
︠b5e99ba7-2823-4436-9ce9-a1e64b382ca9︠
t(x) = derivative(f,x)
plot(f) + line([ (0.25,f(0.25)) , (0.25,1) ],color='red') + plot(f(0.25)+t(0.25)*(x-0.25)) + point((0.25,f(0.25)) , pointsize=50) + text("$(x_0,y_0)$",(0.25,-0.1))
︡c562eee0-3e3f-407f-a735-7463eb329e60︡{"once":false,"file":{"show":true,"uuid":"d1e6ad87-1956-48cc-a5c7-f062168f56b0","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/25699/tmp_PAE7Gb.svg"}}︡
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
︡021e7d40-f98d-44a0-9f3b-50840c939209︡
︠5739beb9-29b3-424d-8572-549578a8303c︠
compute_angle_of_reflection(0.5)
︡d244f25a-05d6-4f30-ad3b-dcff89063de3︡{"stdout":"0.00\n"}︡
︠2fba75c3-d6bf-4c86-b194-44a74c586b77︠
# we know the slope of the tangent line, and we can use it to find the angle formed with the x-axis
# by default, trig functions use radians -- not degrees
slope_of_tan_line = arctan(t(0.25))
# we want the complementary angle, so take pi/2 - arctan(t(0.25))
angle_of_incidence = pi/2 - slope_of_tan_line
desired_angle = angle_of_incidence - slope_of_tan_line
N(tan(-desired_angle),10)
︡d40ec9c6-8141-432a-9ba5-bb632ee6e98f︡{"stdout":"-0.75\n"}︡
︠2370d857-228b-44e2-a95b-4286313ef878︠
a2 = arctan(t(0.5))
angle_of_incidence_2 = pi/2 - a2
desired_angle_2 = angle_of_incidence_2 - a2
N(tan(-desired_angle_2),4)
︡f630187d-57f9-4111-8a03-14e1f5838bfb︡{"stdout":"0.00\n"}︡
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
︡25d40ba0-ffa0-4625-ad2e-e556515490de︡{"once":false,"file":{"show":true,"uuid":"c83d1c64-34e7-4d68-8f08-4f4027005eda","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/25699/tmp_zZwaJX.svg"}}︡
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

︡f7ca92c1-167a-4f8d-82ef-2ac1aab465e4︡{"once":false,"file":{"show":true,"uuid":"fdbb7b29-83bb-4bf3-8428-7466ac86ab97","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/25699/tmp_4_0P4e.svg"}}︡
︠9ce36d0b-8b46-4e25-87b4-4d7dea32e087︠
plot(f) + line([ (0.25,f(0.25)) , (0.25,1) ],color='red') + plot(f(0.25)+t(0.25)*(x-0.25)) + point((0.25,f(0.25)) , pointsize=50) + text("$(x_0,y_0)$",(0.25,-0.1)) + plot(f(0.25)+(-0.75)*(x-0.25),xmax=0.25,color='red') + plot(f(0.5)+t(0.5)*(x-0.5)) + line([ (0.5,f(0.5)) , (0.5,1) ],color='red') + plot(f(0.5)+(0)*(x-0.5),xmax=0.5,color='red')
︡4a9fecbf-f558-465b-a26c-63dd46bdd0ef︡{"once":false,"file":{"show":true,"uuid":"235c137f-c4d3-4e2b-a2a2-830e9761afaa","filename":"/projects/d7170424-49a2-4f24-b09f-3d25efb62998/.sage/temp/compute8dc2/25699/tmp_2kMihH.svg"}}︡
︠27e8ea98-d176-4abd-893a-000c1715fea7︠









