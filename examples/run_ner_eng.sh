#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=2 python examples/NER.py --mode LSTM --num_epochs 200 --batch_size 8 --hidden_size 128 --num_filters 30 \
 --learning_rate 0.1 --decay_rate 0.05 --schedule 10 20 30 40 50 60 70 80 90 100 120 140 160 180 --gamma 0.0 --dropout std --p 0.5 \
 --embedding glove --embedding_dict "data/glove/glove.6B/glove.6B.100d.gz" --output_prediction \
 --train "data/conll2003/english/eng.train.bioes.conll" --dev "data/conll2003/english/eng.dev.bioes.conll" --test "data/conll2003/english/eng.test.bioes.conll" 