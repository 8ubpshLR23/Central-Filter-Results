
# python main_win.py \
# --arch resnet_50 \
# --resume pre_train_model/ImageNet/resnet50.pth \
# --data_dir /home/featurize/data \
# --dataset ImageNet \
# --job_dir /home/featurize/work/CCCrank5 \
# --compress_rate [0.]+[0.1,0.1,0.2]*1+[0.5,0.5,0.2]*2+[0.1,0.1,0.2]*1+[0.5,0.5,0.2]*3+[0.1,0.1,0.2]*1+[0.5,0.5,0.2]*5+[0.1,0.1,0.1]+[0.2,0.2,0.1]*2 \
# --num_workers 8 \
# --batch_size 64 \
# --epochs 2 \
# --lr_decay_step 1 \
# --lr 0.001 \
# --save_id 1 \
# --weight_decay 0. \
# --input_size 224 \
# --start_cov 0 \


# python main_win.py \
# --arch resnet_50 \
# --from_scratch True \
# --resume pruned_checkpoint/resnet_50_cov52.pt \
# --compress_rate [0.]+[0.1,0.1,0.2]*1+[0.5,0.5,0.2]*2+[0.1,0.1,0.2]*1+[0.5,0.5,0.2]*3+[0.1,0.1,0.2]*1+[0.5,0.5,0.2]*5+[0.1,0.1,0.1]+[0.2,0.2,0.1]*2 \
# --num_workers 8 \
# --epochs 30 \
# --lr 0.001 \
# --lr_decay_step 5,15 \
# --save_id 11 \
# --batch_size 64 \
# --weight_decay 0.0005 \
# --input_size 224 \
# --data_dir /home/featurize/data \
# --dataset ImageNet \
# --job_dir /home/featurize/work/CCCrank5 


python main_win.py \
--arch resnet_50 \
--from_scratch True \
--resume finally_pruned_model/resnet_50_1107_3.pt \
--num_workers 8 \
--epochs 10 \
--lr 0.00001 \
--lr_decay_step 10 \
--save_id 22 \
--batch_size 64 \
--weight_decay 0.0005 \
--input_size 224 \
--data_dir /home/featurize/data \
--dataset ImageNet \
--job_dir /home/featurize/work/CCCrank5 