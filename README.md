# agentspace-onboard
Enable permissions and APIs for Agentspace Onboarding

## BigQuery Dataset

1 - Create a dataset in the US region if you don’t already have one. This example uses the dataset name “eval” and Q&A data from [SQuAD](https://rajpurkar.github.io/SQuAD-explorer/). Note that you need to preprocess the data into tabular format (CSV, JSONL, etc.)
2 - Create a new table in the dataset above. This example uses the dataset name “qna”.
3 - Upload your evaluation data to the table above. This example uses a dataset with the columns “target”, “question”, and “article”, but you can specify your own column names and schema.

