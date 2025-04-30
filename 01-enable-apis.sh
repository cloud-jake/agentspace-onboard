#!/bin/bash

#PROJECT_ID=

gcloud services enable \
  aiplatform.googleapis.com \
  discoveryengine.googleapis.com \
  bigquery.googleapis.com \
  storage.googleapis.com \
  iam.googleapis.com \
  notebooks.googleapis.com \
  --project=$PROJECT_ID


