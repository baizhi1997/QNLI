
export GLUE_DIR=../glue_data
export TASK_NAME=QNLI

python run_classifier.py \
	--task_name $TASK_NAME \
	--do_test \
	--do_lower_case \
	--data_dir $GLUE_DIR/$TASK_NAME \
	--bert_model bert-base-uncased \
	--max_seq_length 128 \
	--train_batch_size 32 \
	--learning_rate 2e-5 \
	--num_train_epochs 50.0 \
	--output_dir $GLUE_DIR/$TASK_NAME/results
