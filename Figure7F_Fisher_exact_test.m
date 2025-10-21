clear; close all;
load("Figure7F_data.mat");

% Assume IT:PT neuron ratio (3:2)
it_ratio = 3; pt_ratio = 2;
fraction_it = it_ratio / (it_ratio + pt_ratio);

rbp4_data = table2array(Rbp4_cre_data(:,1:2)); 
thy1_data = table2array(Thy1_GCaMP6s_data(:,1:2));

rbp4_total = rbp4_data(:,1);
rbp4_obs   = rbp4_total .* rbp4_data(:,2);
thy1_resp_total = round(sum(thy1_data(:,1) .* thy1_data(:,2)));
thy1_total = round(sum(thy1_data(:,1)));

PT_range = 0:0.001:1;
p_fisher = NaN(length(PT_range),1);
inferred_IT_ratio = NaN(length(PT_range),1);

n_it_total = round(sum(rbp4_total * fraction_it));
n_pt_total = round(sum(rbp4_total)) - n_it_total;
rbp4_resp_total = round(sum(rbp4_obs));

for i = 1:length(PT_range)
    pt_rsp = PT_range(i);

    n_pt_resp = pt_rsp * n_pt_total;

    % Infer IT responders
    n_it_resp = rbp4_resp_total - n_pt_resp;

    if n_it_resp < 0, n_it_resp = 0; end
    if n_it_resp > n_it_total, n_it_resp = n_it_total; end

    % Compute IT ratio
    inferred_IT_ratio(i) = n_it_resp / n_it_total;

    % Fisher's exact test: inferred IT vs Thy1
    A = round(n_it_resp);               % Inferred IT responders
    B = n_it_total - A;                 % Non-responders
    C = thy1_resp_total;               % Thy1 responders
    D = thy1_total - C;                % Thy1 non-responders

    contingency = [A B; C D];
    [~, p] = fishertest(contingency, 'Tail', 'right');
    p_fisher(i) = min(p,1);  % cap at 1
end

% Plot: p-value and inferred IT response
figure('Color', 'w');

plot(PT_range, inferred_IT_ratio, '-', 'LineWidth', 2.5);
ylabel('Chkbd. response ratio', 'FontSize', 14);
ylim([0 0.7]); yticks(0:0.2:1);
xlim([0 0.74]);

xlabel('Assumed PT Chkbd. response ratio', 'FontSize', 14);
xticks(0:0.2:1);

hold on;
yline(thy1_resp_total/thy1_total,'-','LineWidth',2.5,'Color',[206 82 27]/255);
[~,idx] = min(abs(p_fisher - 0.05));
xline(PT_range(idx),'--','LineWidth',2.5,'Color',[0.5 0.5 0.5]);

set(gca, 'FontSize', 12, ...
         'LineWidth', 2.5, ...
         'TickDir', 'out', ...
         'Box', 'off', ...
         'TickLength', [0.015 0.015]);

set(gcf, 'Position', [680   659   368   339]);