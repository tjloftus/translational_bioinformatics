# Docker inheritance
FROM r-base:latest

### Install asciinema
RUN apt-get update && apt-get install -y  \
asciinema

RUN Rscript -e 'install.packages("AnnotationDbi")'
RUN Rscript -e 'install.packages(BiocManager::install(c("AnnotationDbi")))'
