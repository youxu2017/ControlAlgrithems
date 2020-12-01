function dy = func(x,f)
% 初始值 
    dy = [0;
          0];
    dy(1) = f(2);
    dy(2) = f(2) +f(1);
end