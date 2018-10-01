##### This file is to store different versions of TF.db

### 2018.10.01 TF_v2.db update to TF_v3.db
1.TF.db新增gsm_info表，目前数据库含5张表 : 
+ gsm_info : 所有gsm的信息
+ human_gene_info_list:包含所有gene的entrez id , symbols和gene name
+ human_gene_position_list：所有来自gencode文件的ensembl_id及gene对应的position（hg38和hg19）
+ human_ncbi2ensembl:gene_id与ensembl_id相互转换的文件
+ mouse_gene_list : 包含所有小鼠gene的list

2.**！注意** 由于新增gsm_info表，数据库占存储量太大，TF_v3.db（约120M）已经压缩并上传云盘（解压后约7G），需要通过云盘进行下载，链接地址：https://pan.baidu.com/s/1Dm8YpY2bNhmLapSgOAgRwg

