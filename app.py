from flask import Flask, jsonify
from liquid import Template
import json

app = Flask(__name__)

@app.route("/fhir-converter")
def convert():
    template = Template("Hello, {{ you }}")
    output = template.render(you="kannan")
    #string1 = 'value1 = "this_is_value1"'
    #exec(string1)
    #print(value1)
    return jsonify(output)

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=8080) 
