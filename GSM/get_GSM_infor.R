# BiocInstaller::biocLite('GEOmetadb')
library(GEOmetadb)
if(!file.exists('GEOmetadb.sqlite')) getSQLiteFile()
# trying URL 'http://starbuck1.s3.amazonaws.com/sradb/GEOmetadb.sqlite.gz'
#  (439.8 MB)
file.info('GEOmetadb.sqlite')
con <- dbConnect(SQLite(),'GEOmetadb.sqlite')
#dbListTables(con)
#dbListFields(con, "gsm")

all_files=list.files('metaFiles',pattern = 'txt')
lapply(all_files, function(x){
  # x=all_files[1]
  a=read.table(file.path('metaFiles',x),sep = '\t')
  ## 获取GSM信息，在 GEOmetadb.sqlite 数据库。
  ## 使用SQL语言进行查询: select - from - where - in (-) 
  query_list<-paste("select * from gsm where gsm in ( '",gsub(",","','",paste(a[,2],collapse=",")),"' )",sep="")
  ## 获取查询结果
  query_result<-dbGetQuery(con,query_list)
  
  output_filename<-substr(x,1,(nchar(x)-4))
  output_path<-paste("GSM_infor\\gsm_info_",output_filename,".csv",sep="")
  write.csv(query_result,output_path)
  
})

#close connection
dbDisconnect(con)
