Codika Weather API 
Gabriel Alejandro Lopez, alelopez.utnfrt@gmail.com
==============================================

Test API to check weather status in cities

Environment
----------------------------------------------

- Ruby version: `2.4.0`
- Rails version: `5.1.1`
- Ruby version manager: `rvm`

Configuration
----------------------------------------------

- `bundle install`
- `rails db:setup`

Usage
----------------------------------------------

Example with cURL:

1. `bundle exec rails server`

2. Register a user
```
curl -X POST \
  http://localhost:3000/api/v1/auth \
  -H 'cache-control: no-cache' \
  -H 'content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW' \
  -F email=<email> \
  -F password=<password> \
  -F password_confirmation=<password_confirmation>
```

3. Get session tokens
```
curl -X POST \
  http://localhost:3000/api/v1/auth/sign_in \
  -H 'cache-control: no-cache' \
  -H 'email: <email>' \
  -H 'password: <password>' \
```

4. Copy Access-Token, Client and Uid

5. Get posts with tokens
```
curl -X GET \
  'http://localhost:3000/api/v1/weathers?name=<name>' \
  -H 'access_token: <access_token>' \
  -H 'cache-control: no-cache' \
  -H 'client: <client>' \
  -H 'uid: <uid>'
```
