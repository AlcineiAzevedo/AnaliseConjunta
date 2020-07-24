#Apagar memoria do r
remove(list=ls())
#indicar pasta de trabalho
setwd("D:/Backup Pendrive/UFMG/Disciplinas/Estatistica experimental/2018_1/Pos graduacao/Pratica/Psub e Conjunta")
#carregar conjunto de dados
D=read.table("AnaliseConjunta2.txt",head=T)
#instalar pacote
#install.packages("easyanova")
#Ativar pacote
library(easyanova)
#Abrir manual
?easyanova
#Analise conjunta com todos os tratamentos
ea2(D,design = 11)
#Analise conjunta apenas com os experimentos cujos QMRs são homogeneos.
D2=D[D$Local!=1,]
ea2(D2,design = 11)
