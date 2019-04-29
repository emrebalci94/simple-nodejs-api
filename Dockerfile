#Projede hangi kütüphane kullanıldı.
FROM node:8.15.0-alpine

#Projenin kaynak dosyalarını nereye kopyalacak.
WORKDIR /usr/src/app

#Gerekli dosyaların kopyalanması.
COPY package*.json ./

#package.json daki gerekli kütüphanelerin yüklenmesi için gerekli.
#Express, body-parser, vs.
RUN npm install --only=production

#"." bütün kaynak kodları -> "." workdir de belirttiğim klasöre kopyala.
COPY . .

#kullanılacak port.
EXPOSE 1453

#docker run ederken kesinlikle çalışıcak komut.
ENTRYPOINT [ "node" ]

#docker run ederken ENTRYPOINT komutunun yanına eklenicek ekstra parametre
#docker run ederken değiştirebiliriz.
CMD [ "index.js" ]