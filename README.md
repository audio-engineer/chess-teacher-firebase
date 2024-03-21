# ChessTeacher Firebase

Copy [`service-account-file.json.sample`](./service-account-file.json.sample) into `service-account-file.json` and add
the credentials obtained from the Firebase project admin to it.

Now build the image by running:

```shell
docker build -t audio-engineer/chess-teacher-firebase:latest .
```

## Local Development

```shell
docker compose up -d
```
