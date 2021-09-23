


gcloud beta builds triggers import --source="trigger-branch.yaml" --project="big-rob"




# gcloud beta builds triggers create github \
# --name="test-trigger-branch" \
# --repo-name="firebase-hosting" \
# --repo-owner="sapientcoffee" \
# --branch-pattern=".*" \ 
# --build-config="cloudbuild.yaml"


    # gcloud beta builds triggers create github \
    # --repo-name=REPO_NAME \
    # --repo-owner=REPO_OWNER \
    # --branch-pattern=BRANCH_PATTERN \ # or --tag-pattern=TAG_PATTERN
    # --build-config=BUILD_CONFIG_FILE \
    # --service-account=SERVICE_ACCOUNT \
    # --require-approval
# gcloud beta builds triggers create github \
# --name="test-trigger-branch" \
# --repo-name=firebase-hosting \
# --repo-owner=sapientcoffee \
# --pull-request-pattern="^staging$" \ 
# --build-config="cloudbuild.yaml" 