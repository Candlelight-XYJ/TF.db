##### This file is to store different versions of TF.db


### 2018.10.13 TF_v4.db update to TF_v5.db
1.TF.db add four tables：
+ human_all_tfs：all transfacotrs in human，source from HumanTFDB
+ mouse_all_tfs：all transfacotrs in mouse，source from AnimalTFDB
+ human_tf_2_gsm：gsm_id and human transfactors，cell line，cell，tissue
+ mouse_tf_2_gsm：gsm_id and mouse transfactors，cell line，cell，tissue


### 2018.10.08 TF_v3.db update to TF_v4.db
1.TF.db更新gsm_info表，只选取常用的gsm信息，目前可正常从TF.db读取，gsm_info包含：
+ human_gsm_info
+ mouse_gsm_info


### 2018.10.01 TF_v2.db update to TF_v3.db
1.TF.db新增gsm_info表，目前数据库含5张表 : 
+ gsm_info : 所有gsm的信息
+ human_gene_info_list:包含所有gene的entrez id , symbols和gene name
+ human_gene_position_list：所有来自gencode文件的ensembl_id及gene对应的position（hg38和hg19）
+ human_ncbi2ensembl:gene_id与ensembl_id相互转换的文件
+ mouse_gene_list : 包含所有小鼠gene的list

2.**Attention** 由于新增gsm_info表，数据库占存储量太大，TF_v3.db（约120M）已经压缩并上传云盘（解压后约7G），
需要通过云盘进行下载，链接地址：https://pan.baidu.com/s/1Dm8YpY2bNhmLapSgOAgRwg





