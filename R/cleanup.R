cat("*** Removing .aux files")
files <- list.files(path = ".", pattern = ".*\\.(aux|lol)$", recursive = T)
invisible(lapply(files, file.remove))