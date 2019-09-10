# Test Flask app

This app is meant to test your Docker orchestration deployment such as Docker Swarm, Kubernetes or ECS. It gives you basic network details.

### Run
The app listens on port 8000

```
docker run -d -p 8000:8000 flask-demo 
```


#### Using a custom port 
```
docker run -e PORT=9000 -p 9000:9000 flask-demo
```

