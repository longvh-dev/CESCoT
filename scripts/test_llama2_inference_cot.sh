#!/bin/bash

# Define the model path and GPU id as variables
MODEL_PATH="checkpoint path"
JSON_PATH="./data/instructions/val_instruction.json"
GPU_ID=0

# Execute the Python script with the model path and GPU id as arguments
python test_llama2_inference_cot.py --model_path $MODEL_PATH --gpu_id $GPU_ID --json_path $JSON_PATH
