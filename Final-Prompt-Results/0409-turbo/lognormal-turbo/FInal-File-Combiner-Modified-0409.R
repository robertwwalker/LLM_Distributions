load("Full.LNormal.0.1.0409.RData")
load("Full.LNormal.0.5.0409.RData")
load("Full.LNormal.5.5.0409.RData")
load("Full.LNormal.5.1.0409.RData")
load("Full.LNormal.M5.5.0409.RData")
load("Full.LNormal.M5.1.0409.RData")
Complete.Lognormal.0409 <- dplyr::bind_rows(Full.LNormal.0.1.0409, Full.LNormal.0.5.0409, Full.LNormal.M5.1.0409, Full.LNormal.M5.5.0409, Full.LNormal.5.1.0409, Full.LNormal.5.5.0409)
save(Complete.Lognormal.0409, file="CompleteLognormal.0409.RData")