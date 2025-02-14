filenms <- dir("./new-calls/")
file.adjuster <- function(filename) {
  filename2 <- gsub("-Revised.jsonl","-Revised-0409.jsonl", filename)
  J1 <- stream_in(file(paste0("./new-calls/",filename,sep="")))
  J1$body$model <- "gpt-4-turbo-2024-04-09"
  stream_out(J1, file(paste0("./new-calls/",filename2,sep="")))
}
sapply(filenms, function(x) {file.adjuster(x)})