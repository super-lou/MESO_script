print("test")

library(Rmpi)
rank = mpi.comm.rank(comm=0)
size = mpi.comm.size (comm=0)
hostname = mpi.get.processor.name()

msg = paste0("Hello world from task ", rank, " of ", size, " on host ", hostname)
print(msg)
