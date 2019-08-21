#!/bin/bash
cd $GOPATH/src/github.com/NoMacSec/terraform-provider-esxi
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -extldflags "-static"' -o $OLDPWD/terraform-provider-esxi_`cat version` 