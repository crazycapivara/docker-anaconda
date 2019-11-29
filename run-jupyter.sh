#!/bin/sh
sudo docker run -it -p 8888:8888 crazycapivara/anaconda /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"

