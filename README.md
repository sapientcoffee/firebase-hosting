# Firebase Hotsing Demo

## Setup

You will require;
* 2x GCP Projects with Firebase eneabled
* GitHub repo linked to the GCP project(s)
* Enable Cloud Build API and correct SA


export PROJECT_ID_STAGE="coffee-stage"
export PROJECT_ID_PROD="coffee-live"
firebase hosting init

### Cloud Build Firebase Community Builder

```
git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community/firebase
gcloud builds submit .
cd ../..
rm -rf cloud-builders-community/
```

gcloud builds submit --config cloudbuild.yaml .


## Hosting

firebase deploy --only hosting


### Create Dev/Prod projects

```bash
# Swap between projects
firebase use

# To create new aliases, for example link "dev" to one of the projects
firebase use --add
```

This will create a file `.firebaserc` which will have the config, you can also alter this directly. An example is;

```json
{
  "projects": {
    "prod": "big-rob",
    "dev": "coffee-with-rob"
  }
}
```

Now allows you to specify the environment with the CLI;

```bash
firebase deploy --only hosting --project dev
```

## Build Container Image

### Dockerfile 

```
gcloud builds submit --tag gcr.io/$PROJECT_ID/coffeefire
```


`predeploy` hooks in firebase.json 

predeplopy : ["npm ci", "npm run build"],


### Buildpacks




deploy to cloud run

```
gcloud run deploy --image gcr.io/$PROJECT_ID/coffeefire
```



`firebase.json`

```
firebase deploy
```

## Lets Pipeline it

cloud build for hosting deployment

cloud build of Cloud RUn deployment 