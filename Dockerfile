FROM ashutoshojha5/miniconda3:main

COPY --chown=anaconda:anaconda requirements.txt /src/requirements.txt
WORKDIR /src
RUN pip install -r requirements.txt
COPY --chown=anaconda:anaconda . .
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
