import os

env = Environment(
  # ENV = {'PATH' : os.environ['PATH']},
  CPPATH=["libtvm", "posix"],
  LIBPATH=["libtvm"],
  CC="clang",
  CFLAGS=["-m32"],
  LINKFLAGS=["-m32"],
)
Export("env")

SConscript('libtvm/SConscript')
SConscript('posix/SConscript')
