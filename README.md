# PUCE-course-May-2022
Assembly course at the PUCE University Ecuador

**Ensamblaje de genomas mitocondriales con Novoplasty**

El objetivo de este curso práctico es aprender a ensamblar un genoma con secuencias crudas de Illumima (2X150bp). Hemos optado por ensamblar un genoma mitocondrial de Drosophila (de pequeño tamaño ~15 kb) utilizando archivos de secuencia de ADN total. 

Los siguientes softwares debent ser instalado en los computadores :	
-Bowtie2 https://github.com/BenLangmead/bowtie2 	
-BBmap https://jgi.doe.gov/data-and-tools/software-tools/bbtools/ 	
-Novoplasty V4.3 (script perl) https://github.com/ndierckx/NOVOPlasty 	
-EMBOSS http://emboss.sourceforge.net/download/ 	
-Gepard (java) https://github.com/univieCUBE/gepard	

La información sobre el funcionamiento y la utilización del software NOVOPLASTY se encuentra en: https://github.com/ndierckx/NOVOPlasty/ Dierckxsens N., Mardulyn P. y Smits G. (2016) NOVOPlasty: Ensamblaje de novo de genomas de organelos a partir de datos del genoma completo. Nucleic Acids Research, doi: 10.1093/nar/gkw955

Los archivos necesarios para correr Novoplasty:

-Lecturas crudas de Illumina en archivos R1 y R2 --> SRR6399450_R1.fq.gz y SRR6399450_R2.fq.gz
Las lesturas crudas son accessibles aqui y se deben descargar en los coputadores: https://drive.google.com/drive/folders/1STOlTrA-LZDUILwgparwXvL9jJy-VK2X?usp=sharing

-Un archivo de configuración https://github.com/ndierckx/NOVOPlasty/blob/master/config.txt con la ruta a los archivos de lectura R1 y R2

-Un archivo "Seed" o secuencia de iniciación derivada de una mitochondria de una especie relacionada --> Seed.fasta

-La secuencia de referencia de un genoma mitochondrial relacionado (Drosophila melanogaster) -->  NC_024511.2.fasta


Se puede abrir el archivo Untitled.md para tener mas informaciones sobre el curso.

Romain Guyot	
Doris Vela
