#!/bin/bash
set -ex

STAN_VER=${PKG_VERSION:0:${#PKG_VERSION}-2}

# These folders are not needed in the build and we don't want to include them
# in the package. This should be cleaned via MANIFEST.in.
pushd pystan/stan/lib/stan_math
rm -fr doc doxygen make test lib/cpplist_* lib/gtest_*
popd

python setup.py install -q --single-version-externally-managed --record=record.txt
