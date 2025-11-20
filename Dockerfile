FROM python:3.11-slim

WORKDIR /app
COPY . .

# Install Jupyter and common data libs
RUN pip install --no-cache-dir jupyter pandas numpy scikit-learn matplotlib seaborn

EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
