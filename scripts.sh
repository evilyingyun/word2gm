#python word2gm_trainer.py --train_data data/text8 --save_path modelfiles/word2gm
#python word2vec_optimize.py --train_data data/text8 --eval_data evaluation_data/questions-words.txt --save_path modelfiles/word2vec
#python word2gm_trainer_repvec.py --rep gm --train_data data/text8 --save_path modelfiles/word2gm_repvec_gm
#python word2gm_trainer_repvec.py --rep vec --train_data data/text8 --save_path modelfiles/word2gm_repvec --num_samples 1
# Now we focus on adding the character emb model

# Using character embedding
python word2gm_trainer_repvec.py --concurrent_steps 1 --rep vec --train_data data/text8 --save_path modelfiles/word2gm_repvec_char --num_samples 2 --char_emb  #--no-use_batch_norm --no_use_highway