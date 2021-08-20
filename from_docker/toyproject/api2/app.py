# file name : app.py
 
from flask import Flask, request, render_template, flash, redirect, url_for
from flask import current_app as current_app
 
from module import dbModule

import json

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    
    db_class= dbModule.Database()
    sql     = "SELECT emp_no,salary FROM salaries ORDER BY SALARY DESC LIMIT 1"
    row     = db_class.executeAll(sql)
    return json.dumps(row)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)
 
