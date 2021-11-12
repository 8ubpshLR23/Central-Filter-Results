

@echo off
set root=C:\Users\huxf\Desktop\dyztmp\
set pojname=CCCrank2
set arch=resnet_50  
start cmd /c ^
"cd /D %root%%pojname%  ^
& %root%dyzenv\Scripts\python.exe main_win.py ^
--arch resnet_50 ^
--resume ../pre_train_model/ImageNet/resnet50.pth ^
--compress_rate [0.]+[0.2,0.2,0.65]*1+[0.75,0.75,0.65]*2+[0.15,0.15,0.65]*1+[0.75,0.75,0.65]*3+[0.15,0.15,0.65]*1+[0.75,0.75,0.65]*5+[0.15,0.15,0.35]+[0.5,0.5,0.35]*2 ^
--num_workers 4 ^
--epochs 2 ^
--job_dir %root%%pojname% ^
--lr 0.001 ^
--lr_decay_step 1 ^
--save_id 1 ^
--batch_size 64 ^
--weight_decay 0. ^
--input_size 224 ^
--start_cov 0 ^
--dataset ImageNet ^
--data_dir G:\ImageNet ^
& pause"





@echo off
set root=C:\Users\huxf\Desktop\dyztmp\
set pojname=CCCrank2
set arch=resnet_50  
start cmd /c ^
"cd /D %root%%pojname%  ^
& %root%dyzenv\Scripts\python.exe main_win.py ^
--arch resnet_50 ^
--from_scratch True ^
--resume finally_pruned_model/resnet_50_1111_1.pt ^
--num_workers 4 ^
--epochs 30 ^
--job_dir %root%%pojname% ^
--lr 0.001 ^
--lr_decay_step 5,20 ^
--save_id 1 ^
--batch_size 64 ^
--weight_decay 0.0005 ^
--input_size 224 ^
--dataset ImageNet ^
--data_dir G:\ImageNet ^
& pause"


