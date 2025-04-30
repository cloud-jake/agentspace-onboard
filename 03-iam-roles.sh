#!/bin/bash

#PROJECT_ID="YOUR_PROJECT_ID"

PROJECT_NUM=`gcloud projects describe $PROJECT_ID --format="value(projectNumber)"`

SA="${PROJECT_NUM}-compute@developer.gserviceaccount.com"

MEMBERS=(
  user:user1@example.com
  user:user2@example.com
  serviceAccount:$SA
)

ROLES=(
  "roles/aiplatform.admin"
  "roles/bigquery.admin"
  "roles/cloudbuild.builds.editor"
  "roles/cloudbuild.integrations.editor"
  "roles/iam.serviceAccountAdmin"
  "roles/resourcemanager.projectIamAdmin"
  "roles/storage.admin"
  "roles/iam.serviceAccountUser"
  "roles/discoveryengine.user"
)

for MEMBER in "${MEMBERS[@]}"; do
  for ROLE in "${ROLES[@]}"; do
    gcloud projects add-iam-policy-binding "$PROJECT_ID" \
      --member="$MEMBER" \
      --role="$ROLE"
  done
done
