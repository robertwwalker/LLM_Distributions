load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.M1.1.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.1.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.2.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.3.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.4.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.5.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.6.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.7.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.8.0806.RData")
load("~/Distribution_LLM_Reasearch/Final-Prompt-Results/uniform-08-06/Full.Unif.0.9.0806.RData")
Complete.Uniform.0806 <- dplyr::bind_rows(Full.Unif.M1.1.0806, Full.Unif.0.1.0806, Full.Unif.0.2.0806, Full.Unif.0.3.0806, Full.Unif.0.4.0806, Full.Unif.0.5.0806, Full.Unif.0.6.0806, Full.Unif.0.7.0806,Full.Unif.0.8.0806,Full.Unif.0.9.0806)
save(Complete.Uniform.0806, file="Complete.Uniform.0806.RData")