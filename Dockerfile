# Usa una imagen base de tu elección
FROM node:alpine

# Establece el directorio de trabajo en la aplicación
WORKDIR /build/app

# Copia el archivo package.json e instala las dependencias
COPY package*.json ./
RUN npm install

# Copia los archivos de la aplicación
COPY . .

# Define las variables de entorno
ENV PORT=3000
ENV MONGODBPRODUCTION=mongodb+srv://desarrollostecnologicosyga:&XGE3g2E+yuaSzX7@arrbar-distributed.5vicv5o.mongodb.net/arrbar?retryWrites=true&w=majority
ENV tkn="Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImU0MjU0ZTZhMzAwNDIyYWJhOTAzMmRmYWEyZjIzOTlmZTMxNDAzOGMxMTBlNTU1Mzg5YzFjNjBhYzJlNWNjNDI5MjY3NmU1N2VkM2FkYjljIn0.eyJhdWQiOiI1NGFaVG8wa0dlY3ZHdzNud1dHT3dmeTVhQXZ3Mjk3MiIsImp0aSI6ImU0MjU0ZTZhMzAwNDIyYWJhOTAzMmRmYWEyZjIzOTlmZTMxNDAzOGMxMTBlNTU1Mzg5YzFjNjBhYzJlNWNjNDI5MjY3NmU1N2VkM2FkYjljIiwiaWF0IjoxNjk4OTkyMzE3LCJuYmYiOjE2OTg5OTIzMTcsImV4cCI6MTczMDUyODMxNywic3ViIjoiIiwic2NvcGVzIjpbXX0.UKD7UC517mwB4BFrKfINXAjntzCNrduHwraKJy2guzkJA7JckPZ-hHd2_bfa1h6-0lx0GZFOF_rnNclod39G6Wydh6b67yGdM3LxuvRTmBZFmnXJHv_rJ8tPjsFjGBmsdNKvt0oQ98GnOrkMIRNrCi6pxzMvtkOyT6uIvlY2_ePrnIjKR3CRqy8qqZe066MG9BnSqS8xG1pzST3wyM1C-IKnXck62ojfyQT-bsSGtD7DTNc_UrlFKUxTuM4OqBI2OpXvVySbym2tr153YrXhGqqwLwa5st9uO5xo7NBghyaQRbO30Pyfk_3YeUG3bAyiVj94a2yJcNTyB1hx9KmL0EBT1XzlVWuA3Q4Q6sqWGO_lfzsoEah1C4l9R102sNgRbVQn42-NQnetOvOlNfUGgXmD2LsmdGrFHrEwuFe7Nrtupp4pxNG5W2s11hcGK-yf7UvPISouN1orFPTyBQ1eVPSC7aJZqebgbG5JkmvlCjXkyieF9V5BI9YL10-yVP61n4EGJEZ_pBaQlLQ5OOhBi753-YmrJ2Aa2xxRMmNwEwMGrkgVui7OZPLCVbNcPW7Z1PxY4oO2e-liX03H31L7fWy5hAlcSSLhM5-DEfVTDkBTrHvfkzP7xyF08673AVqYCUMaCF980q3-fOICu7Y1W06o7Nsx_iX8nWV5bQU1zO"
ENV tokenExchange=https://api.currencyapi.com/v3/latest?apikey=cur_live_YL02zqhK9L0OIIZso4J4Q1S7zTPVATiMx47069xT
ENV client_id=54aZTo0kGecvGw3nwWGOwfy5aAvw2972
ENV client_secret=0NcPbGWqvm0dZmEVttsMuMle6YanJvDsLVLC27D
ENV grant_type=client_credentials
ENV urlSYScom=https://developers.syscom.mx/api/v1
ENV customer=16950
ENV key=123321
ENV urlPCTECH=https://pchtest.to-do.mx

# Expone el puerto
EXPOSE $PORT

# Comando para ejecutar la aplicación
CMD ["npm", "run", "start"]