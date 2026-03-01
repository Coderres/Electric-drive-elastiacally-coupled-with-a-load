% Copyright
% Prof. Dr. Alexander Viehweider, Berliner Hochschule für Technik
% ---------------------------------------------------------------

d_welle = 0.1;
c_welle = 900;

thetaA = 1;
thetaM = 0.1;

w0 = sqrt(((thetaA+thetaM)*c_welle)/(thetaA*thetaM));

disp('f0');
disp(w0/(2*pi));


n=1000;

a=linspace(0.1,30,n);

T1=zeros(1,n);
T2=zeros(1,n);
T=zeros(1,n);

for l=1:size(a,2)

    w=a(l)*2*3.14;

    s=w*1i;

    T1(l) = (1/(s*(thetaA+thetaM)));
    T2(l) = (1+s*d_welle/c_welle) / ...    
            (1+(s*d_welle/c_welle)+(s^2)/w0^2);

    T(l)=T1(l)*T2(l);
end

figure(1);
plot(log(a),20*log(abs(T)));
axis([-3 4 -250 50])


f=zeros(1,7);

T1=zeros(1,7);
T2=zeros(1,7);
T=zeros(1,7);



f(1) = 0.1;
f(2) = 1;
f(3) = 2;
f(4) = 5;
f(5) = 10;
f(6) = 15.8568;
f(7) = 30;


for m=1:1:7

    w=f(m)*2*pi;

    s=w*1i;

    T1(m) = (1/(s*(thetaA+thetaM)));
    T2(m) = (1+s*d_welle/c_welle) / ...    
            (1+(s*d_welle/c_welle)+(s^2)/(w0^2));

    Tabs(m) = abs(T1(m)*T2(m)) ;

    disp('Frequenz')
    disp(f(m));
    disp('Betrag')
    disp(Tabs(m));

end
