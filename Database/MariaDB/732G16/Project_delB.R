library(RMySQL)
con <- dbConnect(RMySQL::MySQL(),
                 user = "viettientrinh",
                 password = "Tvthsliu031220",
                 dbname = "732g16_projectdelB",
                 host = "localhost",
                 port=3306)



data <- read.csv("C:\\Users\\timce\\OneDrive\\Dokument\\Database\\MariaDB\\732G16\\datamaterial\\group-13-data.csv",sep = ";")
