FROM amshak/py-faster-rcnn
MAINTAINER Amlaan Shakeel <@amshak>

# Extras
RUN sudo apt-get install -y vim

# Adds py-faster-rcnn
ADD . /home/py-faster-rcnn
WORKDIR /home/py-faster-rcnn
RUN cd lib && make

RUN ./data/scripts/fetch_faster_rcnn_models.sh

CMD ["bash"]
