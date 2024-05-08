export CGO_ENABLED=0
go env -w GO111MODULE=off
rm -rf ~/go/src/github.com/docker
mkdir ~/go/src/github.com/docker
ln -sf /home/zhaixiaojuan/docker-project/libnetwork ~/go/src/github.com/docker/libnetwork
#cd "$GOPATH/src/github.com/docker/libnetwork"
go build -o docker-proxy github.com/docker/libnetwork/cmd/proxy
