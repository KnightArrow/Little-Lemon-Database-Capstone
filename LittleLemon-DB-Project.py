#!/usr/bin/env python
# coding: utf-8

# In[2]:


pip install mysql-connector-python


# In[5]:


import mysql.connector as connector


# In[7]:


connection=connector.connect(username="projectuser",password="@Project123",db="project_capstone")


# In[8]:


cursor=connection.cursor()


# In[9]:


cursor.execute("SHOW TABLES")


# In[10]:


results=cursor.fetchall()


# In[12]:


print(cursor.column_names)
for result in results:
    print(result)


# In[17]:


cursor.execute("SELECT Customers.CustomerName,'Customers.Phone Number',Orders.TotalCost FROM Orders INNER JOIN Customers ON Customers.CustomerID=Orders.Customers_CustomerID WHERE Orders.TotalCost>60;")


# In[18]:


results1=cursor.fetchall()


# In[19]:


print(cursor.column_names)
for result in results1:
    print(result)


# In[ ]:




