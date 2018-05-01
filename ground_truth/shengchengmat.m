
 load('crowds_ucf_face_val.mat');
 load('crowds_other_face_val.mat');
 load('crowds_wider_face_val.mat');
 
 data_set_list=cell(3,1);
 data_set_list{1}='1_crowd_counting_data_set';
 data_set_list{2}='2_FDDB_AFW_and_web';
 data_set_list{3}='3_wider_face';
 
 face_box_list=cell(3,1);
 face_box_list{1}=crowds_ucf_face_val;
 face_box_list{2}=crowds_other_face_val;
 face_box_list{3}=crowds_wider_face_val;
  
 train_list=cell(3,1);
 train_list{1}=[2 4 5 6 9];
 train_list{2}=[3 4 5 6 7];
 train_list{3}=[1 4 5 6 7];
 
 eval_list=cell(3,1);
 eval_list{1}=[1 3 7 8 10];
 eval_list{2}=[1 2 8 9 10];
 eval_list{3}=[2 3 8 9 10];
 
 save('faces_in_crowds','data_set_list','face_box_list','train_list','eval_list');
 clear;
 