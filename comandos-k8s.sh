kubectl create deployment demis --image=mguazzardo/miphp:latest
kubectl expose deployment demis --port=80 --type=NodePort

