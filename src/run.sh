#!/bin/sh -x

# Toys_and_Games
#python main.py --model_name POP --train 0 --dataset 'Toys_and_Games'

#python main.py --model_name BPRMF --emb_size 64 --lr 1e-3 --l2 1e-6 --dataset 'Toys_and_Games'

#python main.py --model_name NeuMF --emb_size 64 --layers '[64]' --lr 5e-4 --l2 1e-7 --dropout 0.2 --dataset 'Toys_and_Games'

#python main.py --model_name BUIR --emb_size 64 --lr 1e-3 --l2 1e-6 --dataset 'Toys_and_Games'

python main.py --model_name GRU4Rec --emb_size 64 --hidden_size 100 --lr 1e-3 --l2 1e-4 --history_max 20 --dataset 'Toys_and_Games'

python main.py --model_name NARM --emb_size 64 --hidden_size 100 --attention_size 4 --lr 1e-3 --l2 1e-4 --history_max 20 --dataset 'Toys_and_Games'

python main.py --model_name Caser --emb_size 64 --L 5 --num_horizon 64 --num_vertical 32 --lr 1e-3 --l2 1e-4 --history_max 20 --dataset 'Toys_and_Games'

#python main.py --model_name SASRec --emb_size 64 --num_layers 1 --num_heads 1 --lr 1e-4 --l2 1e-6 --history_max 20 --dataset 'Toys_and_Games'

#python main.py --model_name ContraRec --emb_size 64 --lr 1e-4 --l2 1e-6 --history_max 20 --encoder BERT4Rec --gamma 1 --temp 0.2 --batch_size 4096 --dataset 'Toys_and_Games'

#python main.py --model_name TiSASRec --emb_size 64 --num_layers 1 --num_heads 1 --lr 1e-4 --l2 1e-6 --history_max 20 --dataset 'Toys_and_Games'

#python main.py --model_name CFKG --emb_size 64 --margin 1 --include_attr 1 --lr 1e-4 --l2 1e-8 --dataset 'Toys_and_Games'

python main.py --model_name SLRCPlus --emb_size 64 --lr 5e-4 --l2 1e-5 --dataset 'Toys_and_Games'

#python main.py --model_name Chorus --emb_size 64 --margin 1 --lr 5e-4 --l2 1e-5 --epoch 50 --early_stop 0 --batch_size 512 --dataset 'Toys_and_Games' --stage 1
#python main.py --model_name Chorus --emb_size 64 --margin 1 --lr_scale 0.1 --lr 1e-3 --l2 0 --dataset 'Toys_and_Games' --base_method 'BPR' --stage 2

python main.py --model_name KDA --emb_size 64 --include_attr 1 --freq_rand 0 --lr 1e-3 --l2 1e-6 --num_heads 4 --history_max 20 --dataset 'Toys_and_Games'
