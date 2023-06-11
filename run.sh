###### FOR INFERENCE
CUDA_VISIBLE_DEVICES='0' python -m torch.distributed.launch --master_port 1 --nproc_per_node=1 --use_env main.py\
--model deit_tiny_patch16_224 --batch-size 1000 --data-path path/to/data --output_dir some/random/path

###### FOR TRAINING
CUDA_VISIBLE_DEVICES='0,1,2,3' python -m torch.distributed.launch --master_port 1 --nproc_per_node=4 --use_env main_train.py\
--model deit_tiny_patch16_224 --batch-size 256 --data-path path/to/data --output_dir some/random/path



