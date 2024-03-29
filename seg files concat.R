rm(list=ls(all=TRUE))


dir_location <- "/Users/achernia/Documents/synapse_d/segfiles"
setwd(dir_location)

files_list <- list.files(pattern = ".seg")
number_files <- length(files_list)
i <- 1
for(i in 1:number_files){
  temp_seg <- read.delim(files_list[i])
  if(i == 1){
    total_seg <-  temp_seg
  }else{
    total_seg <- rbind(total_seg, temp_seg)
    print(i)
  }
  
  
  
}


 write.table(total_seg ,"all_HaS.seg" , quote = F, row.names = F, sep = "\t")
