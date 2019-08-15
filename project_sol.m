

lambda_A = 28;
lambda_B = 14;

lambda_1 = lambda_A;
lambda_2 = lambda_B;
lambda_3 = lambda_1 + lambda_2; % from figure it is clear that lambda3=(lambda1 + lambda2)

mu_1 = 104;
mu_2 = 81;
mu_3 = 210;


trials = 100;
N = zeros(4, trials);
for i = 1:trials
    endtime = 1600/60; % convert seconds to minutes;
    N1 = Q5MM1(lambda_1, mu_1, 1600/60);
    N2 = Q5MM1(lambda_2, mu_2, 1600/60);
    N3 = Q5MM1(lambda_3, mu_3, 1600/60);

    N(1, i) = mean(N1);
    N(2, i) = mean(N2);
    N(3, i) = mean(N3);
    N(4, i) = mean(N1) + mean(N2) + mean(N3);
end

mean(N(1,:))
mean(N(2,:))
mean(N(3,:))
mean(N(4,:))