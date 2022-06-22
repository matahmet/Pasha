

xdf=J_df

m=99999
n=length(xdf)
raw_mat<-matrix(data=0,nrow=n,ncol=16)
report_data<-as.data.frame(raw_mat)
column_name<-c("WS_par","WS_pseudo","WS_RS_par","WS_RS_pseudo","WRB_par","WRB_pseudo","WRB_RS_par","WRB_RS_pseudo","WRN_par","WRN_pseudo","WRN_RS_par","WRN_RS_pseudo","WLB_par","WLB_pseudo","WLB_RS_par","WLB_RS_pseudo")
names(report_data)<-column_name
row_name<-names(xdf)
report_row_name<-as.data.frame(row_name)
report_global_SAC<-cbind(report_row_name,report_data)


for(i in 1:n){
  #for WS
  output<-Resampling_Global_Moran(xdf[,i],WS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WS_par[i]<-parameter
  report_global_SAC$WS_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WS_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WS_RS_par[i]<-parameter
  report_global_SAC$WS_RS_pseudo[i]<-pseudo
  
  #for WRB
  output<-Resampling_Global_Moran(xdf[,i],WRB,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRB_par[i]<-parameter
  report_global_SAC$WRB_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WRB_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRB_RS_par[i]<-parameter
  report_global_SAC$WRB_RS_pseudo[i]<-pseudo
  
  
  #for WRN
  output<-Resampling_Global_Moran(xdf[,i],WRN,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRN_par[i]<-parameter
  report_global_SAC$WRN_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WRN_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRN_RS_par[i]<-parameter
  report_global_SAC$WRN_RS_pseudo[i]<-pseudo
  
  #for WLB
  
  output<-Resampling_Global_Moran(xdf[,i],WLB,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WLB_par[i]<-parameter
  report_global_SAC$WLB_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WLB_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WLB_RS_par[i]<-parameter
  report_global_SAC$WLB_RS_pseudo[i]<-pseudo
  
  print("###################################################")
  print(round(i/n,2))
  print("###################################################")
  
  
}

report_G_J<-report_global_SAC
save(report_G_J,file="report_G_J.Rdata")


################################################################################



xdf=K_df

m=99999
n=length(xdf)
raw_mat<-matrix(data=0,nrow=n,ncol=16)
report_data<-as.data.frame(raw_mat)
column_name<-c("WS_par","WS_pseudo","WS_RS_par","WS_RS_pseudo","WRB_par","WRB_pseudo","WRB_RS_par","WRB_RS_pseudo","WRN_par","WRN_pseudo","WRN_RS_par","WRN_RS_pseudo","WLB_par","WLB_pseudo","WLB_RS_par","WLB_RS_pseudo")
names(report_data)<-column_name
row_name<-names(xdf)
report_row_name<-as.data.frame(row_name)
report_global_SAC<-cbind(report_row_name,report_data)


for(i in 1:n){
  #for WS
  output<-Resampling_Global_Moran(xdf[,i],WS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WS_par[i]<-parameter
  report_global_SAC$WS_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WS_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WS_RS_par[i]<-parameter
  report_global_SAC$WS_RS_pseudo[i]<-pseudo
  
  #for WRB
  output<-Resampling_Global_Moran(xdf[,i],WRB,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRB_par[i]<-parameter
  report_global_SAC$WRB_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WRB_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRB_RS_par[i]<-parameter
  report_global_SAC$WRB_RS_pseudo[i]<-pseudo
  
  
  #for WRN
  output<-Resampling_Global_Moran(xdf[,i],WRN,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRN_par[i]<-parameter
  report_global_SAC$WRN_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WRN_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WRN_RS_par[i]<-parameter
  report_global_SAC$WRN_RS_pseudo[i]<-pseudo
  
  #for WLB
  
  output<-Resampling_Global_Moran(xdf[,i],WLB,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WLB_par[i]<-parameter
  report_global_SAC$WLB_pseudo[i]<-pseudo
  
  output<-Resampling_Global_Moran(xdf[,i],WLB_RS,m)
  parameter<-round(output$parameter,4)
  pseudo<-output$pseudo_p
  report_global_SAC$WLB_RS_par[i]<-parameter
  report_global_SAC$WLB_RS_pseudo[i]<-pseudo
  
  print("###################################################")
  print(round(i/n,2))
  print("###################################################")
  
  
}

report_G_K<-report_global_SAC
save(report_G_K,file="report_G_K.Rdata")


################################################################################



