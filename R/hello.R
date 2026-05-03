# Hello, world!
#
# This is an example function named 'hello' 
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}




count_words_qmd <- function(file) {
  text <- readLines(file, warn = FALSE)
  
  # Remove YAML header
  if (length(text) > 2 && text[1] == "---") {
    end_yaml <- which(text[-1] == "---")[1] + 1
    text <- text[-seq_len(end_yaml)]
  }
  
  # Remove code chunks
  in_chunk <- grepl("^```", text)
  chunk_id <- cumsum(in_chunk)
  text <- text[!(chunk_id %% 2 == 1)]
  
  # Remove markdown links but keep link text
  text <- gsub("\\[([^]]+)\\]\\(([^)]+)\\)", "\\1", text)
  
  # Remove markdown symbols
  text <- gsub("[#>*_`~\\-]", " ", text)
  
  words <- unlist(strsplit(paste(text, collapse = " "), "\\s+"))
  words <- words[nchar(words) > 0]
  
  length(words)
}



