env = Environment(
  CPPATH=["libtvm", "posix"],
  LIBPATH=["libtvm"],
  #LDFLAGS=["-m32"]
)
Export("env")

SConscript('libtvm/SConscript')
SConscript('posix/SConscript')
