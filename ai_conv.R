library(OEKA201AssignmentOPAMPJ)
library(R6)
#sp <- "R/ai.R"
#source(sp)
lmod <- c("openai/gpt-5.1",
          "groq/llama3-8b-8192",
          "google_gemini/gemini-2.5-flash",
          "anthropic/claude-sonnet-4-20250514",
          "perplexity/sonar")[1]
#####################################################################################################################################################
fill <- "assignment_r.qmd"
fils <- "AIrep/qmdrds/conv.qmd"
###
nysm <- T
psys <- "
- Format: Quarto
- Språk: English
"
pque <- " 
Provide the strengths and weaknesses of the current assignment.
"
AIint(pque,fils=fils,fill=fill,init=nysm,psys=psys,lmod=lmod)
##################################################################################################################3
# Continue conversation
#AIint("?",fils=fils,fill=fill,init=F,psys=psys,lmod=lmod)
#fils <- "AIrep/qmdrds/abc.qmd"
##################################################################################################################3

