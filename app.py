from flask.logging import create_logger
from flask import Flask, jsonify, request, render_template
from transformers import pipeline
import logging

app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)


@app.route("/")
def home():
    return render_template('index.html')


@app.route("/classify", methods=['POST'])
def generate():
    text = request.form.get('w3review') or ""
    LOG.info(f"json payload: {text}")
    result = classifier(text)
    LOG.info(f"json prediction: {result}")
    return jsonify({'prediction': result})


if __name__ == "__main__":
    # huggingface.co : "j-hartmann/emotion-english-distilroberta-base"
    classifier = pipeline("text-classification", "model_data/",
                          return_all_scores=True, )
    app.run(host='0.0.0.0', port=9000, debug=True)  # specify port=80
