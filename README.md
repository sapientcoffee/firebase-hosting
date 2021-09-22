# Firebase Hotsing Demo

## Setup
export PROJECT_ID=
firebase hosting init



## Hosting

firebase deploy --only hosting


## Build Container Image

### Dockerfile 

```
gcloud builds submit --tag gcr.io/$PROJECT_ID/coffeefire
```

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