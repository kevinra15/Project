# Logstash
[Logstash Official Documentation](https://www.elastic.co/guide/en/logstash/current/index.html)

## Definició
Logstash es un motor de recopilació de dades open source. El cual pot
unificar diferents entrades de dades i normalitzar aquestes en el destí
indicat.

## Funcionament

El funcionamnt de logstash es basa en un fitxer de configuració, en el 
cual s'indiquen dos parts obligatories "Input" i "Output" i una opcional
"Filter".
A partir de la versió 2.3 el proces de filtratge i el de sortida es 
realitzen en la mateixa etapa, cosa que millora el rendiment.

La ubicació del fitxer de configuració es `/etc/logstash/conf.d/`

Al iniciar una instancia logstah, s'indica amb -f el fitxer de 
configuració que definirà la instancia.

`logstash -f /etc/logstash/conf.d/name.conf`

### Exemple bàsic del config file

![](/Docs/images/logstash-basic-configfile.png)


> - Input: S'indica quina serà l'entrada de logs a procesar, en aquest
cas un fitxer local. 
> - Filter: Defineix els filtres que s'aplicaràn als logs d'entrada.
>> - grok: Analitza I estructura el text, Es la millor eina de logstash 
per convertir els logs no estructurats en algo estructurat I consultable.
>> - geoip: Afegeix informacio de la localització de la IP. (A mes 
mostra grafiques en Kibana). 
> - Output: Serà la sortida d'aquets logs, en el nostre cas, l'output serà
el servidor elasticsearch, on es guardaran en format JSON.

#### Exemple avançat del config file

[logstash-pipeline.conf](logstash/conf.d/final-pipeline.conf) 

Aquest ja es un fitxer mes complet:
> - Input: Veiem que hi han 3 entrades diferents de logs, per identificarles
l'hi assignem un `type` a cada una.
> - Filter: Apliquem els filtres nomes als logs de `type` apache
> - Output: Segons el `type` creem els index que es guardaràn a la BBDD 
d'elasticsearch.


