write("test", stdout())

library("Rmpi")

size = mpi.universe.size()
write(size, stdout())
write("", stdout())

mpi.spawn.Rslaves(nslaves=size-1)
rank = mpi.comm.rank()
write(rank, stdout())
