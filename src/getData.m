%% Created by Xuan Anh Nguyen    03/10/2018

%%%%% Configuration file %%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIRECTORIES - please change if copying the code to a new location
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Choose one skill
%Handled automatically

%% Directory holding all the experiment image frames
DATA_DIR = '../data/JIGSAWS/';

%% Directory holding the codebook, i.e., the k-mean clusters
CODEBOOK_DIR = '../data/codebook/';

%% Feature directory - holds all features
FEATURE_DIR = '../data/feature/';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% dataset parameters 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% number of classes 
num_class = 3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% bag-of-words parameters 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Transform
transform = 'wavelet';

%% length of subsequences
sub_length = 8;

%% over points between slideing window
inter_point = 3;

segment_size = 180; %[90,120,150,180]
step = 30; %[30,60]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% codebook parameters 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% size of codebook
VQ.Codebook_Size = 100;
%% Max number of k-means iterations
VQ.Max_Iterations = 25;
%% Verbsoity of Mark's code
VQ.Verbosity = 0;


INCLUDE_INTERMS = false;


%% Original section
dataX = [];
dataX0 = [];
dataX1 = [];
dataX2 = [];
num_trial = 0;
t1 = 0;
t2 = 0;
t3 = 0;

capture_ind = 1;

if INCLUDE_INTERMS
    OUTPUT_DIR = '../data/augment_data_from_csvs/';
else
    OUTPUT_DIR = '../data/augment_data_from_csvs/no_interm/'; 
end

skill = 'Knot_Tying';
skill_short = 'Knot';

for userid = 'B':'I'
    for i = 1:5
        if ((userid == 'B' && i == 5)||(userid == 'H' && (i == 1||i == 2))||(userid=='I' && i == 4))
            continue;
        end
        file_name = strcat(DATA_DIR,skill,'/video/csvs/',skill_short,'_',userid,'_00',num2str(i),'_',num2str(capture_ind),'.csv');
        disp(file_name);
        a1 = csvread(file_name);
        a = a1;
        k = 1;
        while k + segment_size <= size(a,1)
            b = [];
            for j = 1:size(a,2)
                dataX_add = a(k : k + segment_size - 1,j);
                b = [b,dataX_add];
            end
            
            if (userid == 'B') || (userid =='G') || (userid =='H') || (userid =='I')
                t1 = t1 + 1;
                dataX0{1,t1} = b;
                dataX0{2,t1} = userid;
                dataX0{3,t1} = i;
            elseif INCLUDE_INTERMS && (userid == 'C') || (userid =='F')  
                t2 = t2 + 1;
                dataX1{1,t2} = b;
                dataX1{2,t2} = userid;
                dataX1{3,t2} = i;
            elseif (userid == 'D') || (userid =='E') 
                t3 = t3 + 1;
                dataX2{1,t3} = b;     
                dataX2{2,t3} = userid;
                dataX2{3,t3} = i;
            end
            k = k + step;
            num_trial = num_trial + 1;
        end
    end
end

dataX{1,1} =  dataX0;
dataX{1,2} =  dataX1;
dataX{1,3} =  dataX2;

%% Save data
save(strcat(OUTPUT_DIR,skill_short,'_dataX_basic_',num2str(segment_size),'_', num2str(step),'.mat'), 'dataX'); 


%% Original section
dataX = [];
dataX0 = [];
dataX1 = [];
dataX2 = [];
num_trial = 0;
t1 = 0;
t2 = 0;
t3 = 0;

skill = 'Needle_Passing';
skill_short = 'Needle';

for userid = 'B':'I'
    for i = 1:5
        if ((userid=='B' && i==5) || (userid == 'E' && i == 2)|| (userid=='F' && (i == 2 || i == 5))|| (userid=='G')||(userid == 'H' && (i == 1||i == 3))||(userid=='I' && i == 1))
            continue;
        end
        file_name = strcat(DATA_DIR,skill,'/video/csvs/',skill_short,'_',userid,'_00',num2str(i),'_',num2str(capture_ind),'.csv');
        disp(file_name);
        a1 = csvread(file_name);
        a = a1;
        k = 1;
        while k + segment_size <= size(a,1)
            b = [];
            for j = 1:size(a,2)
                dataX_add = a(k : k + segment_size - 1,j);
                b = [b,dataX_add];
            end
            
            if (userid == 'B') || (userid =='G') || (userid =='H') || (userid =='I')
                t1 = t1 + 1;
                dataX0{1,t1} = b;
                dataX0{2,t1} = userid;
                dataX0{3,t1} = i;
            elseif  INCLUDE_INTERMS && (userid == 'C') || (userid =='F')  
                t2 = t2 + 1;
                dataX1{1,t2} = b;
                dataX1{2,t2} = userid;
                dataX1{3,t2} = i;
            elseif (userid == 'D') || (userid =='E') 
                t3 = t3 + 1;
                dataX2{1,t3} = b;     
                dataX2{2,t3} = userid;
                dataX2{3,t3} = i;
            end
            k = k + step;
            num_trial = num_trial + 1;
        end
    end
end

dataX{1,1} =  dataX0;
dataX{1,2} =  dataX1;
dataX{1,3} =  dataX2;

%% Save data
save(strcat(OUTPUT_DIR,skill_short,'_dataX_basic_',num2str(segment_size),'_', num2str(step),'.mat'), 'dataX'); 
%% Original section
dataX = [];
dataX0 = [];
dataX1 = [];
dataX2 = [];
num_trial = 0;
t1 = 0;
t2 = 0;
t3 = 0;

skill = 'Suturing'; 
skill_short = 'Suture';


for userid = 'B':'I'
    for i = 1:5
        if (userid=='H' && i == 2)
            continue;
        end
        file_name = strcat(DATA_DIR,skill,'/video/csvs/',skill_short,'_',userid,'_00',num2str(i),'_',num2str(capture_ind),'.csv');
        disp(file_name);
        a1 = csvread(file_name);
        a = a1;
        k = 1;
        while k + segment_size <= size(a,1)
            b = [];
            for j = 1:size(a,2)
                dataX_add = a(k : k + segment_size - 1,j);
                b = [b,dataX_add];
            end
            
            if (userid == 'B') || (userid =='G') || (userid =='H') || (userid =='I')
                t1 = t1 + 1;
                dataX0{1,t1} = b;
                dataX0{2,t1} = userid;
                dataX0{3,t1} = i;
            elseif  INCLUDE_INTERMS && (userid == 'C') || (userid =='F')  
                t2 = t2 + 1;
                dataX1{1,t2} = b;
                dataX1{2,t2} = userid;
                dataX1{3,t2} = i;
            elseif (userid == 'D') || (userid =='E') 
                t3 = t3 + 1;
                dataX2{1,t3} = b;     
                dataX2{2,t3} = userid;
                dataX2{3,t3} = i;
            end
            k = k + step;
            num_trial = num_trial + 1;
        end
    end
end

dataX{1,1} =  dataX0;
dataX{1,2} =  dataX1;
dataX{1,3} =  dataX2;

%% Save data
save(strcat(OUTPUT_DIR,skill_short,'_dataX_basic_',num2str(segment_size),'_', num2str(step),'.mat'), 'dataX'); 
