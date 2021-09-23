# Firebase Hotsing Demo

## Setup
export PROJECT_ID=
firebase hosting init



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


```


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