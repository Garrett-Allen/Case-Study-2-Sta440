# Case-Study-2-Sta440: Classifying genus and family of various DNA strands in Lepidoptera.

Biodiversity research relies heavily on DNA barcoding, which is a technique used to classify
and identify species using DNA sequences. DNA barcoding involves several steps, including the
collection of biological material, DNA sequencing, alignment of sequences, and the assignment
of a taxonomic name (Herbert et al, 2003). In recent years, DNA barcoding has become
an essential tool in biodiversity research due to its speed, accuracy, and efficiency (Winterton,
Wiegmann, and Schlinger 2007). In this case study, we are presented with a set of 7,000 aligned
DNA sequences obtained from butterfly specimens captured in a Finnish forest. Our goal is
to classify the sequences into their respective families and genera, using a historical dataset
of 40,000 annotated DNA sequences for which annotations have been confidently established.
The aim is to build a classification model using the historical dataset to annotate the 7000
sequences at the family and genus levels and to introduce a measure of uncertainty in our
predictions. This study showcases the power of DNA barcoding in classifying species and
highlights the importance of using machine learning techniques to improve the accuracy of
these classifications.

To achieve this goal, we will explore various classification methods, such as using k-mer sequences with LASSO regression and random forests. We are investigating the importance
of the entire DNA sequence for classification and identify the loci that are particularly relevant to classification. The results of this project have practical implications for biodiversity
research, as accurate taxonomic classification is essential for understanding and managing
biodiversity

The full analysis with code can be found in Final_Report_With_Code.qmd, and the full report in pdf format can be found in Final_Report.pdf
