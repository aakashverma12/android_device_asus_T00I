#!/bin/sh

set -e

export DEVICE=T00I
export VENDOR=asus
./../../$VENDOR/ctp-common/setup-makefiles.sh $@
