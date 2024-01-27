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