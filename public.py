from flask import *
from database import *
from datetime import datetime

public = Blueprint('public', __name__)

# Public Home Page
@public.route('/')
def home():
    return render_template('home.html')

# About
@public.route('/about')
def about():
    return render_template('about.html')

# Service
@public.route('/service')
def service():
    return render_template('service.html')

# Login
@public.route('/login', methods=['get', 'post'])
def login():
    session.clear()
    data={}
    if 'submit' in request.form:
        now = datetime.now()
        date=now.strftime('%d-%m-%Y')
        date = datetime.strptime(date,'%d-%m-%Y').date()
        print(type(date))
        q_d1 = 'update appointment set status="Not Attended" where date <= "%s"'%(date)
        update(q_d1)
        uname = request.form['username']
        psw = request.form['password']
        qry = "select * from login where username='%s' and password='%s'" % (uname, psw)
        res = select(qry)
        print(res)
        data['login']=res
        print(res)
        if data['login']:
            session['lid'] = data['login'][0]['username']
            user = data['login'][0]['user_type']
            if user == 'admin':
                return redirect(url_for('admin.admin_home'))
            if user == 'health_care_team':
                q = "select * from health_care_team where username='%s'"%(session['lid'])
                print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&",q)
                res3 = select(q)
                print(res3)
                data['health']=res3
                if data['health']:
                    session['hli'] = data['health'][0]['health_id']
                    return redirect(url_for('health.health_home'))
                else:
                    '''<script>alert("Your Login is restrited, Please Contact Admin");window.location='login'</script>'''
            if user == 'staff':
                q = "select * from staff where username='%s'" % (
                    session['lid'])
                res2 = select(q)
                data['staff']=res2
                if data['staff']:
                    session['sli'] = data['staff'][0]['staff_id']
                    print(session['sli'])
                    return redirect(url_for('staff.staff_home'))
                else:
                    '''<script>alert("Your Login is restrited, Please Contact Admin");window.location='login'</script>'''
        else:
            return '''<script>alert("Login Failed!! Invalid Username/Password");window.location='login'</script>'''
        return redirect(url_for('public.login'))
    return render_template('login.html',data=data)
