# Passing
* Ubuntu 18.04.5 LTS
# Failing
* Ubuntu 20.04.2 LTS


# Ubuntu 18 Install
* wget -O boost_1_55_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz/download
* tar xzvf boost_1_55_0.tar.gz
* cd boost_1_55_0/
* ./bootstrap.sh --prefix=/usr/
* ./b2
* sudo ./b2 install

## Ports
* P2P 19126
* RPC 19326


## Building BMoreCoin 

### On *nix

Dependencies: GCC 4.7.3 or later, CMake 2.8.6 or later, and Boost 1.55.

You may download them from:


- [ ] * http://gcc.gnu.org/ (  sudo apt install gcc )
- [ ] * http://www.cmake.org/ ( sudo apt install cmake)
- [ ] * http://www.boost.org/ ( sudo apt-get install libboost-all-dev )
- [ ] * Alternatively, it may be possible to install them using a package manager.

- [ ] To build, change to a directory where this file is located, and run `make`. The resulting executables can be found in `build/release/src`.
- [x] make -j2 -e --include-dir=include/CryptoNoteConfig.h test-release test-debug build-test build-release build-debug -k 

**Advanced options:**

- [ ] * Parallel build: run `make -j<number of threads>` instead of `make`.
- [ ] * Debug build: run `make build-debug`.
- [ ] * Test suite: run `make test-release` to run tests in addition to building. Running `make test-debug` will do the same to the debug version.
- [ ] * Building with Clang: it may be possible to use Clang instead of GCC, but this may not work everywhere. To build, run `export CC=clang CXX=clang++` before running `make`.

### On Windows
- [ ] Dependencies: MSVC 2013 or later, CMake 2.8.6 or later, and Boost 1.55. You may download them from:

- [ ]  http://www.microsoft.com/
- [ ]  http://www.cmake.org/
- [ ]  http://www.boost.org/

- [ ] To build, change to a directory where this file is located, and run theas commands: 
```
mkdir build
cd build
cmake -G "Visual Studio 12 Win64" ..
```

- [ ] And then do Build.
- [ ] Good luck!
