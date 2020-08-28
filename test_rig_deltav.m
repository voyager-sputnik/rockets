%% A script to find delta_V

spec_impulse = 'What is the value for Specific Impulse';

i_sp = input(spec_impulse)

input_mass_i = 'Please enter initial value of mass';
mass_i = input(input_mass_i)

input_mass_f = 'Please enter final value of mass';
mass_f = input(input_mass_f)

g = 9.8
%mass_ratio = input(mass_i/mass_f);

delta_v = (i_sp * g * log(mass_i/mass_f));

result = ['Delta V for current test rig is = ',num2str(delta_v),' ft/s'];
disp(result)

%% PLot Delta V vs Specific Impulse
title ('DeltaV for the test rig')
figure
plot(i_sp,delta_v,"red--o")