from myapp import db
from sqlalchemy.orm import column_property


class customer(db.Model):
    id = db.Column(db.Integer,primary_key = True)
    firstname = db.Column(db.String(100))
    lastname = db.Column(db.String(100))
    comment = db.Column(db.String(100))
    address = db.Column(db.String(100))
    telephone = db.Column(db.String(100))
    email = db.Column(db.String(100))
    fullname = column_property(firstname + " " + lastname)
    linkphone = column_property("\<a href='tel:" + telephone + "'>" + telephone + "</a>")


class events(db.Model):
    id = db.Column(db.Integer,primary_key = True)
    name = db.Column(db.String(200))
    start = db.Column(db.DateTime)
    end = db.Column(db.DateTime)
    customer = db.Column(db.Integer)
    employee = db.Column(db.Integer)
