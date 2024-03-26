# Chat with your Data (cwd) Benchmark Data via Virtuoso

## Introduction 

This repository contains the data and metadata for the "Chat with your Data" benchmark. The aim of this project is to provide a comprehensive set of test scenarios for Language-to-query (specifically SQL and SPARQL) systems. It focuses on testing whether these systems are capable of accurately converting natural language questions into valid, effective queries against various data sources. 

This variant of the project has been enhanced for live deployment using a Virtuoso instance. Live deployment meaning: a publicly accessible instance comprising the following:

1. SQL Relational Database.
2. Knowledge Graph constructed using RDF Views (Virtuoso Quad Mappings to SQL Tables).
3. Revised SQL and SPARQL Queries.

## Repository Structure

This repository is divided into multiple directories, each containing a specific type of data or metadata:

- `ontology/`: This directory contains OWL file(s) representing the ontology data. 

- `DDL/`: This directory contains the DDL definitions for the database schema. 

- `investigation/`: Each Turtle (.ttl) file in this directory represents a complete benchmark investigation, which includes pointers to the dataset, metadata, and a set of inquiries. 

- `data/`: This directory contains the dataset(s) used for the benchmark. The data is represented in multiple formats to support a wide range of query languages.  In addition to the CSV files.

- `RDF-View`: This directory contains an R2RML file that describes the mapping between the ontology and the data tables.

## File Formats

- OWL: Web Ontology Language, used for representing the ontology data.

- DDL: Data Definition Language, used for defining and managing databases.

- TTL: Turtle form of RDF, used to represent the complete benchmark investigation.

 - R2RML: a TTL file that describes mappings according to the [RDB to RDF Mapping Language](https://www.w3.org/TR/r2rml/)
 
- CSV/TSV/etc.: Various data formats used for the benchmark dataset.

## Setup (Virtuoso)

Install the tables to your Virtuoso instance using one of the following options

### Via Command Line

`cd` into `{repo}/ACME_INSURANCE`, and run one of the following options:

#### Option 1:  Attached and Physcial Tables
`isql {port} {username} {password} full_setup.sql`

#### Option 2:  Attached Tables Only
`isql {port} {username} {password} csv_attach.sql`


