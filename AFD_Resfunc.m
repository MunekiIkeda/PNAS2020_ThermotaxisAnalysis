function est = AFD_Resfunc(Interval, TEMP)

StepSize = Interval;
load('Resfunc.mat');
tmp = (200-StepSize:-StepSize:0);
RESFunc = zeros(1, length(tmp));

for I=1:length(N)
    RESfunc =  K{N(I)}(2)*tmp.^K{N(I)}(3).*exp(K{N(I)}(4)*(-tmp))+K{N(I)}(5)*tmp.^K{N(I)}(6).*exp(K{N(I)}(7)*(-tmp));
    for k=1:length(RESFunc)
        RESFunc(k) = RESFunc(k)+RESfunc(k);
    end
end

for k=1:length(RESFunc)
    RESFunc(k) = RESFunc(k)/length(N);    
end

n = 3;
Kd = 100;
Ts = 17;
window_size = length(RESFunc);

hf_TEMP = (TEMP - Ts).^n./(Kd+(TEMP - Ts).^n);
hf_TEMP(TEMP < Ts) = 0;
[X, Y]=meshgrid(1:window_size, 0:length(hf_TEMP)-window_size);
INDEX=X+Y;
hf_wp=hf_TEMP(INDEX);

est = hf_wp*RESFunc';