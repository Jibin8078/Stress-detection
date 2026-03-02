import os
import uuid
import random
import smtplib
from flask import *
from database import *
from datetime import datetime
from core import *
from email.mime.text import MIMEText
from flask_mail import Mail

admin = Blueprint('admin', __name__)

# Admin Home Page
@admin.route('/admin_home')
def admin_home():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        return render_template('admin_home.html')

# Designation add & delete
@admin.route('/admin_design', methods=['GET', 'POST'])
def admin_design():
    if session.get('lid') is None:
        return redirect(url_for('public.login'))
    else:
        data = {}

        if request.method == 'POST' and 'submit' in request.form:
            desig = request.form['designation']
            
            # Check if designation already exists
            qc = "SELECT * FROM designation WHERE designation_name = '%s'" % (desig)
            res = select(qc)
            if res:  # Designation already exists
                return '''<script>alert("Designation already exists!");window.location='/admin_design'</script>'''
            else:
                qry1 = "INSERT INTO designation (designation_name) VALUES ('%s')" % (desig)
                res = insert(qry1)
                return '''<script>alert("Designation added successfully!");window.location='/admin_design'</script>'''

        # Fetch existing designations for viewing
        qry2 = "SELECT * FROM designation"
        res = select(qry2)
        data['view'] = res

        # Handle update and delete actions
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None

        if action == 'update':
            q1 = "SELECT * FROM designation WHERE designation_id = '%s'" % (id)
            res1 = select(q1)
            data['upd'] = res1

        if request.method == 'POST' and 'update' in request.form:
            desig = request.form['designation']
            q2 = "UPDATE designation SET designation_name = '%s' WHERE designation_id = '%s'" % (desig, id)
            update(q2)
            return '''<script>alert("Designation updated successfully!");window.location='/admin_design'</script>'''

        if action == 'delete':
            q3 = "DELETE FROM designation WHERE designation_id = '%s'" % (id)
            delete(q3)
            return '''<script>alert("Designation deleted successfully!");window.location='/admin_design'</script>'''

        return render_template('admin_design.html', data=data)

# Register Staff
@admin.route('/admin_staff', methods=['get', 'post'])
def admin_staff():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        data = {}
        q = "select * from designation"
        re = select(q)
        data['sel'] = re 
        item={}
        
        if 'searchbtn' in request.form:
            search=request.form['search']
            category=request.form['category']
            
            if category=='all':
                qryy="select * from staff"
                ress=select(qryy)
                item['view']=ress
            elif category=='name' and search!=' ':
                qryy="select * from staff where first_name LIKE '%s%s'"%(search,'%')
                ress=select(qryy)
                print(ress)
                item['view']=ress
            elif category=='namee' and search!=' ':
                qryy="select * from staff where last_name LIKE '%s%s'"%(search,'%')
                ress=select(qryy)
                print(ress)
                item['view']=ress
            elif category=='designation' and search!=" ":
                qryy="select * from staff inner join designation using (designation_id) where designation_name LIKE'%s%s'"%(search,"%")
                ress=select(qryy)
                item['view']=ress
            
        if 'submit' in request.form:
            design = request.form['designation']
            first = request.form['first']
            last = request.form['last']
            gender = request.form['gender']
            dob = request.form['dob']
            phone_no = request.form['phone_no']
            email = request.form['email']
            username=email
            password= datetime.strptime(dob,'%Y-%m-%d').strftime('%d%m%Y')
            qry4="select * from login"
            res4=select(qry4)
            a=0
            for i in res4:
                if i['username']==email:
                    a=1
                    break
            if a==1:
                return '''<script>alert("User Already exist with this ID!!");window.location='/admin_staff'</script>'''
            else:
                qry3 = "insert into login(username,password,user_type) values('%s','%s','staff')" % (username, password)
                res = insert(qry3)
                q="select * from login where username='%s'"%(username)
                data['user']=select(q)
                user=data['user'][0]['username']
                qry1 = "insert into staff(username,designation_id,first_name,last_name,gender,dob,s_phone_no,s_email_id) values ('%s','%s','%s','%s','%s','%s','%s','%s')" % (
                    user, design, first, last, gender, dob, phone_no, email)
                res8=insert(qry1)
                qry5="insert into p_address(username) value('%s')"%(user)
                insert(qry5)
                qry6="insert into c_address(username) value('%s')"%(user)
                insert(qry6)

                #Uploading images for training
                pid=str(res8)
                isFile = os.path.isdir(r"static/trainimages/"+pid)  
                print(isFile)

                if(isFile==False):
                    os.mkdir(r'static/trainimages/'+pid)
                image1=request.files['img1']
                path=(r"static/trainimages/"+pid+"/"+str(uuid.uuid4())+image1.filename)
                image1.save(path)

                image2=request.files['img2']
                path=(r"static/trainimages/"+pid+"/"+str(uuid.uuid4())+image2.filename)
                image2.save(path)

                image3=request.files['img3']
                path=(r"static/trainimages/"+pid+"/"+str(uuid.uuid4())+image3.filename)
                image3.save(path)
                enf(r"static/trainimages/") 
                        
                flash("Employee Registered Successfully!!")
                
                #Sending Email about credentials
                rd=random.randrange(1000,9999,4)
                msg="Your login credentials for IBETTER : Username - '%s' & Password - '%s'"%(username,password)
                data['rd']=rd
                print(rd)
                try:
                    gmail = smtplib.SMTP('smtp.gmail.com', 587)
                    gmail.ehlo()
                    gmail.starttls()
                    gmail.login('lbetter24x7@gmail.com','jjwrgcahofexprck')
                except Exception as ex:
                    print("Couldn't setup email!!"+str(ex))
                msg = MIMEText(msg)
                msg['Subject'] = 'YOUR CREDENTIALS'
                msg['To'] = email
                msg['From'] = 'lbetter24x7@gmail.com'
                try:
                    gmail.send_message(msg)
                    print(msg)
                    session['rd']=rd
                    return redirect(url_for('admin.admin_staff'))
                except Exception as ex:
                    print("COULDN'T SEND EMAIL", str(ex))
                    return redirect(url_for('admin.admin_staff'))
                
        qry2 = "select * from staff"
        res = select(qry2)
        data['view'] = res

        #Updating and deleting Staff
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None
        
        if action == 'update':
            q1 = "select * from staff where staff_id='%s'" % (id)
            res1 = select(q1)
            data['upd'] = res1

        if 'update' in request.form:
            first = request.form['first']
            last = request.form['last']
            gender = request.form['gender']
            dob = request.form['dob']
            phone_no = request.form['phone_no']
            email = request.form['email']
            q2 = "update staff set first_name='%s', last_name='%s',gender='%s',dob='%s',s_phone_no='%s', s_email_id='%s'where staff_id='%s'" % (
                first, last, gender, dob, phone_no, email, id)
            update(q2)
            return '''<script>alert("Employee Details Updated Successfully!!");window.location='/admin_staff'</script>'''
        
        if action == 'delete':
            q3 = "delete from staff where staff_id='%s'" % (id)
            delete(q3)
            return '''<script>alert("Employee Deleted Successfully!!");window.location='/admin_staff'</script>'''
        return render_template('admin_staff.html', data=data,item=item)

# View Details of Staff
@admin.route('/more_detail', methods=['get', 'post'])
def more_detail():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        data = {}
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None

        if action=='view':
            qq="select * from staff inner join designation using (designation_id) where staff_id='%s'"%(id)
            qq1="select * from c_address inner join staff using (username) where staff_id='%s'"%(id)
            qq2="select * from p_address inner join staff using (username) where staff_id='%s'"%(id)
            data['basic']=select(qq)
            print(data['basic'])
            data['caddr']=select(qq1)
            data['paddr']=select(qq2)
        return render_template('more_detail.html', data=data)

#View Details of Health Care Team
@admin.route('/more_health_team_detail', methods=['get', 'post'])
def more_health_team_detail():
    data = {}
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None

        if action=='view':
            qq="select * from health_care_team where health_id='%s'"%(id)
            qq1="select * from c_address inner join health_care_team using (username) where health_id='%s'"%(id)
            qq2="select * from p_address inner join health_care_team using (username) where health_id='%s'"%(id)
            data['basic']=select(qq)
            data['caddr']=select(qq1)
            data['paddr']=select(qq2)
        return render_template('more_health_team_detail.html', data=data)

# Register Health Care Team
@admin.route('/admin_health_team', methods=['get', 'post'])
def admin_health_team():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        data = {}
        item={}

        if 'searchbtn' in request.form:
            search=request.form['search']
            category=request.form['category']
            if category=='all' and ( search=='' or search!=""):
                qryy="select * from health_care_team"
                ress=select(qryy)
                item['view']=ress
            elif category=='name' and search!=' ':
                qryy="select * from health_care_team where h_fname LIKE '%s%s'"%(search,'%')
                ress=select(qryy)
                item['view']=ress
            elif category=='namee' and search!=' ':
                qryy="select * from health_care_team where h_lname LIKE '%s%s'"%(search,'%')
                ress=select(qryy)
                item['view']=ress
                
        if 'submit' in request.form:
            first = request.form['first']
            last = request.form['last']
            gender = request.form['gender']
            dob = request.form['dob']
            qualif = request.form['h_qualification']
            phone = request.form['h_phone_no']
            email = request.form['h_email_id']
            username= email
            password= phone
            qry4="select * from login"
            res4=select(qry4)
            a=0
            for i in res4:
                if i['username']==email:
                    a=1
                    break

            if a==1:
                return '''<script>alert("User Already exist with this ID!!");window.location='/admin_health_team'</script>'''
            else:
                qry3 = "insert into login(username,password,user_type) values('%s','%s','health_care_team')" % (
                    username, password)
                res = insert(qry3)
                q="select * from login where username='%s'"%(username)
                data['user']=select(q)
                user=data['user'][0]['username']
                qry1 = "insert into health_care_team(username,h_fname,h_lname,h_gender,h_dob,h_qualification,h_phone_no,h_email_id) values('%s','%s','%s','%s','%s','%s','%s','%s')" % (
                    user, first,last,gender,dob, qualif, phone, email)
                insert(qry1)
                qry5="insert into p_address(username) value('%s')"%(user)
                insert(qry5)
                qry6="insert into c_address(username) value('%s')"%(user)
                insert(qry6)
                flash("Health Care Employee Registered Successfully!!")
                
                #Sending Email about credentials
                rd=random.randrange(1000,9999,4)
                msg="Your login credentials for IBETTER : Username - '%s' & Password - '%s'"%(username,password)
                data['rd']=rd
                print(rd)
                try:
                    gmail = smtplib.SMTP('smtp.gmail.com', 587)
                    gmail.ehlo()
                    gmail.starttls()
                    gmail.login('lbetter24x7@gmail.com','jjwrgcahofexprck')
                except Exception as ex:
                    print("Couldn't setup email!!"+str(ex))
                msg = MIMEText(msg)
                msg['Subject'] = 'YOUR CREDENTIALS'
                msg['To'] = email
                msg['From'] = 'lbetter24x7@gmail.com'
                try:
                    gmail.send_message(msg)
                    print(msg)
                    session['rd']=rd
                    return redirect(url_for('admin.admin_health'))
                except Exception as ex:
                    print("COULDN'T SEND EMAIL", str(ex))
                    return redirect(url_for('admin.admin_health'))
        qry2 = "select * from health_care_team"
        res = select(qry2)
        data['view'] = res

        # Updating and deleting Health Care Team
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None
        
        if action == 'update':
            q1 = "select * from health_care_team where health_id='%s'" % (id)
            res1 = select(q1)
            data['upd'] = res1
        
        if 'update' in request.form:
            name = request.form['h_name']
            qualif = request.form['h_qualification']
            phone = request.form['h_phone_no']
            email = request.form['h_email_id']
            q2 = "update health_care_team set h_name='%s',h_qualification='%s',h_phone_no='%s',h_email_id='%s' where health_id='%s'" % (
                name, qualif, phone, email, id)
            update(q2)
            return '''<script>alert("Health Care Employee Updated Successfully!!");window.location='/admin_health_team'</script>'''
        
        if action == 'delete':
            q3 = "delete from health_care_team where health_id='%s'" % (id)
            delete(q3)
            return '''<script>alert("Health Care Employee Deleted Successfully!!");window.location='/admin_health_team'</script>'''
    return render_template('admin_health_team.html', data=data,item=item)

# Send Notification
@admin.route('/admin_send_notification', methods=['get', 'post'])
def admin_send_notification():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        data = {}
        if 'submit' in request.form:
            des = request.form['notification']
            qry1 = "insert into notification(notification_des,date,user_type) values ('%s',curdate(),'admin')" % (
                des)
            res = insert(qry1)
            return '''<script>alert("Notification Send Successfully!!");window.location='/admin_send_notification'</script>'''
        qry = "select * from notification"
        res = select(qry)
        data['view'] = res
        
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None
        
        if action == 'delete':
            q = "delete from notification where notification_des='%s'" % (id)
            delete(q)
            return '''<script>alert("Notification Deleted Successfully!!");window.location='/admin_send_notification'</script>'''
        return render_template('admin_send_notification.html', data=data)

# View complaints
@admin.route('/admin_view_complaint', methods=['get', 'post'])
def admin_view_complaint():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        data = {}
        qry = "select * from complaints inner join staff using (username)"
        res = select(qry)
        data['view'] = res
        return render_template('admin_view_complaint.html', data=data)

# Send response to complaints
@admin.route('/admin_send_reply', methods=['get', 'post'])
def admin_send_reply():
    if session.get('lid') is None:
        return redirect (url_for('public.login'))
    else:
        data = {}
        if 'action' in request.args:
            action = request.args['action']
            id = request.args['id']
        else:
            action = None
        
        if action == 'reply':
            qry = "select * from complaints where complaint_id='%s'" % (id)
            res = select(qry)
            data['view'] = res
        
        if 'submit' in request.form:
            reply = request.form['reply']
            qry = "update complaints set reply='%s' where complaint_id='%s'" % (
                reply, id)
            insert(qry)
            return '''<script>alert("Reply Send Successfully!!");window.location='/admin_send_reply'</script>'''
        return render_template('admin_send_reply.html', data=data)
