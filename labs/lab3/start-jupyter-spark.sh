#!/bin/sh

# Some SPARK environment variables
export PYSPARK_PYTHON=python
export SPARK_HOME=$HOME/spark-1.6.2-bin-hadoop2.6/
export PATH=$SPARK_HOME/bin:$PATH
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH
export PYSPARK_SUBMIT_ARGS="--master local[*] pyspark-shell"

# pip dependencies
pip install --user wordcloud

jupyter notebook
