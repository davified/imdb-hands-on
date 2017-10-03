# IMDB Sentiment Analysis: Hands-on exercise

Data source: [Kaggle](https://www.kaggle.com/c/word2vec-nlp-tutorial#description)

## Get started
1. Clone the repo
2. Run setup.sh
3. Activate virtual environment: `source .venv/bin/active`
4. Start the notebook: `jupyter notebook`

## What is happening in the notebook
1. Load movie review data (contains review id, review text and sentiment (0 or 1; i.e. negative or positive)
2. Vectorize each review. (i.e. turn texts into sequences (=list of word indexes, where the word of rank i in the dataset (starting at 1) has index i))
  - we train the tokenizer with `.fit_on_texts(our_texts)`.
	- we use it and the internal vocabulary that it just learnt to convert our review text into a sequence of indexes using `.texts_to_sequences()`
  - play around with it! after calling .fit_on_texts(), you can explore the `tokenizer` with attributes such as `tokenizer.word_counts` and `tokenizer.word_index`
	- Note: Tokenizer takes in a `num_words` parameter, which is the maximum number of words to work with (if set, tokenization will be restricted to the top `num_words` most common words in the dataset).

3. Preprocess data into a vector that Keras will accept
  - zero pad sequences
	- train_test_split

4. Build and train neural network model
