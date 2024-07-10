FROM python
RUN pip install Flask
RUN pip install psycopg2-binary
COPY index.py /root/
WORKDIR /root
CMD python index.py