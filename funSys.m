function dxdt = funSys(t, x, beta1, alpha2, beta2, p, T)
f2 = -alpha2*x(2)+beta2*x(1)*x(2);
%для просмотра значения управления u
%u = beta1*x(2)+p*f2*x(1)^(-1)-(x(1)-p*x(2))*(T*x(1))^(-1);
%dxdt(1) = u*x(1)-beta1*x(1)*x(2);
dxdt(1) = p*f2-T^(-1)*(x(1)-p*x(2));
dxdt(2) = f2;
dxdt = dxdt';
end