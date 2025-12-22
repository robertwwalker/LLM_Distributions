filenms <- dir("./new-calls/")
file.adjuster <- function(filename) {
  filename2 <- gsub("-Revised.jsonl","-Revised-1211.jsonl", filename)
  J1 <- stream_in(file(paste0("./new-calls/",filename,sep="")))
  J1$body$model <- "gpt-5.2-2025-12-11"
  J1$body$reasoning_effort <- "low"
  J1$body$max_completion_tokens <- 1500
  J1$body$temperature <- NULL
  J1$body$max_tokens <- NULL
  stream_out(J1, file(paste0("./new-calls/",filename2,sep="")))
}
sapply(filenms, function(x) {file.adjuster(x)})