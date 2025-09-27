sudo apt update
sudo apt install git cmake ninja-build gcc g++ wget
git clone --depth 1 --branch release/18.x https://github.com/llvm/llvm-project llvm-project-18
cd llvm-project-18
mkdir build-release
cd build-release
cmake ../llvm \
  -DCMAKE_INSTALL_PREFIX=../../llvm-release \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_PROJECTS="lld;clang" \
  -DLLVM_ENABLE_LIBXML2=OFF \
  -DLLVM_ENABLE_TERMINFO=OFF \
  -DLLVM_ENABLE_LIBEDIT=OFF \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DLLVM_PARALLEL_LINK_JOBS=1 \
  -G Ninja
  ninja install
cd ../..
./zig/build/stage3/bin/zig version
