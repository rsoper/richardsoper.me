from flask import Flask
from flask import Flask, flash, redirect, render_template, request, session, abort, url_for, make_response
import os

app = Flask(__name__)


@app.route('/', defaults={'u_path': ''})
@app.route('/<path:u_path>')
def home(u_path):
    headers = request.headers
    auth = headers.get('X-Admin-Auth')
    if auth == 'Definitely':
        return 'Pass', 200
    if not session.get('logged_in'):
        return render_template('login.html'), 403
    else:
        return redirect(f"https://{u_path}.richardsoper.me", code=200)


@app.route('/login', methods=['POST'])
def do_admin_login():
    u_path = request.headers.get('Referer')
    if request.form['password'] == 'password' and request.form['username'] == 'admin':
        # session['logged_in'] = True
        # return redirect(u_path, code=302)
        response = make_response(redirect(u_path))
        response.headers['X-Admin-Auth'] = 'Definitely'
        return response
    else:
        flash('wrong password!')
    return home(u_path)


if __name__ == "__main__":
    app.secret_key = os.urandom(12)
    app.run(debug=True, host='0.0.0.0', port=5000)
