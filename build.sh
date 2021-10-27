rm -r -f artifacts
mkdir artifacts
pkgbuild --root ./files --identifier com.ericstj.sample --version 1.0.0 --install-location /usr/local/share/ericstj_test artifacts/ericstj.sample.pkg
productbuild --identifier ericstj.sample.product --version 1.0.0 --distribution distribution.xml --package-path artifacts/ artifacts/ericstj.sample.product.pkg
productbuild --identifier ericstj.sample.relocate.product --version 1.0.0 --distribution relocate.xml --package-path artifacts/ artifacts/ericstj.sample.relocate.product.pkg

# repack
rm -r -f artifacts/ericstj.sample.product
pkgutil --expand artifacts/ericstj.sample.product.pkg artifacts/ericstj.sample.product
pkgutil --flatten artifacts/ericstj.sample.product artifacts/ericstj.sample.product-repack.pkg 

# this illustrates the size difference after repacking
ls -l artifacts/ericstj.sample.product*pkg