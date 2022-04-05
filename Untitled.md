# Ensamblaje de genomas mitocondriales con Novoplasty

To be installed on Linux computers :
Bowtie2 https://github.com/BenLangmead/bowtie2
BBmap https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
Novoplasty V4.3 (script perl) https://github.com/ndierckx/NOVOPlasty
Emboss http://emboss.sourceforge.net/download/
Gepard (java) https://github.com/univieCUBE/gepard

La información sobre el funcionamiento y la utilización del software se encuentra en
https://github.com/ndierckx/NOVOPlasty/
Dierckxsens N., Mardulyn P. y Smits G. (2016) NOVOPlasty: Ensamblaje de novo de genomas de organelos a partir de datos del genoma completo. Nucleic Acids Research, doi: 10.1093/nar/gkw955

Los archivos necesarios :
-Lecturas brutas de Illumina en archivos R1 y R2 -->
-Un archivo de configuración https://github.com/ndierckx/NOVOPlasty/blob/master/config.txt con la ruta a los archivos de lectura R1 y R2 -->
-Un archivo "Seed" o secuencia de iniciación derivada de una mitochondria de una especie relacionada --> Seed.fasta
-Una secuencia de un genoma mitochondrial relacionado (Drosophila melanogaster) -->  NC_024511.2.fasta

Realización del montaje:
Todos los pasos necesarios para el montaje se han recogido en el script : CP_assembly.sh

Para ejecutar el script, los archivos de lectura bruta deben estar previamente concatenados y renombrados como prefix_R1.fq.gz y prefix_R2.fq.gz (donde prefix es el nombre o código del ensamblaje).

por ejemplo:


```python
cat Dasiri_1.fastq.gz > Dasiri_R1.fastq.gz 
cat Dasiri_2.fastq.gz > Dasiri_R2.fastq.gz 
```

El archivo de configuración también debe ser renombrado con el prefijo, y debe estar en el mismo directorio que los datos. Ejemplo:


```python
config_mito_Dasiri.txt
```

Se puede cambiar la configuration:


```python
nano config_mito_Dasiri.txt
```


```python
Project:
-----------------------
Project name          = Dasiri #Cambiar el nombre del proyecto con el acronimo
Type                  = mito
Genome Range          = 12000-23000
K-mer                 = 33
Max memory            = 
Extended log          = 0
Save assembled reads  = no
Seed Input            = /home/guyot/novoplasty/Seed.fasta #Cambiar la ruta hasta el archivo Seed.fasta
Reference sequence    = /home/guyot/novoplasty/NC_024511.2.fasta #Cambiar la ruta hasta el archivo NC_024511.2.fasta
Variance detection    = no
Heteroplasmy          = 
HP exclude list       =
Chloroplast sequence  = 

Dataset 1:
-----------------------
Read Length           = 151
Insert size           = 300
Platform              = illumina
Single/Paired         = PE
Combined reads        =
Forward reads         = /home/guyot/novoplasty/Dasiri_Cp_dedup.1 #Cambiar la ruta
Reverse reads         = /home/guyot/novoplasty/Dasiri_Cp_dedup.2 #Cambiar la ruta

Optional:
-----------------------
Insert size auto      = yes
Insert Range          = 1.8
Insert Range strict   = 1.3
Use Quality Scores    = yes
```

Puede copiarse el script (CP_assembly.sh) en el mismo directorio en el que se encuentran los datos brutos, o en su ruta especificada al llamarlo. 
Es necesario dar como argumento el mismo prefijo utilizado para los datos después de llamar al script

El script debe tener los derechos para ser ejecutado como un programa:


```python
chmod 755 CP_assembly.sh
```


```python
./CP_assembly.sh Dasiri
```

Una vez finalizado, el programma puede haber encontrado una o varias opciones para el montaje. 
Si sólo ha encontrado uno, se le cambiará el nombre como Circularized_assembly_1_Dasiri.fasta
Si el programa no pudo circularizar el genoma: Uncircularized_assemblies_1_Dasiri.fasta 
Si el programe no pudo tener un genoma completo: Contigs_1_Dasiri.fasta

 El montaje debe comprobarse gráficamente con gepard

![](1.png)

Añadir la secuencia 1 (NC_024511.2.fasta) y 2 (ensamblada con Novoplastia)

![](2.png)

Dependiendo del resultado del alineamiento gráfico, los contigs ensamblados con Novoplasty pueden ser modificados utilizando las herramientas de EMBOSS
