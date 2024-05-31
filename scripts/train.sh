accelerate launch train_phi3v.py \
    --data_path /path/to/your/training/data.json \
    --image_folder /path/to/your/image/folder \
    --model_id /path/to/Phi-3-vision-128k-instruct \
    --output_dir output/test_train_lora \
    --num_train_epochs 1 \
    --batch_size 1 \
    --gradient_accumulation_steps 8 \
    --deepspeed_config scripts/zero2.json \
    --target_modules 10 \
    --max_seq_length 3072 \
    --quantization \
    --report_to tensorboard \
    --logging_dir tf-logs \
    --lora_rank 128 \
    --lora_alpha 256 \
    --lora_dropout 0.05 \
    --logging_steps 1 \
    --dataloader_num_workers 4