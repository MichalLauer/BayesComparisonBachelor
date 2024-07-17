cat("*** Removing .aux files")
files <- list.files(path = ".", pattern = ".*\\.aux")
invisible(lapply(files, file.remove))