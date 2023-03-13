import tkinter.messagebox
from tkinter import *
import mysql.connector as sql
a = sql.connect(host="localhost", user="root", password="Iambatman@1")
b = a.cursor()
b=a.cursor(buffered=True)
if (a):
    print("program will be executed")
else:
    print("program will not be executed")
b.execute("create database if not exists hello")
b.execute("use hello")
b.execute("create table if not exists hospital"
            "("
            "idno varchar(12) primary key,"
            "name char(50),"
            "age char(3),"
            "disease  varchar(25),"
            "fee varchar(10),"
            "bg varchar(3))")
b.execute("create table if not exists patient_details"
            "("
            "idno varchar(12) primary key,"
            "doctor varchar(50),"
            "date varchar(20),"
            "time varchar(20),"
            "patient_no varchar(10))")
