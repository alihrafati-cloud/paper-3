% A Model-Based Approach to Neuronal Electrical Activity and % Spatial Organization Through the Neuronal Actin Cytoskeleton

% Figure.1

% Modify the code as below:
%Figure.1.C.a
% L = (abs(1 - igamma(x + i*y, z)./gamma(abs(x + i*y))));
% U = (abs(igamma(x + i*y, z)./gamma(abs(x + i*y)))); 

%Figure.1.C.b
% L = (imag(1 - igamma(x + i*y, z)./gamma(real(x + i*y))));
% U = (imag(igamma(x + i*y, z)./gamma(real(x + i*y)))); 

clc
clear
syms  L(x,y,z)  U(x,y,z) 
for z=-5:0
L = (abs(1 - igamma(x + i*y, z)./gamma(abs(x + i*y)))); 
fsurf(L)
hold on
U = (abs(igamma(x + i*y, z)./gamma(abs(x + i*y)))); 
fsurf(U)
hold off
end


% Figure.2

clc
clear
syms x y

% the range for m
m_values = -5:5;

figure;

for i = 1:4
    
    subplot(2, 2, i);
    hold on
    
    
    for m = m_values
    
        switch i
            case 1
                % Equation 1
                f = -((y.^3)./x.^3) + x.*(x + 1).*(x - 3).*(x + 2).*(x - 2) + m;
            case 2
                % Equation 2
                f = -((y.^3)./x.^2) + x.*((x + 1).^3).*((x + 3).^3).*((x + 2).^3).*((x - 1).^3) + m;
            case 3
                % Equation 3
                f = -exp((y.^3)) + exp(x.*((x + 1).^3).*((x + 3).^3).*((x + 2).^3).*((x - 1).^3)) + m;
            case 4
                % Equation 4
                f = x - (y./m).^(2./3);
        end
        
        % Plot the implicit equation for the current m value
        fimplicit(f, [-5, 5, -5, 5]);
    end
    
    % Set titles for each subplot
    title(['Equation f', num2str(i)]);
    xlabel('x');
    ylabel('y');
    hold off
end

% Add an overall title
sgtitle('Implicit plots of f1, f2, f3, and f4 for different values of m');

% Figure.3.B.a
clc;
clear;
syms t p x y z a b c d;

% A symbolic matrix F1
F1 = sym([a, b; d, c]);

% Get the characteristic polynomial of F1 in terms of z
F2 = charpoly(F1, z);

% Define the components to substitute in place of a, b, c, d, and z
A = (((1 ./ x) .^ 2)) + (i * (1 ./ y) .^ 2);
B = 1;
C = (((1 ./ x) .^ 2)) - (i * (1 ./ y) .^ 2);
D = 1;
Z = 1;

% Substitute values into the characteristic polynomial
F4 = subs(F2, [a, b, c, d, z], {A, B, C, D, Z});

% Plot the real part of F4 as an implicit plot
figure;
fimplicit(real(F4), [-5, 5, -5, 5]);
hold on;

% Define new values for AA, BB, CC, DD, ZZ
AA = x + i * y + 1;
BB = 1.35;
CC = x - i * y + 1;
DD = 1.35;
ZZ = 1;

% Substitute new values into the characteristic polynomial
FFF = subs(F2, [a, b, c, d, z], {AA, BB, CC, DD, ZZ});

% Plot the real part of FFF as an implicit plot
fimplicit(real(FFF), [-5, 5, -5, 5]);

% Additional plot settings
axis equal;
xticks(-5:1:5);
yticks(-5:1:5);

% Add labels and title for clarity
xlabel('x');
ylabel('y');
title('Implicit Plots of Real Parts of F4 and FFF');
hold off;


% Figure.3.B.b
clc;
clear;
syms t p x y z a b c d;

% A symbolic matrix F1
F1 = sym([a, b; d, c]);

% Get the characteristic polynomial of F1 in terms of z
F2 = charpoly(F1, z);

% Define the components to substitute in place of a, b, c, d, and z

 A=exp((sin((1./x).^2))+(i*(1./y).^2)) 
 B=1   
 C=exp((sin((1./x).^2))-(i*(1./y).^2))
 D=1   
 Z=1
 

% Substitute values into the characteristic polynomial
F4 = subs(F2, [a, b, c, d, z], {A, B, C, D, Z});

% Plot the real part of F4 as an implicit plot
figure;
fimplicit(real(F4), [-5, 5, -5, 5]);
hold on;

% Define new values for AA, BB, CC, DD, ZZ
AA = x + i * y + 1;
BB = 1.93;
CC = x - i * y + 1;
DD = 1.93;
ZZ = 1;

% Substitute new values into the characteristic polynomial
FFF = subs(F2, [a, b, c, d, z], {AA, BB, CC, DD, ZZ});

% Plot the real part of FFF as an implicit plot
fimplicit(real(FFF), [-5, 5, -5, 5]);

% Additional plot settings
axis equal;
xticks(-5:1:5);
yticks(-5:1:5);

% Add labels and title for clarity
xlabel('x');
ylabel('y');
title('Implicit Plots of Real Parts of F4 and FFF');
hold off;


%Figure.3.B.C
clc;
clear;
syms t p x y z a b c d;

% Define the symbolic matrix and find its characteristic polynomial
F1 = sym([a, b; d, c]);
F2 = charpoly(F1, z);

% Define the values for substitution
A = exp((sin((1 ./ x) .^ 2)) + (i * (1 ./ y) .^ 2));
B = x + y;
C = exp((sin((1 ./ x) .^ 2)) - (i * (1 ./ y) .^ 2));
D = x + y;
Z = 1;

% Substitute into the characteristic polynomial
F4 = subs(F2, [a, b, c, d, z], {A, B, C, D, Z});

% Plot the real part of F4
figure;
fimplicit(real(F4), [-5, 5, -5, 5]);
hold on;

% Define a new set of values for AA, BB, CC, DD, ZZ
AA = x + i * y + 1;
BB = 1.91;
CC = x - i * y + 1;
DD = 1.91;
ZZ = 1;

% Substitute into the characteristic polynomial for the new set of values
FFF = subs(F2, [a, b, c, d, z], {AA, BB, CC, DD, ZZ});

% Plot the real part of FFF
fimplicit(real(FFF), [-5, 5, -5, 5]);

% Configure axis and ticks for better visualization
axis equal;
xticks(-5:1:5);
yticks(-5:1:5);

% Add labels and title
xlabel('x');
ylabel('y');
title('Implicit Plots of Real Parts of F4 and FFF');
hold off;

% Figure.4.B1
clc;
clear;
syms x y z;

% Define the 3D surface equation for a shape similar to a "sphere"
F = ((x + i*y) * (x - i*y) * (-x + i*y) * (-x - i*y)) - 1 + z^2;

% Plot the implicit surface in 3D
figure;
fimplicit3(real(F), [-5, 5, -5, 5, -5, 5], 'MeshDensity', 30);
axis equal;
hold on;

% Create an animated line in 3D
h = animatedline('Marker', 'o', 'Color', 'r');
view(3);

% Define the range for x and y points, and define z as a function for animation
x = -5:0.5:5;
y = -5:0.5:5;
N=-pi:(pi./10):pi
z =N ;  % Here, z is defined as a cosine function of x for demonstration

% Add points to the animated line in a loop
for k = 1:length(x)
    addpoints(h, x(k), y(k), z(k));
    drawnow;
    pause(0.1);  % Pause for animation effect
end
hold off;




% Figure.4.B3
clc;
clear;
syms x y z;

h=((x.^2)./sin(4.*z./(1)))+((y.^2)./sin(4.*z./(1)))-10 

% The integral of h is expressed below , H=vpa(matlabFunction(int(h,z)));
H = log(tan(2.0 * z)) * (0.25 * x^2 + 0.25 * y^2) - 5.0 * atan((20.0 * tan(2.0 * z) * (2.0 * x^2 + 2.0 * y^2) - 400.0) / (40.0 * x^2 + 40.0 * y^2 + 400.0 * tan(2.0 * z)));

% Convert to a MATLAB function for plotting
FFF = matlabFunction(H, 'Vars', [x, y, z]);

% Plot with fimplicit3 over a specified range
figure;
fimplicit3(FFF, [-5, 5, -5, 5, -5, 5], 'MeshDensity', 30);
axis equal;
title('3D Implicit Plot of FFF(x, y, z)');
xlabel('x');
ylabel('y');
zlabel('z');



% The Figure.5. B,C,D,E
clc
clear
syms x y X1 X2 Z1 Z2 Y1 Y2 X Y XXX1 XXX2 Z1 Z2 YYY1 YYY2 
 assume(x,'real');
 assume(y,'real');
m=1
r=(sqrt(((x.^2)+(y.^2))));
X1=(((y.^2))./r); 
Y1=((x.^2)./r);

X2=(y./r);
Y2=((m.*((1-(x.^2)).*y)-x)./r);


% Model-1
f = [X1; Y1];  % 3×1 vector field f
g = [X2; Y2];  % 3×1 vector field g

xxvar = [x, y];  % Variables in the 3D space
n = 3;  % Number of iterations

% Initialize ad_fng as a 3×(n+1) matrix (since we're working in 3D space)
ad_fng = sym(zeros(length(f), n+1));  % 3 × (n+1)
ad_fng(:,1) = g;  % Set the base case: ad_f^0(g) = g

for t = 2:n+1
    prev = ad_fng(:, t-1);  % ad_f^(t-1)(g) at previous step

    % Compute the Jacobian of the previous Lie bracket term w.r.t. the variables
    J_prev = jacobian(prev, xxvar);  % Jacobian of ad_f^(t-1)(g), should be 3x3

    % Compute the Jacobian of f
    J_f = jacobian(f, xxvar);        % Jacobian of f, should be 3x3

    % Ensure the Jacobian multiplication gives 3×1 vectors
    % The first term is J_f * prev, which is 3×3 * 3×1, resulting in a 3×1 vector
    % The second term is J_prev * f, which is 3×3 * 3×1, resulting in a 3×1 vector
    % Both terms should be 3×1 vectors, and the subtraction is valid.
    ad_fng(:,t) = J_f * prev - J_prev * f;  % 3×1 vector as expected
end


%%%%%%%%%% Lie Bracket-2 Model
% syms x y
% 
% % Define vector field components
% f = [X1, Y1];  % vector field components
% g = [X2, Y2];  % vector field components
% 
% % Compute the Jacobians (derivatives) of f and g with respect to x and y
% Df = jacobian(f, [x, y]);  % Jacobian matrix of f
% Dg = jacobian(g, [x, y]);  % Jacobian matrix of g
% 
% % Lie bracket [f, g] = Dg*f - Df*g
% LieBracket = Dg * f' - Df * g';
% 
% % Simplify the Lie bracket expression
% Z3 = simplify(LieBracket);

assume(x,'real');
assume(y,'real');
Z3 = expand(ad_fng)



syms x y

A_terms = children(Z3(3));
A = 0;
for k = 1:length(A_terms)
    A = A + int(A_terms(k), x, y);
end

B_terms = children(Z3(4));
B = 0;
for k = 1:length(B_terms)
    B = B + int(B_terms(k), x, y);
end

C_terms = children(Z3(5)); % insert % before C if using Model-2
C = 0;
for k = 1:length(C_terms)
    C = C + int(C_terms(k), x, y);
end

D_terms = children(Z3(6));  % insert % before D if using Model-2
D = 0;
for k = 1:length(D_terms)
    D = D + int(D_terms(k), x, y);
end

xx=-2.*pi:2.*pi;
yy=-2.*pi:2.*pi;

[xxx,yyy]=meshgrid(xx,yy);
XX1=subs(X1,[x y],{xxx yyy});
YY1=subs(Y1,[x y],{xxx yyy});
XX2=subs(X2,[x y],{xxx yyy});
YY2=subs(Y2,[x y],{xxx yyy});

% Different combinations can be used 
ZZ31=subs(A,[x y],{xxx yyy}); 
ZZ32=subs(B,[x y],{xxx yyy});
ZZ33=subs(C,[x y],{xxx yyy}); % change the C to A if you use Model-2
ZZ34=subs(D,[x y],{xxx yyy}); % change the D to B if you use Model-2


% Figure B: Vector Field and Streamlines in Blue
figure
quiver(xxx, yyy, XX2, YY2, 'blue')
hold on
vert1 = stream2(double(xxx), double(yyy), double(XX2), double(YY2), double(xxx), double(yyy));
streamline(vert1)
title('Figure B')
xlabel('X')
ylabel('Y')
hold off

% Figure C: Vector Field and Streamlines in Red
figure
quiver(xxx, yyy, XX1, YY1, 'red')
hold on
vert2 = stream2(double(xxx), double(yyy), double(XX1), double(YY1), double(xxx), double(yyy));
streamline(vert2)
title('Figure C')
xlabel('X')
ylabel('Y')
hold off

% Figure D: Overlaid Vector Fields and Streamlines in Red and Blue (3D View)
figure
quiver(xxx, yyy, XX1, YY1, 'red')
hold on
vert2 = stream2(double(xxx), double(yyy), double(XX1), double(YY1), double(xxx), double(yyy));
streamline(vert2)
quiver(xxx, yyy, XX2, YY2, 'blue')
vert3 = stream2(double(xxx), double(yyy), double(XX2), double(YY2), double(xxx), double(yyy));
streamline(vert3)
view(3)
title('Figure D')
xlabel('X')
ylabel('Y')
hold off

% Figure E: Black Vector Field and Streamlines (3D View)
figure
quiver(xxx, yyy, ZZ33, ZZ34, 'black')
hold on
vert4 = stream2(double(xxx), double(yyy), double(ZZ33), double(ZZ34), double(xxx), double(yyy));
streamline(vert4)
view(3)
title('Figure E: Black Vector Field and Streamlines (3D View)')
xlabel('X')
ylabel('Y')
zlabel('Z')
hold off



% The Figure.6.A,B and C
clc
clear
syms x y z m

r=(sqrt(((x.^2)+(y.^2)+(z.^2))));

X1=(((y.^2))./(r.*(z.^2)));
Y1=((x.^2)./(r.*(z.^2)));

X2=(y./(z.*r)); 
Y2=((m.*((1-((x.^2)./(z.^2))).*((y)./(z)))-(x./z))./r); % corrected for z

% The Lie Bracket, recursive method Model-1
assume(x,'real');
assume(y,'real');
assume(z,'real');
 % 3D vector fields (assumed you have f = [X1; Y1; Z1] and g = [X2; Y2; Z2])
f = [X1; Y1; 0];  % 3×1 vector field f
g = [X2; Y2; 0];  % 3×1 vector field g

xxvar = [x, y, z];  % Variables in the 3D space
n = 3;  % Number of iterations

% Initialize ad_fng as a 3×(n+1) matrix (since we're working in 3D space)
ad_fng = sym(zeros(length(f), n+1));  % 3 × (n+1)
ad_fng(:,1) = g;  % Set the base case: ad_f^0(g) = g

for t = 2:n+1
    prev = ad_fng(:, t-1);  % ad_f^(t-1)(g) at previous step

    % Compute the Jacobian of the previous Lie bracket term w.r.t. the variables
    J_prev = jacobian(prev, xxvar);  % Jacobian of ad_f^(t-1)(g), should be 3x3

    % Compute the Jacobian of f
    J_f = jacobian(f, xxvar);        % Jacobian of f, should be 3x3

    % Ensure the Jacobian multiplication gives 3×1 vectors
    % The first term is J_f * prev, which is 3×3 * 3×1, resulting in a 3×1 vector
    % The second term is J_prev * f, which is 3×3 * 3×1, resulting in a 3×1 vector
    % Both terms should be 3×1 vectors, and the subtraction is valid.
    ad_fng(:,t) = J_f * prev - J_prev * f;  % 3×1 vector as expected
end



% % The Lie Bracket, Model-2 
% assume(x,'real');
% assume(y,'real');
% assume(z,'real');
% 
% % Define vector field components
% f = [X1, Y1];  % vector field components
% g = [X2, Y2];  % vector field components
% 
% % Compute the Jacobians (derivatives) of f and g with respect to x and y
% Df = jacobian(f, [x, y,z]);  % Jacobian matrix of f
% Dg = jacobian(g, [x, y,z]);  % Jacobian matrix of g
% 
% % Lie bracket [f, g] = Dg*f - Df*g
% Z3 = Dg .* f' - Df .* g';



assume(x,'real');
assume(y,'real');
Z3 = expand(ad_fng)


% V1=[Z3(1),Z3(2), 0]; % chosen
% V2=[Z3(2),Z3(3), 0]; % are zero
 vars = [x y z];

assume(x,'real');
assume(y,'real');

V3=(Z3(1)+Z3(2)) 
gg=-(gradient(V3,vars))

assume(x,'real');
assume(y,'real');


xxx=linspace(-2.*pi,2.*pi,20);
yyy=linspace(-2.*pi,2.*pi,20);
zzz=linspace(-2.*pi,2.*pi,20);
M=linspace(.1,4,20)

XX1=subs(gg(1),[x y z m],{xxx yyy,zzz,M});
YY1=subs(gg(2),[x y z m],{xxx yyy,zzz,M});
ZZ1=subs(gg(3),[x y z m],{xxx yyy,zzz,M});
R=(sqrt((XX1.^2)+(YY1.^2)+(ZZ1.^2)))


Dirac=log10(exp(-R./M))  
Dirac1=double(exp(-XX1./M)) 
Dirac2=double(exp(-YY1./M)) 
Dirac3=double(exp(-ZZ1./M)) 


figure % 1st
quiver3(xxx,yyy,zzz,Dirac1,Dirac2,Dirac3)
xlabel('Dirac_X')
ylabel('Dirac_Y')
zlabel('Dirac_Z')
xticks([  0.1 .5 1 1.5 2 2.5 3 3.5 4 4.5 5])


figure
plot3(M,R,Dirac)
xlabel('M')
ylabel('R')
zlabel('Dirac')
%
M2=2           % .1 2  The corretion
  xx2=-2.*pi:2.*pi;
  yy2=-2.*pi:2.*pi;
 zz2=yy2
 [xxxx,yyyy,zzzz]=meshgrid(xx2,yy2,zz2);
 
XX2=subs(gg(1),[x y z m],{xxxx yyyy,zzzz,M2});
YY2=subs(gg(2),[x y z m],{xxxx yyyy,zzzz,M2});
ZZ2=subs(gg(3),[x y z m],{xxxx yyyy,zzzz,M2});

figure 
quiver3(xxxx,yyyy,zzzz,XX2,YY2,ZZ2,'red')
hold on
 vert1=stream3(double(xxxx),double(yyyy),double(zzzz),double(XX2),double(YY2),double(ZZ2),double(XX2),double(YY2),double(ZZ2));
 streamline(vert1)
xlabel('X')
ylabel('Y') 
zlabel('Z')


 n=Dirac;  
 Membrane_Potential=((log10(n)).*61.5); 
 figure
 plot(M,Membrane_Potential)
xlabel('M')
ylabel('Membrane Potential')
xticks([  0.1 .5 1 1.5 2 2.5 3 3.5 4 4.5 5])


% Figure.6 A',B',C'
clc
clear
syms x y z m

r=(sqrt(((x.^2)+(y.^2)+(z.^2))));

X1=(((y.^2))./(r.*(z.^2)));
Y1=((x.^2)./(r.*(z.^2)));

X2=(y./(z.*r)); 
Y2=((m.*((1-((x.^2)./(z.^2))).*((y)./(z)))-(x./z))./r); % corrected for z

% The Lie Bracket, recursive method Model-1
assume(x,'real');
assume(y,'real');
assume(z,'real');
 % 3D vector fields (assumed you have f = [X1; Y1; Z1] and g = [X2; Y2; Z2])
f = [X1; Y1; 0];  % 3×1 vector field f
g = [X2; Y2; 0];  % 3×1 vector field g

xxvar = [x, y, z];  % Variables in the 3D space
n = 3;  % Number of iterations

% Initialize ad_fng as a 3×(n+1) matrix (since we're working in 3D space)
ad_fng = sym(zeros(length(f), n+1));  % 3 × (n+1)
ad_fng(:,1) = g;  % Set the base case: ad_f^0(g) = g

for t = 2:n+1
    prev = ad_fng(:, t-1);  % ad_f^(t-1)(g) at previous step

    % Compute the Jacobian of the previous Lie bracket term w.r.t. the variables
    J_prev = jacobian(prev, xxvar);  % Jacobian of ad_f^(t-1)(g), should be 3x3

    % Compute the Jacobian of f
    J_f = jacobian(f, xxvar);        % Jacobian of f, should be 3x3

    % Ensure the Jacobian multiplication gives 3×1 vectors
    % The first term is J_f * prev, which is 3×3 * 3×1, resulting in a 3×1 vector
    % The second term is J_prev * f, which is 3×3 * 3×1, resulting in a 3×1 vector
    % Both terms should be 3×1 vectors, and the subtraction is valid.
    ad_fng(:,t) = J_f * prev - J_prev * f;  % 3×1 vector as expected
end



% % The Lie Bracket, Model-2 
% assume(x,'real');
% assume(y,'real');
% assume(z,'real');
% 
% % Define vector field components
% f = [X1, Y1];  % vector field components
% g = [X2, Y2];  % vector field components
% 
% % Compute the Jacobians (derivatives) of f and g with respect to x and y
% Df = jacobian(f, [x, y,z]);  % Jacobian matrix of f
% Dg = jacobian(g, [x, y,z]);  % Jacobian matrix of g
% 
% % Lie bracket [f, g] = Dg*f - Df*g
% Z3 = Dg .* f' - Df .* g';



assume(x,'real');
assume(y,'real');
Z3 = expand(ad_fng)


 V1=[Z3(1),Z3(2), 0]; % chosen
 vars = [x y z];

assume(x,'real');
assume(y,'real');


 gg=((gradient(divergence(V1,vars),vars)) - curl(curl(V1,vars),vars))

assume(x,'real');
assume(y,'real');


xxx=linspace(-2.*pi,2.*pi,20);
yyy=linspace(-2.*pi,2.*pi,20);
zzz=linspace(-2.*pi,2.*pi,20);
M=linspace(.1,4,20)

XX1=subs(gg(1),[x y z m],{xxx yyy,zzz,M});
YY1=subs(gg(2),[x y z m],{xxx yyy,zzz,M});
ZZ1=subs(gg(3),[x y z m],{xxx yyy,zzz,M});
R=(sqrt((XX1.^2)+(YY1.^2)+(ZZ1.^2)))


Dirac=log10(exp(-R./M))  
Dirac1=double(exp(-XX1./M)) 
Dirac2=double(exp(-YY1./M)) 
Dirac3=double(exp(-ZZ1./M)) 


figure % 1st
quiver3(xxx,yyy,zzz,Dirac1,Dirac2,Dirac3)
xlabel('Dirac_X')
ylabel('Dirac_Y')
zlabel('Dirac_Z')
xticks([  0.1 .5 1 1.5 2 2.5 3 3.5 4 4.5 5])


figure
plot3(M,R,Dirac)
xlabel('M')
ylabel('R')
zlabel('Dirac')
%
M2=2           % .1 2  The corretion
  xx2=-2.*pi:2.*pi;
  yy2=-2.*pi:2.*pi;
 zz2=yy2
 [xxxx,yyyy,zzzz]=meshgrid(xx2,yy2,zz2);
 
XX2=subs(gg(1),[x y z m],{xxxx yyyy,zzzz,M2});
YY2=subs(gg(2),[x y z m],{xxxx yyyy,zzzz,M2});
ZZ2=subs(gg(3),[x y z m],{xxxx yyyy,zzzz,M2});

figure 
quiver3(xxxx,yyyy,zzzz,XX2,YY2,ZZ2,'red')
hold on
 vert1=stream3(double(xxxx),double(yyyy),double(zzzz),double(XX2),double(YY2),double(ZZ2),double(XX2),double(YY2),double(ZZ2));
 streamline(vert1)
xlabel('X')
ylabel('Y') 
zlabel('Z')


 n=Dirac;  
 Membrane_Potential=((log10(n)).*61.5); 
 figure
 plot(M,Membrane_Potential)
xlabel('M')
ylabel('Membrane Potential')
xticks([  0.1 .5 1 1.5 2 2.5 3 3.5 4 4.5 5])

% Figure.8     for N=4 and N=7, 
clc;
clear;
syms x y z m a b;
assume([x y z], 'real');

% Define the expressions for V3 and P
V3 = -((x*1.0/sqrt(x^2 + y^2 + z^2))/z) + (y*1.0/sqrt(x^2 + y^2 + z^2))/z + ...
    (y*conj(m)*1.0/sqrt(x^2 + y^2 + z^2))/z - x^2*y*1.0/z^3*conj(m)*1.0/sqrt(x^2 + y^2 + z^2);
P = ((y^2) * (z^2) - (x^3) * (z^3) - a * (x^2) * z - b + x);

% Calculate derivatives and integrals
Fx = diff(P, x) + V3;
Fy = diff(P, y) + V3;
Fz = diff(P, z) + V3;
FFx = int(Fx, x);
FFy = int(Fy, y);
FFz = int(Fz, z);

% Summation terms for gg1, gg2, gg3
NN = 4; % The input can be 4 or 7 like the paper
syms i;
gg1 = (real(symsum((FFx^i) / ((log((x - i) / exp((x - i) * (y - i) * (z - i))) * Fx^i + (x + i))), i, 1, NN)));
gg2 = (real(symsum((FFy^i) / ((log((y - i) / exp((x - i) * (y - i) * (z - i))) * Fy^i + (y + i))), i, 1, NN)));
gg3 = (real(symsum((FFz^i) / ((log((z - i) / exp((x - i) * (y - i) * (z - i))) * Fz^i + (z + i))), i, 1, NN)));

% Define numerical grids and constants
xxx = linspace(-2 * pi, 2 * pi, 20);
yyy = linspace(-2 * pi, 2 * pi, 20);
zzz = linspace(-2 * pi, 2 * pi, 20);
M = linspace(0.1, 4, 20);
A = 5;
B = 2;

% Substitute values for gg1, gg2, gg3 over initial grid
XX1 = double(subs(gg1, [x y z a b m], {xxx, yyy, zzz, A, B, M}));
YY1 = double(subs(gg2, [x y z a b m], {xxx, yyy, zzz, A, B, M}));
ZZ1 = double(subs(gg3, [x y z a b m], {xxx, yyy, zzz, A, B, M}));

% Calculate R and Dirac functions
R = sqrt(XX1.^2 + YY1.^2 + ZZ1.^2);
Dirac = real(log10(exp(-R ./ M)));
Dirac1 = real(double(exp(-XX1 ./ M)));
Dirac2 = real(double(exp(-YY1 ./ M)));
Dirac3 = real(double(exp(-ZZ1 ./ M)));

% Membrane potential calculation
Membrane_Potential = (log10(Dirac) * 61.5);

% Additional grid definitions for the vector field plots
M2 = 2;
xx2 = -2 * pi:2 * pi;
yy2 = -2 * pi:2 * pi;
zz2 = yy2;
[xxxx, yyyy, zzzz] = meshgrid(xx2, yy2, zz2);

% Substitute values for gg1, gg2, gg3 over the new meshgrid
XX2 = double(subs(gg1, [x y z a b m], {xxxx, yyyy, zzzz, A, B, M2}));
YY2 = double(subs(gg2, [x y z a b m], {xxxx, yyyy, zzzz, A, B, M2}));
ZZ2 = double(subs(gg3, [x y z a b m], {xxxx, yyyy, zzzz, A, B, M2}));

% Plot the vector field using quiver3 and streamline
figure
for i=1:length(xxxx)
quiver3(xxxx, yyyy, zzzz, XX2, YY2, ZZ2, 'red');
vert1 = stream3(double(xxxx), double(yyyy), double(zzzz), double(XX2), double(YY2), double(ZZ2), double(XX2), double(YY2), double(ZZ2));
streamline(vert1);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Neural Network in form of Vector Fields');
end


% Plot membrane potential

figure
for i=1:length(M)
plot(M, Membrane_Potential);
xlabel('M');
ylabel('Membrane Potential');
xticks([0.1 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5]);
end




