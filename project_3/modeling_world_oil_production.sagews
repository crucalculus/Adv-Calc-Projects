︠e5244976-fd2f-4ebd-ab95-73e8ca007cd6i︠
%md
# You will need to plot logistic functions.
︡393ef312-b830-4b03-b86f-7f4d26d71e1e︡{"md":"# You will need to plot logistic functions.\n"}︡
︠0be9ad30-8386-4f0e-a3d5-4642877dda66︠
t = var('t')
def p(t):
    return 4000 / (1+99*e^(-0.194*t)) # the logistic equation from Elk population example in Larson on page 420
plot(p, (t,8,80), title="Elk Population", title_pos=(0.75,0.5), axes_labels=['$t$','$P(t)$'])
︡f7fa9114-5fa1-4935-a940-970ace514bf0︡{"once":false,"file":{"show":true,"uuid":"aabefe19-3b4d-4362-956e-b5c65814e5bc","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/852/tmp_EqwQ6h.svg"}}︡
︠92b38e96-127c-4d16-9a47-33205ca5d44ai︠
%md
# You will need to plot a bunch of data points
︡d614d9f1-2cfb-488d-be83-99859127858f︡{"md":"# You will need to plot a bunch of data points\n"}︡
︠1ebd5e17-f96e-4472-8860-a94f8076613c︠
# Setup a list of points. I'm using the total cumulative oil produced.
datapoints_world = [(0, 4.3), (5, 10.5), (10, 17.5), (15, 27.1), (20, 38.4), (25, 53.6), (30, 76), (35, 107.9), (40, 152.5), (45, 217.9), (50, 311.8), (55, 418.8), (60, 519.8), (65, 623.8), (70, 733.8), (75, 851.8), (80, 977.8), (85, 1107.8)]
datapoints_us = [(0, 2.9), (5, 7.1), (10, 11.4), (15, 17.2), (20, 24.7), (25, 33.9), (30, 45.1), (35, 57.8), (40, 71.2), (45, 87), (50, 104), (55, 119.3), (60, 135.1), (65, 150.3), (70, 163.2), (75, 174.7), (80, 185.1), (85, 194.4)]
# You can use the scatter_plot command to plot the points.
scatter_plot(datapoints_world,xmax=100, title="World Oil")
scatter_plot(datapoints_us,xmax=100, title="US Oil")
︡0cd7341f-a92c-49c8-a476-0b451adcb799︡{"once":false,"file":{"show":true,"uuid":"09448d79-a2e3-4892-91a0-dce25f3f79b9","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/24561/tmp_Umuy_Q.svg"}}︡{"once":false,"file":{"show":true,"uuid":"6a516b4a-18d8-4824-917f-9f430d86ec0f","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/24561/tmp_mJQRpV.svg"}}︡
︠2c161ddb-7955-4923-91f0-2a48ab066e80︠
# SAGE has a wonderful tool built in that will let you find the equation for a logistic
# curve that fits the given data.
# I will set up variables for k, L, c and t
var('k, L, c, t')
# The general form of the equation is called model(t). In this case, the general solution for a logistic curve.
model(t) = L / (1 + c*e^(-k*t))
# The find_fit command will return back the parameters we need.
find_fit(datapoints_world, model, parameters=[k,L,c], variables=[t])
︡ed66efaa-696d-49f6-9a1d-7fd7cd8860e4︡{"stdout":"(k, L, c, t)\n"}︡{"stdout":"[k == 0.07154515702977221, L == 1416.6153717780398, c == 133.15545537132712]\n"}︡
︠befc0291-d4b1-410f-bd97-85fdfb9bc52a︠
find_fit(datapoints_us, model, parameters=[k,L,c], variables=[t])
︡3b20bc50-c074-4273-990a-8a8d63a9d412︡{"stdout":"[k == 0.06484813152770683, L == 212.89710515427907, c == 27.347063271322305]\n"}︡
︠fed1faa3-133b-42fb-818b-d04961491164︠
# Then we can plot the curve and the points together.
plot( 1416.615 / (1 + 133.15549*e^(-0.071545*x)), xmin=0, xmax=100, title="World Oil") + scatter_plot(datapoints_world)
plot( 212.8971 / (1 + 27.34706*e^(-0.064848*x)), xmin=0, xmax=100, title="US Oil") + scatter_plot(datapoints_us)

︡34b126e0-9014-40e4-b9a8-c5ce7161758d︡{"once":false,"file":{"show":true,"uuid":"c40eb5db-85ab-43e1-af43-2e58e0fae103","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/24561/tmp_k3fgYk.svg"}}︡{"once":false,"file":{"show":true,"uuid":"5f8b41f4-8938-4d66-bdd0-5e8b4c137fa7","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/24561/tmp_0VSg21.svg"}}︡
︠ea70dc7a-0363-4847-bddd-a10aae96d0f2i︠
%md
# You may also want to plot the slope field for the differential equation whose solution is a logistic function.
︡9346ec73-937b-401a-9619-d5051ce3dd0a︡{"md":"# You may also want to plot the slope field for the differential equation whose solution is a logistic function.\n"}︡
︠b1da6f72-2165-4794-86a9-8bc882308c03︠
t = var('t')
def dp_dt(t,p): # plot_slope_field passes both t and p to this func, although dp_dt only depends on p
    return 0.194*p*(1-(p/4000))
plot_slope_field( dp_dt, (t,0,80), (p,0,5000), title="Slope Field for Elk Population", axes_labels=['$t$','$P$'])
 
︡15509013-90cf-4d86-b982-e74e653d60e4︡{"once":false,"file":{"show":true,"uuid":"a553f927-b2d9-4fe7-9298-3486b2b92cac","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/852/tmp_MCbQGe.svg"}}︡
︠db593e4e-1533-4082-b4c7-9be404e570b3i︠
%md
# You may want to put the specific solution curve on top of the slope field
︡1385d646-8f43-45e2-b124-379f3a323b29︡{"md":"# You may want to put the specific solution curve on top of the slope field\n"}︡
︠ea26bb28-cfb2-4d47-8c89-b1dc98eb6492︠
combined_plot = plot_slope_field( dp_dt, (t,0,80), (p,0,5000)) + plot(p, (t,8,80), color='red', thickness=3, title="Slope Field and Solution Curve", axes_labels=['$t$','$P$']) # notice that we can *add* two plots together just like you'd expect!
show(combined_plot)
︡6e566f58-09ae-45cc-8706-ab95a167977a︡{"once":false,"file":{"show":true,"uuid":"912d85b6-e020-4aa2-b845-8573bf3179a7","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/852/tmp_lZ4R1P.svg"}}︡
︠f5191504-e185-4960-b0a2-70c02abf0d43i︠
%md
# You may want to let SCM solve the differential equation for you!









