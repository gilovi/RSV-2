function  LMMSE2( num_of_points)
%
sigmas = linspace(1,.0001);
snr = 10.*log10(1./sigmas);

P_error = zeros(size(sigmas,2));
for i = 1 : size(sigmas,2)
   [~,P_error(i)] = LMMSE1(num_of_points,sigmas(i));
end

semilogy(snr,P_error)

end

