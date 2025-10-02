Run:

```
docker build -t auth .
docker run -d -p 3000:3000 -e RAILS_MASTER_KEY=51b624d346bd88b443d608f53dcfa10d --name auth auth
```

Test:

```
curl -XPOST localhost:3000/users -H 'Content-Type: application/json' -d '{ "email": "test@a.com", "password": "password" }'
```
