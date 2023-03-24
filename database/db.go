package database

import (
	"log"

	"github.com/guilhermeonrails/api-go-gin/models"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"github.com/joho/godotenv"
)

var (
	DB  *gorm.DB
	err error
)


func ConectaComBancoDeDados() {
	envFile, _ := godotenv.Read(".env")
	host := envFile["DATABASE_HOST"]
	if(host == ""){
		host = "localhost"
	}
	stringDeConexao := "host="+host+" user=root password=root dbname=root port=5432 sslmode=disable"
	DB, err = gorm.Open(postgres.Open(stringDeConexao))
	if err != nil {
		log.Panic("Erro ao conectar com banco de dados")
	}

	DB.AutoMigrate(&models.Aluno{})
}
