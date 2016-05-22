# Logstash
[Logstash Official Documentation](https://www.elastic.co/guide/en/logstash/current/index.html)

## Funcionament

El funcionamnt de logstash es basa en un fitxer de configuració, en el 
cual s'indiquen dos parts obligatories "Input" i "Output" i una opcional
"Filter".

La ubicació del config file es `/etc/logstash/conf.d/`

Al iniciar una instancia logstah, s'indica amb -f el fitxer de 
configuració que definirà la instancia.

`logstash -f /etc/logstash/conf.d/name.conf`

### Exemple bàsic del config file

![](Docs/images/logstash-basic-configfile.png)


> - Input: S'indica quina serà l'entrada de logs a procesar, en aquest
cas un fitxer local. 
> - Filter: Defineix els filtres que s'aplicaràn als logs d'entrada.
> - Output: Serà la sortida d'aquets logs, en el nostre cas, l'output serà
el servidor elasticsearch, on es guardaran en format JSON en la BBDD.

#### Exemple avançat del config file

[logstash-pipeline.conf](/Docs/images/final-pipeline.conf) 

Aquest ja es un fitxer mes complet:
> - Input: Veiem que hi han 3 entrades diferents de logs, per identificarles
l'hi assignem un `type` a cada una.
> - Filter: 
