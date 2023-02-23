
print("test")

library("Rmpi")

size = mpi.comm.size()
rank = mpi.comm.rank()

print(rank)
