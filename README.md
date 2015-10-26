# soapSearch
A simple method for searching through a suite of parameters for de novo assembly with soapdenovo

Requirements
------------

- soapdenovo-63mer fully installed.
- a paired-end fastq library. Should be a small library, hopefully enriched for organellar reads.
- a soap.config file necessary for running soapdenovo.

WARNING
-------
This script is intended for small de novo assembly projects that will run very quickly in soap denovo, such as for chloroplast and mitochondria. Whole Eukaryotic genomes will likely take too long for thus utility to be very useful. 


NOTE
----
This is an incredibly simple script (just some nested loops really). Modifying from original should be relatively simple. The hard-coded parameter boundaries may not be suitable for your purposes.


Command Line Usage
------------------
```
bash soapGrid.sh <soap.config> > newfile
```

OUTPUT
------
NOTE: The output will be printed to screen unless redirected to file.
The output will consist of several columns, these are as follows:
1:command -- the soap command used to generate the output.
2:K\_par -- the Kmer parameter used by SOAP.
3:d\_par -- the d parameter used by SOAP.
4:M\_par -- the M parameter used by SOAP.
5:N50size -- the number of base pairs of the N50 scaffold.
6:N50num -- the number of scaffolds needed to assemble 50% of the estimated genome size.
7:gSize -- the estimated genome size (without Ns).
8:longestScaff -- the longest scaffold in the assembly.


See [soap denovo documentation](http://soap.genomics.org.cn/soapdenovo.html) for more information.
