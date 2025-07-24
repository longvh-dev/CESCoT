#!/bin/sh

export CUDA_VISIBLE_DEVICES=0
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

run_name='supervised_llama2'

python supervised_finetuning_cot.py \
    --base_model './pretrained_models/Llama-2-7b-chat-hf' \
    --dataset_name './data/instructions' \
    --lr_scheduler_type 'cosine' \
    --learning_rate 1e-5 \
    --max_steps 10000 \
    --save_freq 200 \
    --seq_length 1024 \
    --batch_size 2 \
    --run_name $run_name \
    --output_dir './checkpoints/cot/'$run_name \
    --no_bf16 
