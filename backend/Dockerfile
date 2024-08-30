FROM alpine:latest

RUN apk add --no-cache unzip

# download and unzip PocketBase
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.22.18/pocketbase_0.22.18_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /backend/


EXPOSE 8090

#CMD ["/backend/pocketbase", "serve", "--http=0.0.0.0:8090"]
