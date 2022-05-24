# PUCE-course-May-2022
**Assembly course at the PUCE University, Quito, Ecuador**

**Ensamblaje de genomas mitocondriales con Novoplasty**

El objetivo de este curso práctico es aprender a ensamblar un genoma, con secuencias crudas y cortas de Illumima (2X150bp). Hemos optado por ensamblar un genoma mitocondrial de Drosophila (de pequeño tamaño ~15 kbp) utilizando archivos de **secuencias de ADN total**. 

Los siguientes softwares debent ser instalado en los computadores/servidores  :  
-**Bowtie2** https://github.com/BenLangmead/bowtie2 	_Bowtie2 es un software apra mapear (alinear) sequencias cortas contra un genoma de referencia._.  
-**BBmap** https://jgi.doe.gov/data-and-tools/software-tools/bbtools/ 	_BBmap se utiliza para reducir la redundancia de lecturas idénticas _.  
-**Novoplasty** V4.3 (script perl) https://github.com/ndierckx/NOVOPlasty 	_Novoplasty es el software para ensamblar_.  
-**EMBOSS** http://emboss.sourceforge.net/download/ 	_Emboss son softwares para manipular secuencias_.  
-**Gepard** (java) https://github.com/univieCUBE/gepard	 _Gepard es un software para alinear graficaùmente las secuencias_.  


La información sobre el funcionamiento y la utilización del software NOVOPLASTY se encuentra en: https://github.com/ndierckx/NOVOPlasty/ _Dierckxsens N., Mardulyn P. y Smits G. (2016) NOVOPlasty: Ensamblaje de novo de genomas de organelos a partir de datos del genoma completo. Nucleic Acids Research, doi: 10.1093/nar/gkw955_

Los archivos necesarios para correr Novoplasty:

**-Lecturas crudas** de Illumina en archivos R1 y R2 --> SRR6399450_R1.fq.gz y SRR6399450_R2.fq.gz
Las lesturas crudas son accessibles aqui y se deben descargar en los computadores (en la misma carpeta que los archivos de configuracion): https://drive.google.com/drive/folders/1STOlTrA-LZDUILwgparwXvL9jJy-VK2X?usp=sharing

-Un **archivo de configuración** https://github.com/ndierckx/NOVOPlasty/blob/master/config.txt con la ruta a los archivos de lectura R1 y R2

-Un **archivo "Seed"** o secuencia de iniciación derivada de una mitochondria de una especie relacionada --> **Seed.fasta**

-La **secuencia de referencia** de un genoma mitochondrial relacionado (Drosophila melanogaster) -->  **NC_024511.2.fasta**


Se debe abrir el archivo **Untitled.md** para tener mas informaciones sobre el curso.

**Romain Guyot**	&  
_Doris Vela_
