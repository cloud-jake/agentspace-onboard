#!/bin/bash

#PROJECT_ID="YOUR_PROJECT_ID"
PROJECT_NUM=`gcloud projects describe $PROJECT_ID --format="value(projectNumber)"`

gcloud storage buckets create gs://${PROJECT_ID} --location=us --project=$PROJECT_ID

# Set permissions for SA
gcloud storage buckets add-iam-policy-binding gs://${PROJECT_ID} --member=serviceAccount:${PROJECT_NUM}-compute@developer.gserviceaccount.com --role=roles/storage.objectUser

