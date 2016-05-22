# Kibana
[Kibana Official Documentation](https://www.elastic.co/guide/en/kibana/current/index.html)

## Definició
Es una plataforma d'ànalisis i visualització de dades. S'utilitza per interactuar amb les dades 
enmagatzemades d'elasticsearch. 

Pot realizar facilment analisis avançats de dades i visualitzar aquestes
a traves de gràfics i mapes. 

D'aquesta manera utilitzant kibana es pot treballar amb grans volums de
dades de manera fàcil i ràpida. I al estar disenyat per treballar amb 
elasticsearch, no presenta ningun tipus de dificultat ni requereix ningún
tipus de configuració extra. Es tant facil com instalar-ho i ja es podràn 
visualitzar les dades del servidor elasticsearch indicat.

S'accedeix a kibana a traves del port 5601.

## Funcionament

kibana disposa d'un fitxer de configuració .yml, amb l'edició d'aquest 
es pot configurar:

> - El port que utilitzarà kibana

> - El servidor elasticsearch que conté les dades que ha de postprocesar.

> - Mecanismes de seguretat per comunicarse amb el server d'elastic.
Poden ser passwords i usuaris, o certificats i claus ssl.

> - Configuracions de timeout.

> - etc...

Exemple de fitxer de configuració:

[kibana.yml](/kibana/image/kibana.yml)

Accedirem a la interficie de kibana a través de la url:

`http://localhost:5601`

Kibana es una eina completament gràfica, i la millor manera de familiaritzar-se
es a través d'aquets video-turorials oficials:

[Primers pasos amb kibana](https://www.elastic.co/guide/en/kibana/current/getting-started.html)

## Exemples de visualitzacions

Kibana ofereix un metode de lo mes sencill pero poder exportar les nostres 
visualitzacions, i implementarles en una pàgina web per exemple.

Es tan sencill com crear un dashboard, a la toolbar veurem una icona 
on posa "shared", i d'allà podrem treure un sencill link, el cual al 
introduirlo en un fitxer html o markdown, s'estarà visualitzant el nostre 
dashboard.

<iframe src="http://localhost:5601/app/kibana#/dashboard/Complet-dashboard?embed=true&_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now%2Fw,mode:quick,to:now%2Fw))&_a=(filters:!(),options:(darkTheme:!t),panels:!((col:1,id:geoip-maps-location-apache,panelIndex:1,row:1,size_x:6,size_y:4,type:visualization),(col:7,id:where-from-logs-apache,panelIndex:4,row:1,size_x:6,size_y:4,type:visualization),(col:1,columns:!(_id,_index,bytes,clientip,geoip.city_name),id:'London-GET!'s-apache',panelIndex:5,row:5,size_x:9,size_y:3,sort:!('@timestamp',desc),type:search)),query:(query_string:(analyze_wildcard:!t,query:'*')),title:Complet-dashboard,uiState:(P-4:(spy:(mode:(fill:!f,name:!n)))))" height="600" width="800"></iframe>
