︠99e994d7-73d1-4274-a3a7-2ee119a129bfas︠
%auto
︡fff2281e-86e9-450b-ad67-b8691452e224︡{"auto":true}︡
︠d341524e-8c25-42b4-8e88-d74774d6cb89i︠
%md
# Logistic Growth with Harvesting
︡9c1f12cf-abca-448e-bcfa-6d3cb5faee11︡{"md":"# Logistic Growth with Harvesting\n"}︡
︠082636b5-e1c2-4cf8-9b10-35f4fa745156︠

︠fefd9c84-e595-4911-b35c-0f3ad51e2c1bi︠
%md
1. Logistic Growth with constant harvesting
︡b3c4d668-58f9-4558-aa00-1a1ce3ae7b5e︡{"md":"1. Logistic Growth with constant harvesting\n"}︡
︠fdde2a72-8d56-4f62-8029-17ad435d7c4b︠
# Set up our variables and constants
t = var('t') # time
P = function('P',t) # P(t) is population at time t
k = 0.25 # k is a proportionality constant related to normal logistic growth
N = 4 # N is the carrying capacity for the population
a = 0.1 # a is the constant that represents the amount harvested per unit time

# We can set our initial population.
init_p = 2

# Here's our differential equation, as given in the project description
lg_constant = diff(P,t,1) == k*P*(1-P/N) - a

# Here's the solver that will return back a list of points that represent the solution, P(t)
soln = desolve_rk4(lg_constant, P, ics=[0,init_p], end_points=30)
list_plot(soln, xmin=0, xmax=30, ymin=0, ymax=6, title="Logistic Growth with Constant Harvesting",plotjoined=True)
︡04cddc72-3c32-4a3f-a30d-840ba664723f︡{"once":false,"file":{"show":true,"uuid":"45a66c20-0ee6-44e1-b476-535f58023524","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/2533/tmp_MhT2XU.svg"}}︡
︠f4a90f7f-833a-42ec-bc40-bc0866837856i︠
%md
1. Logistic Growth with Proportional Harvesting
︡8c3ccc3e-1544-4d6d-9886-d4497fac7992︡{"md":"1. Logistic Growth with Proportional Harvesting\n"}︡
︠041561b7-6bf9-4c75-97a4-55d217c15004︠
t = var('t') # time
P = function('P',t) # population function
k = 0.4 # proportionality constant
b = 0.2 # this is the number that impacts what proportion of the population is harvested
N = 4 # the carrying capacity

# We can set our initial population.
init_p = 3

# Here's our differential equation
lg_constant = diff(P,t,1) == k*P*(1-P/N) - b*P

soln = desolve_rk4(lg_constant, P, ics=[0,init_p], end_points=30)
list_plot(soln, xmin=0, xmax=30, ymin=0, ymax=6, title="Logistic Growth with Proportional Harvesting",plotjoined=True)

︡84818cc6-f5f9-4db6-b950-3a92975a35e6︡{"once":false,"file":{"show":true,"uuid":"f8d7ab70-360e-4332-bfa4-b9991dc666d8","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/2533/tmp_PodkXu.svg"}}︡
︠196ac2bc-edfa-4585-8b6c-9148b8640ea0i︠
%md
2. Logistic Growth with periodic harvesting
︡2c977e0f-94c2-4e6a-9239-89c1f2bc7b44︡{"md":"2. Logistic Growth with periodic harvesting\n"}︡
︠eceb065e-e9ee-4c57-b3a3-565ade1cff81︠
# Set up our variables and constants
t = var('t') # time
P = function('P',t) # population function
k = 0.25 # proportionality constant
N = 4 # carrying capacity
c = 0.4 # related to the periodic harvesting of the fish

init_p = 4.1

lg_periodic = diff(P,t,1) == k*P*(1-P/N) - c*(1+sin(t))

soln = desolve_rk4(lg_periodic, P, ics=[0,init_p], ivar=t, end_points=20)
list_plot(soln, xmin=0, xmax=20, ymin=0, ymax=6, title="Logistic Growth with Periodic Harvesting",plotjoined=True)
︡a302c007-1e91-4f15-ba66-6cb768e3527e︡{"once":false,"file":{"show":true,"uuid":"7fe06019-5597-44f3-97f9-f2fa134d0506","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/2533/tmp_Ys9Rhc.svg"}}︡
︠48d97c8f-fa5a-4b54-8b55-5189187585d6i︠
%md
1. You may also want to plot a slope field for the differential equation
︡76d17589-3c0e-4cc7-ae19-371982525e5d︡{"md":"1. You may also want to plot a slope field for the differential equation\n"}︡
︠4833557a-eaa7-4560-84ee-ae63414259e5︠
t = var('t')
P = var('P')

k = 0.25
N = 4
a = 0.1

plot_slope_field(k*P*(1-P/N) - a*(1+sin(t)) , (t,0,100) , (P,0,6))
︡78d83e3a-4f17-426a-be79-eda6bc09e597︡{"once":false,"file":{"show":true,"uuid":"2d6c023e-33fa-49fe-9357-a9ace568d564","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/16156/tmp_n1TtuZ.svg"}}︡
︠eefa18a8-3729-4920-9ca5-c815b11d65f5︠









