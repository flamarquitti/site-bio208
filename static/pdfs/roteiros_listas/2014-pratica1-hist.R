if(!require(RCurl)){install.packages('RCurl'); library(RCurl)}
if(!require(ggplot2)){install.packages('ggplot2'); library(ggplot2)}
if(!require(reshape2)){install.packages('reshape2'); library(reshape2)}

PlotHistograms = function(file_url, cor){
    cenario_df = read.csv(textConnection(file_url))
    m_cenario = melt(cenario_df[,-1], id.vars = "Grupo")
    ggplot(m_cenario, aes(value, group = variable)) + geom_histogram(fill=cor, binwidth = 0.5)+ facet_wrap(~variable) + theme_bw()+ xlab("Numero de Pretos")+ ylab("Contagem")+ labs(title=names(cenario_df)[1])
}

##################
####  Diurno  ####
##################

c1=getURL("https://docs.google.com/spreadsheets/d/1jZbxJzstOdgaNADw6n1ov4pKo0l0dAD1uEcefAlFplI/export?gid=0&format=csv", ssl.verifypeer=FALSE)
file_url = c1
c2=getURL("https://docs.google.com/spreadsheets/d/1jZbxJzstOdgaNADw6n1ov4pKo0l0dAD1uEcefAlFplI/export?gid=1488503095&format=csv", ssl.verifypeer=FALSE)
c3=getURL("https://docs.google.com/spreadsheets/d/1jZbxJzstOdgaNADw6n1ov4pKo0l0dAD1uEcefAlFplI/export?gid=1830499974&format=csv", ssl.verifypeer=FALSE)
c4=getURL("https://docs.google.com/spreadsheets/d/1jZbxJzstOdgaNADw6n1ov4pKo0l0dAD1uEcefAlFplI/export?gid=1573305252&format=csv", ssl.verifypeer=FALSE)

PlotHistograms(c1, 'lightskyblue2')
PlotHistograms(c2, 'lightgoldenrod1')
PlotHistograms(c3, 'lightpink3')
PlotHistograms(c4, 'palegreen3')

###################
####  Noturno  ####
###################

c1=getURL("https://docs.google.com/spreadsheets/d/1Ohp7eJ9RQnDUsMamCgX_hvuPLSlQLAGrktFVR-p8VyI/export?gid=0&format=csv", ssl.verifypeer=FALSE)
c2=getURL("https://docs.google.com/spreadsheets/d/1Ohp7eJ9RQnDUsMamCgX_hvuPLSlQLAGrktFVR-p8VyI/export?gid=316756507&format=csv", ssl.verifypeer=FALSE)
c3=getURL("https://docs.google.com/spreadsheets/d/1Ohp7eJ9RQnDUsMamCgX_hvuPLSlQLAGrktFVR-p8VyI/export?gid=574934489&format=csv", ssl.verifypeer=FALSE)
c4=getURL("https://docs.google.com/spreadsheets/d/1Ohp7eJ9RQnDUsMamCgX_hvuPLSlQLAGrktFVR-p8VyI/export?gid=12088454&format=csv", ssl.verifypeer=FALSE)

PlotHistograms(c1, 'lightskyblue2')
PlotHistograms(c2, 'lightgoldenrod1')
PlotHistograms(c3, 'lightpink3')
PlotHistograms(c4, 'palegreen3')