# Remove old docs
rm -r /build/html/* /build/html/.*

# Build new docs
make BUILDDIR=/build html

# Bypass Jekyll for GitHub Pages
touch /build/html/.nojekyll

# Change permissions to include write
chmod -R o+w /build/html
