function p = Huber_w(k1,v)
%% Huber Ȩ����
V = abs(v);
if V > k1
   p = k1/V;
else
   p = 1;
end