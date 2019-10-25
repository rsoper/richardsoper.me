from flask import Flask
from flask import Flask, flash, redirect, render_template, request, session, abort, url_for
import os

app = Flask(__name__)


@app.route('/', defaults={'u_path': ''})
@app.route('/<path:u_path>')
def home(u_path):
    session['u_path'] = u_path
    if not session.get('logged_in'):
        return redirect(url_for('authenticate'), code=401)
    else:
        return redirect(f"https://{u_path}.richardsoper.me", code=200)


@app.route('/authenticate')
def authenticate():
    return render_template('login.html')


@app.route('/login', methods=['POST'])
def do_admin_login():
    u_path = session.get('u_path')
    if request.form['password'] == 'password' and request.form['username'] == 'admin':
        session['logged_in'] = True
    else:
        flash('wrong password!')
    return home(u_path)


if __name__ == "__main__":
    app.secret_key = os.urandom(12)
    app.run(debug=True, host='0.0.0.0', port=5000)
