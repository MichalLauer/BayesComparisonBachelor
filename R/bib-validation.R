refs <- suppressMessages(bib2df::bib2df("./literatura.bib"))
refs <- refs[, c("BIBTEXKEY", "KEYWORDS")]

# Není chybějící keyword
no_kw <- refs[is.na(refs$KEYWORDS), ]
if (nrow(no_kw) > 0) {
  missing <- paste0(no_kw$BIBTEXKEY, collapse = ", ")
  cat(">> !!",
      paste(nrow(no_kw), "x záznamů nemá klíčové slovo. Jedná se o:", missing),
      "\n")
}

# Je to pouze balicek, literature
wrong_kw <- refs[!(refs$KEYWORDS %in% c("literatura", "balicek")), ]
wrong_kw <- na.omit(wrong_kw)
if (nrow(wrong_kw) > 0) {
  missing <- paste0(wrong_kw$BIBTEXKEY, collapse = ", ")
  cat(">> !!",
      paste(nrow(wrong_kw), "x má špatné klíčové slovo. Jedná se o:", missing),
      "\n")
}
