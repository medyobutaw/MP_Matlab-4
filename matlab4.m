h = input('Initial Height above the ground: ');
v = input('Magnitude of the Velocity: ');
a = input('Angle in degrees with respect to the +x-axis: ');
x = input('x-component acceleration: ');
y = input('y-component acceleration (free fall = -9.8): ');

if y >= 0
    error('The acceleration of the y-component must not be greater than or equal to zero.')
elseif h < 0
    error('Initial Height must not be less than 0.')
end

tmax = (sqrt((v*sind(a))^2 - 2*y*h) - v*sind(a))/y;
if tmax<=0
    tmax = (-sqrt((v*sind(a))^2 - 2*y*h) - v*sind(a))/y;
end

t = 0:0.01:tmax;
X = (v.*cosd(a).*(t)) + ((1./2).*(x).*(t.^2));
Y = (h + v.*sind(a).*(t)) + ((1./2).*(y).*(t.^2));

plot(X,Y)
grid on
xlabel('Distance')
ylabel('Height')
title('Projectile Trajectory')
