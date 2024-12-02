-- clienti che si chiamano Mario
-- select * from clienti where nome = 'Mario';

-- nome e cognome clienti nati nel 1982
-- select nome, cognome from clienti where anno_nascita = 1982;

-- nr. fatture con iva al 20%
-- select count(*) from fatture where iva = 20;

-- fatture con importo inferiore a 1000 e info clienti correlati
-- select fatture.*, clienti.nome, clienti.cognome from fatture
-- join clienti on id_cliente = numero_cliente where fatture.importo < 1000;

-- elenco fatture con nome fornitore
-- select numero_fattura, importo, iva, data_fattura, fornitori.denominazione from fatture
-- join fornitori on fatture.numero_fornitore = fornitori.numero_fornitore;

-- estraggo prodotti attivati nel 2017 che sono in commercio o in produzione
-- select * from prodotti
-- where extract(year from data_attivazione) = 2017
-- and (in_commercio = true or in_produzione = true);

-- numero fatture con iva al 20% per anno (mostro anche l'anno accanto al conteggio)
-- select count(*), extract(year from data_fattura) as year from fatture where iva = 20 group by year;

-- conteggio e somma importi fatture per anno (mostro anche l'anno accanto ai conteggi)
-- select count(*), sum(importo), extract(year from data_fattura) as anno from fatture group by anno;

-- anni in cui sono state emesse più di 2 fatture di tipo A
-- select extract(year from data_fattura) as year from fatture
-- where tipologia = 'A'
-- group by year
-- having count(*) > 2;

-- importo totale fatture raggruppato per regione cliente
-- select sum(importo), regione_residenza from fatture
-- join clienti on numero_cliente = id_cliente;
-- group by regione_residenza;

-- numero clienti nati nel 1980 con almeno una fattura > 50
-- select count(*), nome, cognome from clienti
-- join fatture on clienti.numero_cliente = fatture.id_cliente
-- where anno_nascita = 1980 and importo > 50
-- group by numero_cliente;

