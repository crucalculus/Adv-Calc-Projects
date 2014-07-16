︠e5244976-fd2f-4ebd-ab95-73e8ca007cd6i︠
%md
# You will need to plot logistic functions and their slope fields.
︡73ef543a-d391-4a71-adb2-37b3d9f634aa︡{"md":"# You will need to plot logistic functions and their slope fields.\n"}︡
︠0be9ad30-8386-4f0e-a3d5-4642877dda66︠
t = var('t')
def p(t):
    return 4000 / (1+99*e^(-0.194*t)) # the logistic equation from Elk population example in Larson on page 420
plot(p, (t,8,80), title="Elk Population", title_pos=(0.75,0.5), axes_labels=['$t$','$P(t)$'])
︡971f7d36-9d45-4c3a-bdbc-b5960c13c504︡{"once":false,"file":{"show":true,"uuid":"ce65af15-2b4c-4f34-b8a0-e3d985447d4e","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/32675/tmp_WidVGR.svg"}}︡
︠ea70dc7a-0363-4847-bddd-a10aae96d0f2i︠
%md
# You may also want to plot the slope field for the differential equation
︡09d6995c-e31e-4baf-9689-b257cb12718e︡{"md":"# You may also want to plot the slope field for the differential equation\n"}︡
︠b1da6f72-2165-4794-86a9-8bc882308c03︠
t = var('t')
def dp_dt(t,p): # plot_slope_field passes both t and p to this func, although dp_dt only depends on p
    return 0.194*p*(1-(p/4000))
plot_slope_field( dp_dt, (t,0,80), (p,0,5000), title="Slope Field for Elk Population", axes_labels=['$t$','$P$'])
 
︡bca003cd-e65e-4fce-98b5-16dbf4bf2b2c︡{"once":false,"file":{"show":true,"uuid":"f7ce0f55-613c-4fa3-bdd5-cbd770d7f185","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/32675/tmp_fywLTw.svg"}}︡
︠db593e4e-1533-4082-b4c7-9be404e570b3i︠
%md
# You may want to put the specific solution curve on top of the slope field
︡1385d646-8f43-45e2-b124-379f3a323b29︡{"md":"# You may want to put the specific solution curve on top of the slope field\n"}︡
︠ea26bb28-cfb2-4d47-8c89-b1dc98eb6492︠
combined_plot = plot_slope_field( dp_dt, (t,0,80), (p,0,5000)) + plot(p, (t,8,80), color='red', thickness=3, title="Slope Field and Solution Curve", axes_labels=['$t$','$P$']) # notice that we can *add* two plots together just like you'd expect!
show(combined_plot)
︡fa810198-19e5-4d14-9770-a7b753dbd5f4︡{"once":false,"file":{"show":true,"uuid":"bbc301fd-bc9e-47a1-9f8b-d9e7956fe9f4","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/32675/tmp_Y2hj37.svg"}}︡
︠f5191504-e185-4960-b0a2-70c02abf0d43i︠
%md
# You may want to let SCM solve the differential equation for you!









