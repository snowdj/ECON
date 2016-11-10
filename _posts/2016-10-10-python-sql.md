---
published: true
layout: post
date: '2016-08-24 11:30:00 +0800'
summary: python sql.
categories: sql
---



## Python and spl

[Intro to Relational Databases](https://classroom.udacity.com/courses/ud197/lessons/3415228765/concepts/34221585900923)


```python
import sqlite3

conn = sqlite3.connect('emaildb.sqlite')
cur = conn.cursor()
#%%
cur.execute('''
DROP TABLE IF EXISTS Counts''')

cur.execute('''
CREATE TABLE Counts (email TEXT, count INTEGER)''')
#%%
fname = raw_input('Enter file name: ')
if ( len(fname) < 1 ) : fname = 'mbox-short.txt'
fh = open(fname)
for line in fh:
    if not line.startswith('From: ') : continue
    pieces = line.split()
    email = pieces[1]
    print( email)
    cur.execute('SELECT count FROM Counts WHERE email = ? ', (email, ))
    row = cur.fetchone()
    if row is None:
        cur.execute('''INSERT INTO Counts (email, count) 
                VALUES ( ?, 1 )''', ( email, ) )
    else : 
        cur.execute('UPDATE Counts SET count=count+1 WHERE email = ?', 
            (email, ))
    # This statement commits outstanding changes to disk each 
    # time through the loop - the program can be made faster 
    # by moving the commit so it runs only after the loop completes
    conn.commit()
#%%
    
    
cur.execute('''
DROP TABLE IF EXISTS Counts''')

cur.execute('''
CREATE TABLE Counts (org TEXT, count INTEGER)''')
 

fname = 'mbox.txt'
fh = open(fname)
   
#%%

for line in fh:
    if not line.startswith('From: ') : continue
    pieces = line.split()
    email = pieces[1]
    print( email)
    mail = email.split("@")
    org = mail[1]
    cur.execute('SELECT count FROM Counts WHERE org = ? ', (org, ))
    row = cur.fetchone()
    if row is None:
        cur.execute('''INSERT INTO Counts (org, count) 
                VALUES ( ?, 1 )''', ( org, ) )
    else : 
        cur.execute('UPDATE Counts SET count=count+1 WHERE org = ?', 
            (org, ))
  

    
    
    
conn.commit()   
#%%    
# https://www.sqlite.org/lang_select.html
sqlstr = 'SELECT org, count FROM Counts ORDER BY count DESC LIMIT 70'

print
print ("Counts:")
for row in cur.execute(sqlstr) :
    print( str(row[0]), row[1])


#cur.execute('''
#SELECT org, count FROM Counts ORDER BY org DESC LIMIT 30''')

#%%
conn.commit()  
cur.close()
```
