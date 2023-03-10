import hashlib
import os
import uuid
import re

class Util:
    def generate_salt():
        return os.urandom(16)

    def generate_hash(password, salt):
        key = hashlib.pbkdf2_hmac(
            'sha256',
            password.encode('utf-8'),
            salt,
            100000,
            dklen=16
        )
        return key

    def gen_appt_id(d):
        # apptid = None
        # uid = uuid.uuid4()
        uid= str(uuid.uuid4().hex.upper()[0:4])
        d= d.replace('-', '')
        apptid = d+ uid
        return apptid
        
    def get_date(appt_id):
        date = None
        month= appt_id[4:6]
        day=appt_id[6:8]
        year=appt_id[0:4]
        date= '(yyyy-mm-dd)'+year+'-'+month+'-'+day
      
        return date

 
    def is_strong_password(password):
       
        if len(password) < 8 or (not (re.search('[a-zA-Z]', password) and re.search('[0-9]', password) and (re.search('[!@#?]', password)))):
            return False
        
        return True