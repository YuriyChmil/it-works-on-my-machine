# it-works-on-my-machine
install k8s cluster or minikube
```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
UI access:
```
kubectl port-forward svc/argocd-server -n argocd 8080:443
```
GET PASSWORD FOR ARGOCD:
```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```
DEPLOY FIRST TIME APPS
```
 kubectl apply -f k8s/argocd/application-backend.yaml
 kubectl apply -f k8s/argocd/application-frontend.yaml

```