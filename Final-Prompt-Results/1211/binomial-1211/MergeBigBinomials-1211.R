load("CompleteBinom.01.1211.RData")
load("CompleteBinom.02.1211.RData")
load("CompleteBinom.03.1211.RData")
load("CompleteBinom.04.1211.RData")
load("CompleteBinom.05.1211.RData")
load("CompleteBinom.06.1211.RData")
load("CompleteBinom.07.1211.RData")
load("CompleteBinom.08.1211.RData")
load("CompleteBinom.09.1211.RData")
Complete.Binomial.1211 <- dplyr::bind_rows(Complete.Binom.01.1211,
                                           Complete.Binom.02.1211, 
                                           Complete.Binom.03.1211,
                                           Complete.Binom.04.1211,
                                           Complete.Binom.05.1211,
                                           Complete.Binom.06.1211,
                                           Complete.Binom.07.1211,
                                           Complete.Binom.08.1211,
                                           Complete.Binom.09.1211)
save(Complete.Binomial.1211, file="Complete.Binomial.1211.RData")