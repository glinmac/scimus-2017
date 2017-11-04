# Lab 3 Setup

## Checkout lab 3

If you don't have yet a checkout of the repository:

    git clone https://github.com/glinmac/scimus-2017
    
else, you can update the repository:
    
    cd scimus-2017
    git pull    

## Install Spark

Download Spark 1.6.2:

    cd 
    curl -O http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz

Extract the content of the tarball:

    tar xzf spark-1.6.2-bin-hadoop2.6.tgz


## Set environment variables for Jupyter

In order to be able to launch Spark analysis from Jupyter we need to start it with appropriate environment variables.
You can use the `start-jupyter-spark.sh` files in this lab to start it.

It contains the following environment variables
    
    #!/bin/sh
    
    export SPARK_HOME=$HOME/spark-1.6.2-bin-hadoop2.6/
    export PATH=$SPARK_HOME/bin:$PATH
    export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
    export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH
    export PYSPARK_SUBMIT_ARGS="--master local[*] pyspark-shell"

    jupyter notebook
    
    
If required, change the `SPARK_HOME` variable to point to the correct path, eg:

    export SPARK_HOME=$HOME/someotherpath/for/spark/spark-1.6.2-bin-hadoop2.6/
    
## Run the startup script


    cd scimus-2017/labs/lab3
    sh start-jupyter-spark.sh


