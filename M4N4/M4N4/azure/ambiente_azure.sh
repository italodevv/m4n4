RESOURCE_GROUP="LogiMoveResourceGroup"
SQL_SERVER_NAME="LogiMoveSQLServer"
SQL_DATABASE_NAME="LogiMoveDatabase"
ADMIN_USERNAME="logimoveadmin"
ADMIN_PASSWORD="senhasenha@!!!"
LOCATION="brazilsouth"

az group create --name $RESOURCE_GROUP --location $LOCATION

az sql server create \
  --name $SQL_SERVER_NAME \
  --resource-group $RESOURCE_GROUP \
  --location $LOCATION \
  --admin-user $ADMIN_USERNAME \
  --admin-password $ADMIN_PASSWORD

az sql db create \
  --resource-group $RESOURCE_GROUP \
  --server $SQL_SERVER_NAME \
  --name $SQL_DATABASE_NAME \
  --service-objective S0

az sql server firewall-rule create \
  --resource-group $RESOURCE_GROUP \
  --server $SQL_SERVER_NAME \
  --name AllowMyIP \
  --start-ip-address 0.0.0.0 \
  --end-ip-address 255.255.255.255
