multiple_archives <-JSTORr ::: JSTOR_unpack_multiple_archives() #unpack multiple zips

JSTOR_1word(multiple_archives, "commodity") 
JSTOR_2words(multiple_archives, "standardization", "ceramic")
JSTOR_2wordcor(multiple_archives, "ceramic", "standardization")

nouns <-  JSTOR_dtmofnouns(multiple_archives, sparse = 0.75) #create corpus of nouns
JSTOR_freqwords(multiple_archives, nouns)
JSTOR_findassocs(multiple_archives, nouns, "ceramic")
JSTOR_clusterbywords(nouns, "ceramic")

my_model <- JSTOR_lda(mulitple_archives, nouns, 50) #generate topic model
JSTOR_lda_docdists(my_model)
JSTOR_lda_hotncoldtopics(my_model)
