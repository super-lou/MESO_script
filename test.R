
print("test")

library("Rmpi")
ns <- mpi.universe.size() - 1
print(ns)
mpi.spawn.Rslaves(nslaves=ns)
print("a")
