# soapSearch
A simple method for searching through a suite of parameters for de novo assembly with soapdenovo

Requirements
------------

- soapdenovo-63mer fully installed.
- a paired-end fastq library. Should be a small library, hopefully enriched for organellar reads.
- a soap.config file necessary for running soapdenovo.

WARNING
-------
This script is intended for small de novo assembly projects that will run very quickly in soap denovo, such as for chloroplast and mitochondria. Whole Eukaryotic genomes will likely take too long too long for thus utility to be very useful. 

Command Line Usage
------------------
```
bash soapGrid.sh <soap.config>
```
(See soap denovo documentation for more information)[http://soap.genomics.org.cn/soapdenovo.html] 
