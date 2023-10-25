coco_path=$1
backbone_dir=$2
export CUDA_VISIBLE_DEVICES=0 && python main.py \
	--output_dir logs/train/4SCALE-SWIN -c config/DINO_4scale_swin.py --coco_path $coco_path \
	--options dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0 backbone_dir=$backbone_dir \
    --pretrain_model_path checkpoint0029_4scale_swin.pth \
    --finetune_ignore label_enc.weight class_embed
