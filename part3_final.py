import sqlite3
import boto3

conn = sqlite3.connect('carinfo.db')

c=conn.cursor()

client = boto3.client(
    "sns",
    aws_access_key_id=" ",
    aws_secret_access_key=" ",
    region_name="us-east-1"
)
#c.execute("""CREATE TABLE mini(         #for creation of database containing plate no. and mobile no.
 #       Plate_no text,
  #      Mobile_no text
   #      )""")

#c.execute("INSERT INTO mini VALUES('Plate no.','Mobile no.')")  #inserting values in database
   

def main():
    
    f=open("number_Plate.txt","r")
    content=f.read()
    print(content)
    return content


[a]=c.execute("SELECT Mobile_no FROM mini WHERE Plate_no='"+main()) 
#print(c.fetchone())
a=str(a)
b=a.replace('(','')
b=b.replace(')','')
b=b.replace("'",'')
b=b.replace(',','')
print(b)


client.publish(
    PhoneNumber=b,
    Message="A fine of Rs. 100 is deducted from your account for overspeeding."
)


conn.commit()

conn.close()