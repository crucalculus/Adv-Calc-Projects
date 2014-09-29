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
datapoints = [(0, 4.3), (1, 10.5), (2, 17.5), (3, 27.1), (4, 38.4), (5, 53.6), (6, 76), (7, 107.9), (8, 152.5), (9, 217.9), (10, 311.8), (11, 418.8), (12, 519.8), (13, 623.8), (14, 733.8), (15, 851.8), (16, 977.8), (17, 1107.8)]
# You can use the scatter_plot command to plot the points.
scatter_plot(datapoints,xmax=30)
︡db998798-627c-44b2-997a-70c204641ef8︡{"once":false,"file":{"show":true,"uuid":"6bb0fa15-7bc8-4101-af83-a4ca04c97f8b","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/852/tmp_yizSyg.svg"}}︡
︠2c161ddb-7955-4923-91f0-2a48ab066e80︠
# SAGE has a wonderful tool built in that will let you find the equation for a logistic
# curve that fits the given data.
# I will set up variables for k, L, c and t
var('k, L, c, t')
# Then I put in the general form of the equation. In this case, the general solution for a logistic curve.
model(t) = L / (1 + c*e^(-k*t))
# The find_fit command will return back the parameters we need.
find_fit(datapoints, model, parameters=[k,L,c], variables=[t])
︡53d11eae-1d0e-4c0e-8b94-9fdcc87f2777︡{"stdout":"(k, L, c, t)\n"}︡{"stdout":"[k == 0.3577258384671146, L == 1416.6150840307419, c == 133.15548690134906]"}︡{"stdout":"\n"}︡
︠fed1faa3-133b-42fb-818b-d04961491164︠
# Then we can plot the curve and the points together.
plot( 1416.61508 / (1 + 133.15549*e^(-0.357726*x)), xmin=0, xmax=30) + scatter_plot(datapoints)
︡e700bc75-f032-48ee-af7a-3a1d27d46c37︡{"once":false,"file":{"show":true,"uuid":"8937b439-a535-4bd6-a2cc-10926866386f","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/852/tmp_FQzMPh.svg"}}︡
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









