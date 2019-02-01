function sq_err = squared_err(params, ntrials, rot, y_data)


% A = 0.95;
% B = 0.2;
% trials = 1:99

A = params(1);
B = params(2);





y_pred = SSM_simulator(A, B, ntrials, rot);

% Calculate Squared Error - between data and simulation
sq_err = nansum( (y_data' - y_pred).^2);


% figure; hold on;
% plot(1:ntrials, y_data, '.b')
% plot(1:ntrials, y_pred, '.r')
% str = sprintf('A = %.3f, B = %.3f, rSq = %.3f', A, B, sq_err);
% title(str)
end