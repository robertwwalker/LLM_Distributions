load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.1.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.2.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.3.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.4.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.5.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.6.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.7.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.8.RData")
load("/Volumes/Work/Sandbox/Distribution_LLM_Reasearch/Final-Prompt-Results/chisquare/Full.Chisq.9.RData")
Complete.Chisq.0806 <- bind_rows(Full.Chisq.1, Full.Chisq.2, Full.Chisq.3, Full.Chisq.4, Full.Chisq.5, Full.Chisq.6, Full.Chisq.7, Full.Chisq.8, Full.Chisq.9)
save(Complete.Chisq.0806, file="CompleteChisq.0806.RData")