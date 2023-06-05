library(irtoys)
library(psych)

#学力テスト１の反応行列の読み込み
#file_name <- "./Data/irt_1pl_make100_5_500.dat"
item <- read.fortran(paste(file_name, "skills/skill_", i,"_",train_mode, ".dat", sep=""),c(paste(ITEM,"F1.0", sep="")),header=F)

pl.value <-paste(PL, "PL", sep="")

#１母数、２母数モデルの項目母数の推定
ipl<-est(item,model=pl.value,engine="ltm", rasch=T)[[1]]
#ipl2<-est(item,model="2PL",engine="ltm")[[1]]
theta = round(eap(item,ipl,normal.qu())[,c(1,2)],3)
#print("rr")
write.table(theta,paste(file_name,"irts/trait_",i,"_",train_mode,".txt", sep=""))
print(theta)
