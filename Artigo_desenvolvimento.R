#-------------------------------------------------------------------------------
# IMPORTANDO DADOS:
#-------------------------------------------------------------------------------
#ms
ms <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Broad money prercentual of GDP.xlsx", 
           col_types = c("text", "text", "text","text", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric"))
#grgdp
grgdp <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/GDP per capita growth.xlsx", 
           col_types = c("text", "text", "text","text", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric"))
#inv
inv <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Gross capital formation percentual GDP.xlsx", 
           col_types = c("text", "text", "text","text", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric"))
#pi
pi <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Inflation, consumer prices.xlsx", 
           col_types = c("text", "text", "text","text", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric", 
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric", "numeric", "numeric", "numeric",
                         "numeric"))

#popgr
popgr <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Population growth.xlsx", 
             col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))
#-------------------------------------------------------------------------------
# variaveis para o calculo da produtividade:
##Agriculture, forestry, and fishing, value added (constant LCU) - Affva
AFFva <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Agriculture, forestry, and fishing, value added (constant LCU).xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))
#Services, value added (constant LCU) -Sva
Sva <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Services, value added (constant LCU).xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))
#Industry (including construction), value added (constant LCU) - Iva
Iva <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Industry (including construction), value added (constant LCU).xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))
#Employment in agriculture (% of total employment) (modeled ILO estimate) - EinA
EinA <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Employment in agriculture (% of total employment) (modeled ILO estimate).xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))
#Employment in industry (% of total employment) (modeled ILO estimate) - EinI
EinI <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Employment in industry (% of total employment) (modeled ILO estimate).xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))
#Employment in services (% of total employment) (modeled ILO estimate)- EinS
EinS <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Employment in services (% of total employment) (modeled ILO estimate).xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))

#Labor force, total -LFT
LFT <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/Labor force, total.xlsx", 
                            col_types = c("text", "text", "text","text", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric", 
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric", "numeric", "numeric", "numeric",
                           "numeric"))

#-------------------------------------------------------------------------------
# ORGANIZANDO EM FORMA DE PAINEL:
#-------------------------------------------------------------------------------
ms <- ms|> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                values_to = "ms")
grgdp <- grgdp|> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                values_to = "grgdp")
inv <- inv|> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                values_to = "inv")
pi <- pi|> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                values_to = "pi")
popgr <- popgr|> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                values_to = "popgr")
# variaveis para o calculo da produtividade:
AFFva    <- AFFva |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "AFFva")        
Sva      <-  Sva  |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "Sva")      
Iva      <-  Iva  |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "Iva")     
EinA     <-  EinA |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "EinA")       
EinI     <-  EinI |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "EinI")       
EinS     <-  EinS |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "EinS")       
LFT      <-  LFT  |> tidyr::pivot_longer(`1960`:`2021`,names_to = "Ano",
                                    values_to = "LFT")      
#-------------------------------------------------------------------------------
# CRIANDO VARIAVEL CHAVE:
#-------------------------------------------------------------------------------
ms <- ms |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
grgdp <- grgdp |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
inv <- inv |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
pi <- pi |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
popgr <- popgr |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
# variaveis para o calculo da produtividade:
AFFva  <- AFFva |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
Sva    <- Sva   |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
Iva    <- Iva   |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
EinA   <- EinA  |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
EinI   <- EinI  |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
EinS   <- EinS  |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
LFT    <- LFT   |> dplyr::mutate(ID=paste(`Country Code`,Ano,sep = "-"))
# ------------------------------------------------------------------------------
# SELECIONANDO VARIAVEIS E REALIZANDO O MERGE:
#-------------------------------------------------------------------------------
ms <- ms|> dplyr::select(`Country Name`,`Country Code`,
                         Ano,ID,ms)
grgdp <- grgdp|> dplyr::select(ID,grgdp)
inv <- inv|> dplyr::select(ID,inv)
pi <- pi|> dplyr::select(ID,pi)
popgr <- popgr|> dplyr::select(ID,popgr)
# variaveis para o calculo da produtividade:
AFFva  <- AFFva|> dplyr::select(ID,AFFva)
Sva    <- Sva  |> dplyr::select(ID,Sva  )
Iva    <- Iva  |> dplyr::select(ID,Iva  )
EinA   <- EinA |> dplyr::select(ID,EinA )
EinI   <- EinI |> dplyr::select(ID,EinI )
EinS   <- EinS |> dplyr::select(ID,EinS )
LFT    <- LFT  |> dplyr::select(ID,LFT  )
# fazendo o Merge:
DADOS <- dplyr::full_join(ms,grgdp,by="ID")
DADOS <- dplyr::full_join(DADOS,inv,by="ID")
DADOS <- dplyr::full_join(DADOS,pi,by="ID")
DADOS <- dplyr::full_join(DADOS,popgr,by="ID")
# variaveis para o calculo da produtividade:
DADOS <- dplyr::full_join(DADOS,AFFva,by="ID")
DADOS <- dplyr::full_join(DADOS,Sva  ,by="ID")
DADOS <- dplyr::full_join(DADOS,Iva  ,by="ID")
DADOS <- dplyr::full_join(DADOS,EinA ,by="ID")
DADOS <- dplyr::full_join(DADOS,EinI ,by="ID")
DADOS <- dplyr::full_join(DADOS,EinS ,by="ID")
DADOS <- dplyr::full_join(DADOS,LFT  ,by="ID")
#-------------------------------------------------------------------------------
# criando a variavel de produtividade:
#-------------------------------------------------------------------------------
DADOS <- DADOS|>
  dplyr::mutate(PROD = ((Sva+Iva)/(LFT*(EinS+EinI))))
# removendo variaveis inrelevantes 
DADOS <- DADOS |> dplyr::select(-AFFva,-Sva,-Iva,-EinA,-EinI,-EinS,-LFT)
# removendo bases de dados:
remove(AFFva,Sva,Iva,EinA,EinI,EinS,LFT,grgdp,inv,ms,pi,popgr)
#-------------------------------------------------------------------------------
# Juntando com a clssificacao dos paises:
#-------------------------------------------------------------------------------
GRUPO <- readxl::read_excel("C:/BASE_DE_DADOS/INFLACAO/GRUPO.xlsx")
GRUPO$`Country Name`<- NULL
DADOS <- dplyr::full_join(DADOS,GRUPO ,by="Country Code")
remove(GRUPO)
#-------------------------------------------------------------------------------
# Juntando com os dados de qualidade do bacen: 
#-------------------------------------------------------------------------------
base_bacen <- haven::read_dta("base_bacen.dta")
base_bacen <-  janitor::clean_names(base_bacen) |> as.data.frame()
DADOS <-  janitor::clean_names(DADOS)
# criando codigo para juntar as bases:
base_bacen <- base_bacen |> dplyr::mutate(jun_ba=paste(wb_a3,"-",year))
DADOS <- DADOS |> dplyr::mutate(jun_ba=paste(country_code,"-",ano))
dplyr::glimpse(base_bacen)
# juntando dados
DADOS <- dplyr::right_join(DADOS,base_bacen,by="jun_ba")
# removendo o desnecessario:
remove(base_bacen)
# removendo variaveis desnecessarias:
DADOS <- DADOS |> dplyr::select(-id,)
haven::write_dta( DADOS,  "DADOS.dta")
dplyr::glimpse(DADOS)



































# fazendo a taxa de crescimento:
DADOS_R <- DADOS|> 
  subset(Ano>=1999 & Ano<=2019)|>
  dplyr::group_by(`Country Code`) |>
  dplyr::mutate(
    PROD=((PROD-dplyr::lag(PROD))/dplyr::lag(PROD))*100
  )
# filtrando os dados para 0 intervalo de anos de 2000 a 2020: 
DADOS1<- DADOS_R|>
  subset(Ano>=2000 & Ano<=2019)
str(DADOS)
# filtrando os dados que possuem informacoes sobre inflacao:
DADOS1 <- DADOS1|> 
  dplyr::mutate(PI_indica=dplyr::case_when(
                  PI_indica='NA'==pi~0,
                  PI_indica="NA"!=pi~1),
                ms_indica=dplyr::case_when(
                  ms_indica='NA'==ms~0,
                  ms_indica="NA"!=ms~1),
                grgdp_indica=dplyr::case_when(
                  grgdp_indica='NA'==grgdp~0,
                  grgdp_indica="NA"!=grgdp~1),
                inv_indica=dplyr::case_when(
                  inv_indica='NA'==inv~0,
                  inv_indica="NA"!=inv~1),
                popgr_indica=dplyr::case_when(
                  popgr_indica='NA'==popgr~0,
                  popgr_indica="NA"!=popgr~1),
                PROD_indica=dplyr::case_when(
                  PROD_indica='NA'==PROD~0,
                  PROD_indica="NA"!=PROD~1))
# criando Verificador:
DADOS1 <- DADOS1|>
  dplyr::group_by(`Country Code`)|>
  dplyr::mutate(VIF=(PI_indica*ms_indica*grgdp_indica*inv_indica*popgr_indica*PROD_indica))
# soma do VIF:
DADOS1 <- DADOS1|>
  dplyr::group_by(`Country Code`)|>
  dplyr::mutate(SVIF=sum(VIF,na.rm = T))

# filtrando os dados que estao com todas as informacoes para inflacao:
DADOS1 <- DADOS1|>
  dplyr::filter(SVIF==20)|>
  dplyr::filter(!(`Country Code`=="BTN"))
unique(DADOS1$`Country Code`)
DADOS1 <- DADOS1|>
  dplyr::rename(CODI=`Country Code`)
# fazendo transforma??o para a infla??o, como proposta por  Drukker, Gomis-Porqueras e Hernandez-Verme (2005)
str(DADOS1)
DADOS1 <-DADOS1|>
  dplyr::mutate(pi_Trans=dplyr::case_when(pi<=1~pi-1,
                                          pi>1~log(pi)))
View(DADOS1)
# fazendo histograma:
hist1<-DADOS1|>ggplot2::ggplot( ggplot2::aes(x = pi)) + 
     ggplot2::geom_histogram()+
     ggplot2::labs(title = "Infla??o sem transforma??o",x="Infla??o",y="Frequ?ncia")

hist2<-DADOS1|>ggplot2::ggplot( ggplot2::aes(x = pi_Trans)) + 
  ggplot2::geom_histogram()+
  ggplot2::labs(title = "Infla??o com transforma??o",x="Infla??o",y="Frequ?ncia")

ggpubr::ggarrange(hist1,hist2,ncol = 2,nrow = 1)
# estatisticas descritivas das variaveis, separadas por nivel de resnda:
# alta renda:
estAR<- DADOS1|>
  dplyr::filter(nivel_renda=="High income")|>
  dplyr::group_by(`Country Name`)|>
  dplyr::summarise(
    inflacao=mean(pi,na.rm = T),
    produtividade=mean(PROD,na.rm=T),
    grgdp=mean(grgdp,na.rm=T),
    ms=mean(ms,na.rm=T),
    grpop=mean(popgr,na.rm=T),
    inv=mean(inv,na.rm = T)
  )
# renda media alta 
estMA<- DADOS1|>
  dplyr::filter(nivel_renda=="Lower middle income")|>
  dplyr::group_by(`Country Name`)|>
  dplyr::summarise(
    inflacao=mean(pi,na.rm = T),
    produtividade=mean(PROD,na.rm=T),
    grgdp=mean(grgdp,na.rm=T),
    ms=mean(ms,na.rm=T),
    grpop=mean(popgr,na.rm=T),
    inv=mean(inv,na.rm = T)
  )
# renda media baixa
estMB<- DADOS1|>
  dplyr::filter(nivel_renda=="Upper middle income")|>
  dplyr::group_by(`Country Name`)|>
  dplyr::summarise(
    inflacao=mean(pi,na.rm = T),
    produtividade=mean(PROD,na.rm=T),
    grgdp=mean(grgdp,na.rm=T),
    ms=mean(ms,na.rm=T),
    grpop=mean(popgr,na.rm=T),
    inv=mean(inv,na.rm = T)
  )
# baixa renda 
estBR<- DADOS1|>
  dplyr::filter(nivel_renda=="Low income")|>
  dplyr::group_by(`Country Name`)|>
  dplyr::summarise(
    inflacao=mean(pi,na.rm = T),
    produtividade=mean(PROD,na.rm=T),
    grgdp=mean(grgdp,na.rm=T),
    ms=mean(ms,na.rm=T),
    grpop=mean(popgr,na.rm=T),
    inv=mean(inv,na.rm = T)
  )
# juntando dados:
Estatis<- dplyr::bind_rows(estAR,estMA,estMB,estBR)
View(Estatis)
#write.csv(Estatis,"Estatis.csv")
# fazendo regressao:
str(DADOS1)

library("plm")
ols <- plm::plm(log(PROD) ~ log(pi) +inv+popgr+ms,
           DADOS, model = "pooling",index=c("country_code", "ano"))
between <- update(ols, model = "between")
within <- update(ols, model = "within")
walhus <- update(ols, model = "random", random.method = "walhus", random.dfcor = 3)
amemiya <- update(walhus, random.method = "amemiya")
swar <- update(amemiya, random.method = "swar")

library("texreg")
screenreg(list(ols = ols, between = between, within = within, 
               walhus = walhus, amemiya = amemiya, swar = swar),
          digits = 5, omit.coef = "(Intercept)")
# site importante:
 #  https://cran.r-project.org/web/packages/plm/vignettes/B_plmFunction.html 

# ------------------------------------------------------------------------------
# Estima??o dos modelos de painel dinamico threshold 
#-------------------------------------------------------------------------------
# resultados para o crescimento economico:
#-------------------------------------------------------------------------------
# selecionando vari?veis:
PANELTH <- DADOS1 |> dplyr::select(CODI,Ano,pi_Trans,PROD,grgdp,ms,popgr,inv,nivel_renda)
#write.csv(PANELTH, "PANELTH.csv", row.names = FALSE)
# fazendo para os paises :
PANELTH_RA <- PANELTH |> dplyr::filter(nivel_renda=="High income")
PANELTH_MA <- PANELTH |> dplyr::filter(nivel_renda=="Upper middle income")
PANELTH_MB <- PANELTH |> dplyr::filter(nivel_renda=="Lower middle income")
PANELTH_RB <- PANELTH |> dplyr::filter(nivel_renda=="Low income")
# 20 paises, com 20 anos:
summary(PANELTH_RA$inv)
# total
E_PANELTH_TO<-dtp(grgdp ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH,index=c("CODI","ANO"),2,1,0.6,0.8,1,graph = TRUE)
summary(E_PANELTH_TO)
E_PANELTH_TO$qhat
#de alta renda
E_PANELTH_RA<-dtp(grgdp ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_RA,index=c("CODI","ANO"),2,1,0.6,0.8,1,graph = TRUE)
summary(E_PANELTH_RA)
#de media renda alta
E_PANELTH_MA<-dtp(grgdp ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_MA,index=c("CODI","ANO"),2,1,0.95,0.8,1,graph = TRUE)
summary(E_PANELTH_MA)
#de media renda baixa
E_PANELTH_MB<-dtp(grgdp ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_MB,index=c("CODI","ANO"),2,1,0.95,0.8,1,graph = TRUE)
summary(E_PANELTH_MB)
#de baixa renda
E_PANELTH_RB<-dtp(grgdp ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_RB,index=c("CODI","ANO"),2,1,0.95,0.8,1,graph = TRUE)
summary(E_PANELTH_RB)
mean(PANELTH_RB$pi_Trans)
help(dtp)
###### para produtividade:
# total
P_PANELTH_TO<-dtp(PROD ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH,index=c("CODI","ANO"),2,1,0.6,0.8,1,graph = TRUE)
summary(P_PANELTH_TO)
#de alta renda
P_PANELTH_RA<-dtp(PROD ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_RA,index=c("CODI","ANO"),2,1,0.6,0.8,1,graph = TRUE)
summary(P_PANELTH_RA)
#de media renda alta
P_PANELTH_MA<-dtp(PROD ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_MA,index=c("CODI","ANO"),2,1,0.95,0.8,1,graph = TRUE)
summary(P_PANELTH_MA)
#de media renda baixa
P_PANELTH_MB<-dtp(PROD ~ ms+popgr+inv|pi_Trans|pi_Trans,PANELTH_MB,index=c("CODI","ANO"),2,1,0.95,0.8,1,graph = TRUE)
summary(P_PANELTH_MB)
#de baixa renda
P_PANELTH_RB<-dtp(PROD ~ ms+popgr+inv|pi_Trans|pi_Trans|pi_Trans,PANELTH_RB,index=c("CODI","ANO"),2,1,0.95,0.8,1,graph = TRUE)
summary(P_PANELTH_RB)
#-------------------------------------------------------------------------------
#            Modelo de Painel VAR
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#                       MODELO DE PAINEL PVAR com variaveis em diferen?as IPC
#-------------------------------------------------------------------------------
PANELTH <- DADOS1 |> dplyr::select(CODI,Ano,pi_Trans,PROD,grgdp,ms,popgr,inv,nivel_renda)
PANELTH <- as.data.frame(PANELTH)
# filtrando para fazer as analises por grupo:
PANELTH_RA <- PANELTH |> dplyr::filter(nivel_renda=="High income")
PANELTH_MA <- PANELTH |> dplyr::filter(nivel_renda=="Upper middle income")
PANELTH_MB <- PANELTH |> dplyr::filter(nivel_renda=="Lower middle income")
PANELTH_RB <- PANELTH |> dplyr::filter(nivel_renda=="Low income")

str(PANELTH)
library(panelvar)
library(tibble)
library(dplyr)
LG<-2
LG<-2
fdfo <-"fd"
tho<-"onestep"
# pais rico:
M_PANELTH_RA<- 
  pvargmm(dependent_vars = c("grgdp","pi_Trans","PROD"),
          lags = LG,
          transformation = fdfo,
          data = PANELTH_RA,
          exog_vars = c("ms","popgr","inv"),
          panel_identifier=c("CODI", "Ano"),
          steps = c(tho),
          system_instruments = TRUE,
          max_instr_dependent_vars = 99,
          min_instr_dependent_vars = 2L,
          collapse = TRUE 
  )
summary(M_PANELTH_RA)
I_PANELTH_RA <- girf(M_PANELTH_RA, n.ahead = 5, ma_approx_steps= 8)
B_PANELTH_RA <- bootstrap_irf(M_PANELTH_RA, typeof_irf = c("GIRF"),
                         n.ahead = 5,
                         nof_Nstar_draws = 5,
                         confidence.band = 0.99)
plot(I_PANELTH_RA,B_PANELTH_RA)
plot(stability(M_PANELTH_RA))
# pais renda media alta:
M_PANELTH_MA<- 
  pvargmm(dependent_vars = c("grgdp","pi_Trans","PROD"),
          lags = LG,
          transformation = fdfo,
          data = PANELTH_MA,
          exog_vars = c("ms","popgr","inv"),
          panel_identifier=c("CODI", "Ano"),
          steps = c(tho),
          system_instruments = TRUE,
          max_instr_dependent_vars = 99,
          min_instr_dependent_vars = 2L,
          collapse = TRUE 
  )
summary(M_PANELTH_MA)
I_PANELTH_MA <- girf(M_PANELTH_MA, n.ahead = 5, ma_approx_steps= 8)
B_PANELTH_MA <- bootstrap_irf(M_PANELTH_MA, typeof_irf = c("GIRF"),
                              n.ahead = 5,
                              nof_Nstar_draws = 5,
                              confidence.band = 0.99)
plot(I_PANELTH_MA,B_PANELTH_MA)
plot(stability(M_PANELTH_MA))
# pais renda media baixa:
M_PPANELTH_MB<- 
  pvargmm(dependent_vars = c("grgdp","pi_Trans","PROD"),
          lags = LG,
          transformation = fdfo,
          data = PANELTH_MB,
          exog_vars = c("ms","popgr","inv"),
          panel_identifier=c("CODI", "Ano"),
          steps = c(tho),
          system_instruments = TRUE,
          max_instr_dependent_vars = 99,
          min_instr_dependent_vars = 2L,
          collapse = TRUE 
  )
summary(M_PPANELTH_MB)
I_PANELTH_MB <- girf(M_PPANELTH_MB, n.ahead = 5, ma_approx_steps= 8)
B_PANELTH_MB <- bootstrap_irf(M_PPANELTH_MB, typeof_irf = c("GIRF"),
                              n.ahead = 5,
                              nof_Nstar_draws = 5,
                              confidence.band = 0.99)
plot(I_PANELTH_MB,B_PANELTH_MB)
plot(stability(M_PPANELTH_MB))
# pais pobre:
M_PANELTH_RB<- 
  pvargmm(dependent_vars = c("grgdp","pi_Trans","PROD"),
          lags = LG,
          transformation = fdfo,
          data = PANELTH_RB,
          exog_vars = c("ms","popgr","inv"),
          panel_identifier=c("CODI", "Ano"),
          steps = c(tho),
          system_instruments = TRUE,
          max_instr_dependent_vars = 99,
          min_instr_dependent_vars = 2L,
          collapse = TRUE 
  )
summary(M_PANELTH_RB)
I_PANELTH_RB <- girf(M_PANELTH_RB, n.ahead = 5, ma_approx_steps= 8)
B_PANELTH_RB <- bootstrap_irf(M_PANELTH_RB, typeof_irf = c("GIRF"),
                              n.ahead = 5,
                              nof_Nstar_draws = 5,
                              confidence.band = 0.99)
plot(I_PANELTH_RB,B_PANELTH_RB)
plot(stability(M_PANELTH_RB))


################################################################################
meses <- c(0,1,2,3,4)
#### grgdp ####################################################################
# Conjuto pais rico: grgdp:
lawer1 <- c(B_PANELTH_RA$Lower$pi_Trans[,1])
upper1 <- c(B_PANELTH_RA$Upper$pi_Trans[,1])
irf1   <- c(I_PANELTH_RA$pi_Trans[,1])
dbs1 <- data.frame(lawer1,upper1,irf1,meses)
# Conjuto pais renda m?dia alta: grgdp:
lawer2 <- c(B_PANELTH_MA$Lower$pi_Trans[,1])
upper2 <- c(B_PANELTH_MA$Upper$pi_Trans[,1])
irf2   <- c(I_PANELTH_MA$pi_Trans[,1])
dbs2 <- data.frame(lawer2,upper2,irf2,meses)
# Conjuto pais renda m?dia baixa: grgdp:
lawer3 <- c(B_PANELTH_MB$Lower$pi_Trans[,1])
upper3 <- c(B_PANELTH_MB$Upper$pi_Trans[,1])
irf3   <- c(I_PANELTH_MB$pi_Trans[,1])
dbs3 <- data.frame(lawer3,upper3,irf3,meses)
# Conjuto pais renda m?dia baixa: grgdp:
lawer4 <- c(B_PANELTH_RB$Lower$pi_Trans[,1])
upper4 <- c(B_PANELTH_RB$Upper$pi_Trans[,1])
irf4   <- c(I_PANELTH_RB$pi_Trans[,1])
dbs4 <- data.frame(lawer4,upper4,irf4,meses)
#### produ ####################################################################
# Conjuto pais rico: grgdp:
plawer1 <- c(B_PANELTH_RA$Lower$pi_Trans[,3])
pupper1 <- c(B_PANELTH_RA$Upper$pi_Trans[,3])
pirf1   <- c(I_PANELTH_RA$pi_Trans[,3])
pdbs1 <- data.frame(plawer1,pupper1,pirf1,meses)
# Conjuto pais renda m?dia alta: :
plawer2 <- c(B_PANELTH_MA$Lower$pi_Trans[,3])
pupper2 <- c(B_PANELTH_MA$Upper$pi_Trans[,3])
pirf2   <- c(I_PANELTH_MA$pi_Trans[,3])
pdbs2 <- data.frame(plawer2,pupper2,pirf2,meses)
# Conjuto pais renda m?dia baixa: :
plawer3 <- c(B_PANELTH_MB$Lower$pi_Trans[,3])
pupper3 <- c(B_PANELTH_MB$Upper$pi_Trans[,3])
pirf3   <- c(I_PANELTH_MB$pi_Trans[,3])
pdbs3 <- data.frame(plawer3,pupper3,pirf3,meses)
# Conjuto pais renda m?dia baixa: :
plawer4 <- c(B_PANELTH_RB$Lower$pi_Trans[,3])
pupper4 <- c(B_PANELTH_RB$Upper$pi_Trans[,3])
pirf4   <- c(I_PANELTH_RB$pi_Trans[,3])
pdbs4 <- data.frame(plawer4,pupper4,pirf4,meses)
#-------------------------------------------------------------------------------
library(ggthemes)
library(ggplot2)
library(reshape2)
# parcialmente correto:
gg1 <- ggplot(dbs1,aes(x=meses,y=irf1, ymin=lawer1, ymax=upper1)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda alta")+
  ylab("grpib")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist()#+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red")

gg2<- ggplot(dbs2,aes(x=meses,y=irf2, ymin=lawer2, ymax=upper2)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda m?dia alta")+
  ylab("grpib")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist()#+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red") 

gg3 <- ggplot(dbs3,aes(x=meses,y=irf3, ymin=lawer3, ymax=upper3)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda m?dia baixa")+
  ylab("grpib")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist() #+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red")

gg4 <- ggplot(dbs4,aes(x=meses,y=irf4, ymin=lawer4, ymax=upper4)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda Baixa")+
  ylab("grpib")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist() #+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red")

# produtividade
# parcialmente correto:
pgg1 <- ggplot(pdbs1,aes(x=meses,y=pirf1, ymin=plawer1, ymax=pupper1)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda Alta")+
  ylab("Prod")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist()#+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red")

pgg2<- ggplot(pdbs2,aes(x=meses,y=pirf2, ymin=plawer2, ymax=pupper2)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda m?dia alta")+
  ylab("Prod")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist()#+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red") 

pgg3 <- ggplot(pdbs3,aes(x=meses,y=pirf3, ymin=plawer3, ymax=pupper3)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda m?dia baixa")+
  ylab("Prod")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist() #+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red")

pgg4 <- ggplot(pdbs4,aes(x=meses,y=pirf4, ymin=plawer4, ymax=pupper4)) +
  geom_hline(yintercept = 0, color="red",size=1) +
  geom_ribbon(fill="blue", alpha=.2, color="grey50", linetype="dashed") +
  geom_line(size=0.8) +
  theme_light() +
  ggtitle("Renda baixa")+
  ylab("Prod")+
  xlab("Ano") +
  theme(plot.title = element_text(size = 11, hjust=0.5),
        axis.title.y = element_text(size=11))#+ theme_economist() #+geom_line(data = dbs1, aes(x=meses,y=irf1), color = "red")


library(ggpubr)
ggarrange( gg1,pgg1,gg2,pgg2,gg3,pgg3,gg4,pgg4,
           ncol = 2, nrow = 4)

