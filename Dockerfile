FROM python:3.10

ADD ./ImageProcessing /app/ImageProcessing
ADD ./Img /app/Img
ADD ./MappingTable /app/MappingTable
ADD ./scrapinglib /app/scrapinglib

ADD ./*.py /app/
ADD ./config.ini /app/
ADD ./requirements.txt /app/

RUN cd /app && pip install -r requirements.txt

WORKDIR /app

CMD ["python", "Movie_Data_Capture.py"]