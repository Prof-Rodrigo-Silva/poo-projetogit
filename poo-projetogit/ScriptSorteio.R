alunos <- c("Antônio","Camilly","Davi","Debora","Eduardo","Gian","Guilherme","Gustavo",
            "Helen","Jaísa","João I", "João II", "João III", "Lenore","Lívia","Maria Clara",
            "Maria Eduarda","Mariana","Maurício","Natália","Pérola","Samuel","Simony","Sirius",
            "Thais","Vítor","Vitória")

grupos <- c("Grupo1","Grupo1","Grupo1","Grupo1",
            "Grupo2","Grupo2","Grupo2","Grupo2",
            "Grupo3","Grupo3","Grupo3","Grupo3",
            "Grupo4","Grupo4","Grupo4","Grupo4",
            "Grupo5","Grupo5","Grupo5","Grupo5",
            "Grupo6","Grupo6","Grupo6","Grupo6",
            "Grupo7","Grupo7","Grupo7")

dados <- as.data.frame(grupos)
set.seed(1)
grupoSort <- c(sample(alunos,27,replace = F))
  
dados$alunos <- grupoSort

setwd("/home/rodrigo/Área de Trabalho")
library(gridExtra)
pdf("Grupos.pdf",height=11, width=10)
grid.table(dados)
dev.off()
