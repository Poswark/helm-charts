# helm-charts
Demo sobre Helm Charts

```console
giovannyorjuelamelo@MacBook-Pro-de-Giovanny helm-charts % helm create fastapi-web
Creating fastapi-web
```

```console
giovannyorjuelamelo@MacBook-Pro-de-Giovanny helm-charts % tree
.
├── README.md
└── fastapi-web
    ├── Chart.yaml
    ├── charts
    ├── templates
    │   ├── NOTES.txt
    │   ├── _helpers.tpl
    │   ├── deployment.yaml
    │   ├── hpa.yaml
    │   ├── ingress.yaml
    │   ├── service.yaml
    │   ├── serviceaccount.yaml
    │   └── tests
    │       └── test-connection.yaml
    └── values.yaml

5 directories, 11 files
```

```console
giovannyorjuelamelo@MacBook-Pro-de-Giovanny helm-charts % helm install beta1 personal-web  
NAME: beta1
LAST DEPLOYED: Fri Jan 26 23:07:56 2024
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=personal-web,app.kubernetes.io/instance=beta1" -o jsonpath="{.items[0].metadata.name}")
  export CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT
```