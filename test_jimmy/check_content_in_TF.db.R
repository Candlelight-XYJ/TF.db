library(RSQLite)
# http://www.bio-info-trainee.com/1421.html
library(DBI)
# Create an ephemeral in-memory RSQLite database
con <- dbConnect(RSQLite::SQLite(), "TF.db")
dbListTables(con)
dbListFields(con, "human_gene_list")
human_gene_list=dbReadTable(con, "human_gene_list")
