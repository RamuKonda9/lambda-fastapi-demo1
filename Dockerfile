FROM public.ecr.aws/lambda/python:3.9

# Install pip dependencies
COPY requirements.txt .
RUN python3.9 -m pip install -r requirements.txt -t .

# Copy function code
COPY app.py ./

# Lambda Entrypoint
CMD ["app.app"]
