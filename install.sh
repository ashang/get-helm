#!/bin/bash
# get lastest OS X helm version from bintray

bin_version=$(curl -I https://bintray.com/deis/helm-ci/helm/_latestVersion | grep "Location:" | sed -n 's/.*git-\([^ ]*\)view/\1/p' | tr -d '/' | tr -d '\r' )
curl -L "https://dl.bintray.com/deis/helm-ci/helm-git-$bin_version-darwin-amd64.zip" -o helm.zip