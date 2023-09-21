# Install dependencies to local folder
pip install -r requirements.txt -t ./python

# Zip dependencies into a file for use as a lambda layer
zip -r terraform/canvasLayer.zip ./python/
