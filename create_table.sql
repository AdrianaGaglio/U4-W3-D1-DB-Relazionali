CREATE TABLE clienti (
   numero_cliente SERIAL PRIMARY KEY,
   nome VARCHAR(50) NOT NULL,
   cognome VARCHAR(50) NOT NULL,
   anno_nascita INT,
   regione_residenza VARCHAR(100)
);

CREATE TABLE prodotti (
    id_prodotto SERIAL PRIMARY KEY,
    descrizione VARCHAR(50) NOT NULL,
    in_produzione BOOLEAN NOT NULL,
    in_commercio BOOLEAN NOT NULL,
    data_attivazione DATE NOT NULL,
    data_disattivazione DATE
	);

CREATE TABLE fornitori (
    numero_fornitore SERIAL PRIMARY KEY,
    denominazione VARCHAR(50) NOT NULL,
    regione_residenza VARCHAR(50) NOT NULL
)

CREATE TABLE fatture (
    numero_fattura SERIAL PRIMARY KEY,
    tipologia CHAR NOT NULL,
    importo DOUBLE PRECISION NOT NULL,
    iva DOUBLE PRECISION NOT NULL,
    id_cliente INT NOT NULL,
    data_fattura DATE NOT NULL,
    numero_fornitore INT NOT NULL
);