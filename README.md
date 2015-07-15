# protobuf 3 docker with go support

Tiny docker image with protoc 3 and go plugin.

Part of nanoservice docker image library.

## Usage

    # Just print protobuf help message
    docker run -it --rm \
      nanoservice/protobuf-go --help

    # Use current folder for input and output
    docker run -it --rm -v $PWD:/src:rw \
      nanoservice/protobuf-go --go_out=. *.proto

    # If you ran into problems with user uid and gid (consider scripting it)
    docker run -it --rm -v $PWD:/user-src:rw -u $(id -u):$(id -g) -w /user-src \
      nanoservice/protobuf-go --go_out=. *.proto

## Contributing

1. Fork it ( https://github.com/nanoservice/docker-protobuf-go/fork )
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create a new Pull Request

## Contributors

* [waterlink](https://github.com/waterlink) Oleksii Fedorov, creator, maintainer
