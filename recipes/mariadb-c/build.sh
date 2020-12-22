#!/usr/bin/env bash

set -ex

cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  .

make -k -j${CPU_COUNT} || true

make install
