library('ggplot2')
library('hrbrthemes')
library('grid')
library('gridExtra') 

#Код для створення барчарту. 
#Приклад тут: "http://texty.org.ua/pg/article/editorial/read/85143/Programa_industrie_40_Jak_urad_Nimechchyny_planuje?a_offset="


user <- Sys.info()[["user"]]
path = paste0('/home/', user, '/Desktop/Rmd')
setwd(path)
df <- read.csv("data/test_dataset_for_R_plot.csv", header = T, fileEncoding = "UTF-8")


plot <- grid.arrange(
  textGrob("Щоб змінити графік, редагуйте файл: bar_plot.R", #title
           gp=gpar(fontsize=15, col="#5D646F", fontface='bold', fontfamily ='Open Sans'), 
           x=unit(0.15, "npc"), just=c("left", "bottom")),
  textGrob("На графіку представлені тестові дані з файлу test_dataset_for_R_plot.csv", #subtitle 
           gp=gpar(fontsize=12, col="#5D646F", fontface='plain', fontfamily ='Open Sans'), 
           x=unit(0.15, "npc"), just=c("left", "bottom")),
  textGrob("млрд, $", 
           gp=gpar(fontsize=10, col="#5D646F", fontfamily ='Open Sans'), 
           x=unit(0.05, "npc"), just=c("left", "bottom")),
  ggplot(df, aes(x=reorder(xColumn, yColumn), y=yColumn)) + 
    geom_hline(yintercept=-100) + 
    geom_bar(stat="identity", width=0.1, position=position_dodge(width=0.5), fill='#FAA61A') +
    geom_text(aes(label=round(yColumn, 2)), y=-0.03*max(df$yColumn), size=3.5, hjust=1, vjust=0, colour = '#5D646F', family="Open Sans")+
    geom_text(aes(label=xColumn), y=0, size=3.5, hjust=0, vjust=-1, family = 'Open Sans', colour = '#5D646F')+
    coord_flip(ylim = c(-0.2*max(df$yColumn), max(df$yColumn))) + 
    labs(x = '', y = 'R&D Expense, USD billions')+
    theme(plot.background=element_blank(),
          panel.background = element_rect(fill = NA),
          panel.border=element_blank(), 
          panel.grid.minor = element_blank(),
          axis.title.x = element_blank(),
          axis.ticks.length = unit(0, "cm"),
          panel.grid.major = element_blank(),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          plot.margin = unit(c(0.5,0.5,0.5,-1), "cm")) +
          annotate("text", x=20, y=150, label="додаткове пояснення того, \n що відбувається на графіку \n Якщо графік не потрібен, приберіть \n відповідний шматок коду з файлу runFirst.Rmd", 
                   color = "#5D646F", size = 3.5, hjust = "left", fontface='plain' ), #анотація за потреби
  textGrob("TEXTY.ORG.UA", 
           gp=gpar(fontsize=10, col="#2b2b2b", fontface='bold'), 
           x=unit(0.6, "npc"), just=c("left", "bottom")),
  textGrob("Дані: тестові дані", 
           gp=gpar(fontsize=9, col="#5D646F"), 
           x=unit(0.6, "npc"), just=c("left", "bottom")),
  ncol=1, nrow = 6,
  heights=c(0.08, 0.1, 0.01, 0.80, 0.02, 0.01) #треба погратися з висотою кожного блоку
)

ggsave(file="chart.png", plot = plot, width=8, height=12, dpi=100) #відреагуйте відповідно ширину і висоту як співвідношення сторін.



