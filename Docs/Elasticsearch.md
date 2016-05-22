# Elasticsearch
[Elasticsearch Official Documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)

## Definicio

Es un motor de busqueda open source basat en apache. Ens permet enmagatzemar,
buscar i analitzar grans cantitats de dades a temps casi real.
Elasticsearch funciona en un clúster, en el cual es repliquen les dades
entre els diferents nodes.

El servidor elasticsearch pot tenir tres estats:

> - Red: Hi ha fragments no assignats en el clúster. 
> - Yellow: Tots els fragments estàn assignats, pero no hi han replicas 
d'alguns d'aquets.
> - Green: Tots els fragments están assignats i amb les seves respectives 
repliques.

Per funcionar, el sistema ha de disposar de una versió recent de java.

El port asociat a aquest servei es el 9200.

## Conceptes bàsics

> - Clúster: Grup d'un o mes servers, el nom del cluster que es crea per 
defecte es "elasticsearch".

> - Node: Un node que forma part del cluster, enmagatzema les dades i repliques, 
i participa en la indexació d'aquestes. Cada node s'identifica per un nom.

> - Index: Un conjunt de documents de característiques similars. Cada index 
s'identifica per un nom, normalment seguit de la data de creació d'aquest.

> - Type: Es una caegoría d'un index. Ja que d'ins d'un mateix index poden
haber documents de diferents tipus.

> - Document: Unitat bàsica d'informació que pot ser indexada. Es guarda
en format JSON. Cada document te que estar assignat a un type d'ins de cada
index. 

> - Shards i repliques: Un index pot contenir molta informació, es per aixo 
que aquets es divideixen en fragments, i es realitzen repliques de cada
fragment, que es guardaràn en diferents nodes. 

## Funcionament

Per interactuar amb elasticsearch es pot utilitzar cualsevol eina que 
ens permeti fer crides HTTP/REST. Com per exemple curl:

> - Rebre informació bàsica del clúster (nom, número de nodes, status...):

> `curl 'localhost:9200/_cat/health?v' ` 

> - Informació bàsica dels nodes que composen el cluster:

> `curl 'localhost:9200/_cat/nodes?v`

> - Llistat dels index que conté el clúster:

> `curl 'localhost:9200/_cat/indices?v'`

Tambe es poden crear, modificar, borrar i consultar index a traves de 
curl's, pero no ens centrarem en aquesta part, ja que per al postprocesat
de les dades utilitzarem kibana. Pero aquí teniu un docuemnt amb exemples
de com fer-ho:

[Interactuant amb elasticsearch mitjançant curl's](/Docs/interactuar-curls-elastic.txt)

Podeu trobar mes informació sobre interactuar amb elasticsearch a la 
documentació oficial indicada a la capçalera del fitxer.

Una manera mes comode de treballar amb elasticsearch es instalant algún
plugin que proporcioni una interficie gràfica, com per exemple el "head":

`elasticsearch/bin/plugin -install mobz/elasticsearch-head`

Accedirem a traves de la url: `http://localhost:9200/_plugin/head/`

