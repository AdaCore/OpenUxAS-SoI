set -e
set -x

mkdir -p $TOOLS_DIR
cd $TOOLS_DIR

# Clone OpenUxAS-bootstrap repository, pull the last changes if it exists
if ! [ -d OpenUxAS-bootstrap ]
then
    git clone https://github.com/AdaCore/OpenUxAS-bootstrap.git;
    envsubst < $TRAVIS_BUILD_DIR/.travis-bootstrap.patch
    cd OpenUxAS-bootstrap;
    git checkout DAIDALUS_integration;
    patch -d$TOOLS_DIR/OpenUxAS-bootstrap/ -p0 < $TRAVIS_BUILD_DIR/.travis-bootstrap.patch;

else
   (cd OpenUxAS-bootstrap && git pull)
fi

# Install the sandbox (we're not using the install_env script because
# Travis python is already a virtual environment.
pip install wheel
pip install zmq
pip install git+https://github.com/AdaCore/e3-core.git
