installed.packages("base")
library(base)
install.packages("airquality")
help(airquality)
#Grafico de barras hporizontal horiz TRUE sirve para categorias 
barplot(airquality$Ozone,
        main= "Ozone Concentration in Air",
        xlab= "Ozone Levels",
        horiz = TRUE)
#Grafico de barras verticales horiz FAlSE sirve para cuantitativos, series temporales
barplot(airquality$Ozone,
        main= "Ozone Concentration in Air",
        xlab= "Ozone Levels",
        col= "blue",
        horiz = FALSE)
#Histograma si se usa False en freq usaria la densidad en vez de la frecuencia
hist(airquality$Temp,
     main= "La Guardia Airport Max Temperature (Daily)",
     xlab = "Temp (F)",
     xlim = c(50, 125),
     col = "red",
     freq = TRUE
     )
#Diagrama de caja
boxplot(airquality$Wind,
        main= "Average Wind Speed at La Guardia Airport",
        xlab= "Miles per hour",
        ylab= "Wind",
        col= "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE) #notch es para que tenga un undimiento en el limite, solo es para 
#efectos visuales 
#Diagrama caja vertical 
boxplot(airquality[ , 0:4],
        main= "Box Plot for Air Quality Parameters")
#Plot
plot(airquality$Ozone,
     airquality$Month,
     main= "Scatter Plot Example",
     xlab= "Ozone Concentration in part oer billion",
     ylab= "Month of Observation", pch= 19
     )
#Mapas de calor sirve para probabilidades o series de correlacion 
set.seed(110)#construccion de semilla
data= matrix(rnorm(50, 0, 5), nrow = 5, ncol = 5)
colnames(data) = paste0("col", 1:5)
rownames(data) = paste0("row", 1:5)
heatmap(data)
#Grafico de pastel no es recomendable si se tienen mas de 7 categorias; sirve para
#porcentajes, encuestas de opinion,  
slice = c(10, 12, 4, 16, 8)
lbls = c("US", "UK", "Australia", "Germany", "France")
pie(slice, labels = lbls, 
    main= "Pie Chart of Countries")
#Grafico en 3 Dimensiones 
cone = function(x,y){
  sqrt(x^2 + y^2)
}
x = y = seq(-1, 1, lenght= 30)
z = outer(x, y, cone)
persp(x, y, z,
      main= "Perspective Plot a Cone",
      zlab= "Height",
      theta= 30, phi=15,
      col= "orange", shade= 0.4)

#Grafico con mapas
install.packages("maps", dep= T)
library(maps)
map(database = "world")
points(x = world.cities$lat[1:500], 
       y = world.cities$lng[1:500],
       col = "blue")
#Mapas poligonales 
mi_coun




