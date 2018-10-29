from flask_wtf import FlaskForm
from wtforms import Form, StringField, TextField, PasswordField, DateField, IntegerField, HiddenField, TextAreaField
import time
from datetime import date

class LoginForm(FlaskForm):
    username = TextField('username')
    password = PasswordField('password')


class SearchCustomer(FlaskForm):
    search = StringField('Cliente: ')


class CustomerForm(Form):
    firstname = StringField('Nombre')
    lastname = StringField('Apellido')
    comment = StringField('Notas')
    address = StringField('Direccion')
    telephone = StringField('Telefono')
    email = StringField('Email')

class AtencionesClienteForm(Form):
    start = DateField('Fecha', default=date.today())
    name = TextAreaField('Servicio')
    customer = HiddenField('')
