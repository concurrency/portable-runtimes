import os

env = Environment(
  # ENV = {'PATH' : os.environ['PATH']},
  CPPATH=["libtvm", "posix"],
  LIBPATH=["libtvm"],
  CC="clang",
  CFLAGS=["-m32", "-v"],
  LINKFLAGS=["-m32", "-v"],
  #AR=["llvm-ar-6.0"],
  LDMODULE="ld.lld",
  SHLINK="ld.lld"
)
Export("env")

SConscript('libtvm/SConscript')
SConscript('posix/SConscript')
