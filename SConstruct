import os

env = Environment(
  CPPATH=["libtvm", "posix"],
  LIBPATH=["libtvm"],
  CC="emcc",
  AR="emar",
  RANLIB="emranlib",
  CFLAGS=["-m32"],
  LINKFLAGS=["-m32", "--emrun"],
  ENV = {'PATH' : os.environ['PATH']}
)
Export("env")

SConscript('libtvm/SConscript')
SConscript('posix/SConscript')
