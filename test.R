print("test")

library("Rmpi")

size = mpi.universe.size()
print(size)
print("")

mpi.spawn.Rslaves(nslaves=size-1)
rank = mpi.comm.rank()
print(rank)
