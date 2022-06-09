function iae=IAE(pid)

kp=pid(1);
ki=pid(2);
kd=pid(3);

sim_out=sim("P6.slx", "SrcWorkspace", "Current");

iae=sim_out.IAE{1}.Values.Data(end);
itae=sim_out.ITAE{1}.Values.Data(end);
end