## Master 1 internship 2023

The repository internship_m1_2023 contains all the scripts I created and used durin my M1's internship.
It is composed with 7 folders corresponding to one step of the pipeline I was working on.


1. `Prediction_check`: all the script used to check the size of TE prediction of genomes, map the TE prediction of the db to the bacteria genome, script to make descrptiv analysis
2. `PASTEC`: script to run [PASTEClassifier](https://urgi.versailles.inra.fr/Tools/PASTEClassifier) and make the descriptiv analysis of the result of the annotation with this tool
3. `TESorter`: script to run [TEsorter](https://github.com/zhangrengang/TEsorter) and make the descriptiv analysis of the result of the annotation with this tool
4. `DeepTE`: script to run [DeepTE](https://github.com/LiLabAtVT/DeepTE) and make the descriptiv analysis of the result of the annotation with this tool
5. `Annotation_db`: make the annotation of the TE predction db with the annotation previously obtained
6. `Mapping`: script to launch the mapping of the TE predictions of each genomes on the final annotated db with the tool [Stampy](https://github.com/uwb-linux/stampy)
7. `QualiMap`: script to launch  [QualiMap](http://qualimap.conesalab.org/doc_html/index.html) on the the result of the mapping to have the statistics and then make a PCA later  
