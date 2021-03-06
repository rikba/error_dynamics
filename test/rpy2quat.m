function qs = rpy2quat(rIn,p,y)
% Euler Sequence (1,2,3) (1. Yaw, 2. Pitch, 3. Roll, R = R_x * R_y * R_z)
if nargin == 1
  y = rIn(3,:);
  p = rIn(2,:);
  r = rIn(1,:);
else
    r=rIn;
end

cRh = cos(r/2);
sRh = sin(r/2);
cPh = cos(p/2);
sPh = sin(p/2);
cYh = cos(y/2);
sYh = sin(y/2);

qs = [cRh.*cPh.*cYh + sRh.*sPh.*sYh
      sRh.*cPh.*cYh - cRh.*sPh.*sYh
      cRh.*sPh.*cYh + sRh.*cPh.*sYh
      cRh.*cPh.*sYh - sRh.*sPh.*cYh];
