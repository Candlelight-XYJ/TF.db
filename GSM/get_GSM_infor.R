# BiocInstaller::biocLite('GEOmetadb')
library(GEOmetadb)
if(!file.exists('GEOmetadb.sqlite')) getSQLiteFile()
# trying URL 'http://starbuck1.s3.amazonaws.com/sradb/GEOmetadb.sqlite.gz'
#  (439.8 MB)
file.info('GEOmetadb.sqlite')
con <- dbConnect(SQLite(),'GEOmetadb.sqlite')
dbDisconnect(con)

all_files=list.files('metaFiles',pattern = 'txt')
lapply(all_files, function(x){
 # x=all_files[1]
  a=read.table(file.path('metaFiles',x),sep = '\t')
  ## 获取GSM信息，在 GEOmetadb.sqlite 数据库。
})
