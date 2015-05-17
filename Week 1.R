
table(mpheq=myopia$SPHEQ, myopic=myopia$MYOPIC)


icu <- download.file("https://d396qusza40orc.cloudfront.net/logisticregression/data/icu.csv", "icu.csv")
icu <- read.csv("icu.csv", head=T, sep=",")
head(icu)

ggplot(myopic, aes(x=SPHEQ, y=factor(MYOPIC))) + 
    geom_point() + 
    ylab("MYOPIC") + 
    stat_smooth(method="glm", family="binomial", se=F) 
