# Projecte final de curs

## Autor
> - Kevin Ramos López
> - isx47752902
> - ASX-2
> - Curs 2015/2016
> - [Project-GitHubRepo](https://github.com/kevinra15/Project)

------------------------------------------------------------------------

## Descripció

Aquest es el treball elaborat com a projecte de final de curs de ASIX.
El tema general d'aquest any es __tecnologies actuals per la gestió de logs__.
I el tema concret escollit per aquest projecte es __Centralització de logs JSON en BBDD i post-processat__.

__Breu descripció del projecte:__

Actualment existeixen BBDD pensades per a emmagatzemar documents en format JSON. 
Això permet que la sortida en format JSON del journal de diverses màquines 
s'emmagatzemi de manera centralitzada per a un posterior processat. 
En aquest àmbit existeixen bases de dades com Elasticsearch o Rethinkdb. 
Per al post-processat existeix l'entorn ELK (Elasticsearch + Kibana) que 
està pensat per anàlisi de sèries temporals de dades com són els logs. 

__Serveis utilitzats:__

> - [Logstash](https://www.elastic.co/guide/en/logstash/current/index.html)
> - [Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)
> - [Kibana](https://www.elastic.co/guide/en/kibana/current/index.html)

------------------------------------------------------------------------

## ELK

La utilització d'aquets serveis per processar les dades s'està fent cada cop més popular, 
la combinació dels tres serveis mencionats anteriorment s'anomena (ELK).
Proporcionen informació processable a temps real de casi qualsevol tipus 
de font de dades estructurades o no estructurades. Milers de organitzacions
s'han sumat la utilització d'aquest servei:

> - Netflix
> - Stack Overflow
> - Linkedin
> - Fujitsu (Open Stack Cloud) 

I moltes mes...
<!--
vim:syntax=markdown:et:ts=4:sw=4:ai
-->
