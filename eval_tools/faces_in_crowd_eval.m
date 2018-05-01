clear;
close all;
addpath(genpath('./plot'));
%Please specify your prediction directory.
pred_dir = '../results/test.mat';
gt_dir = '../ground_truth/faces_in_crowds.mat';
setting_class = 'setting_int';
%Please specify your algorithm name.
legend_name = 'sr-hr';
setting_name ='hard_val';
load(pred_dir);
pre_list=face_result_list;
evaluation(pre_list,gt_dir,setting_name,setting_class,legend_name);
dateset_class = 'Val';
% scenario-Int:
seting_class = 'int';
dir_int = sprintf('./plot/baselines/%s/setting_%s',dateset_class, seting_class);
crowd_plot(setting_name,dir_int,seting_class,dateset_class);
