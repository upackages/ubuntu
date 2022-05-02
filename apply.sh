#!/bin/bash

render() {
sedStr="
  s!%%UBUNTU_VERSION%%!$version!g;
  s!%%MAINTAINER%%!$maintainer!g;
  s!%%REPOSITORY%%!$repository!g;
"

sed -r "$sedStr" $1
}

maintainer=(hello@unately.com)
versions=(bionic focal jammy latest)
repository=(https://github.com/upackages/ubuntu)

for version in ${versions[*]}; do
  mkdir $version
  render Dockerfile.template > $version/Dockerfile
done