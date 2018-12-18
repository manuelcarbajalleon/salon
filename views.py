from myapp import app
from models import customer, events
from forms import LoginForm, SearchCustomer, CustomerForm, AtencionesClienteForm
from flask import render_template, flash,  request, redirect
from myapp import db
from tables import Results, atencionesResults
from sqlalchemy import or_
import pandas as pd

@app.route('/', methods=['GET', 'POST'])
def index():
    search = SearchCustomer(request.form)
    search_string = ""
    if request.method == 'POST':
        search_string = search.data['search']
        #return search_results(search)

    results = []
    if search_string:
        qry = db.session.query(customer).filter(or_(customer.firstname.contains(search_string),customer.lastname.contains(search_string)))
        results = qry.all()
    else:
        results = customer.query.all()

    table = Results(results)
    #table = results
    table.border = True
    return render_template('index.html', form=search, table= table)


@app.route('/atencionesCliente/<int:id>/<name>', methods=['GET', 'POST'])
def atencionesCliente(id,name):
    results = []
    qry = db.session.query(events).order_by(events.start.desc()).filter(
                events.customer==id)
    results = qry.all()

    table = atencionesResults(results)
    table.border = True
    return render_template('atencionesCliente.html', table=table,name=name,id=id)


@app.route('/results')
def search_results(search):
    results = []
    search_string = search.data['search']

    if search_string:
        qry = db.session.query(customer).filter(or_(customer.firstname.contains(search_string),customer.lastname.contains(search_string)))
        results = qry.all()
    else:
        results = customer.query.all()

    if not results:
        flash('No results found!')
        return redirect('/')
    else:
        # display results
         # display results
        table = Results(results)
        table.border = True
        return render_template('results.html', table=table)


@app.route('/atencionesReport')
def atencionesReport():


    sql = """SELECT concat(firstname, ' ' , lastname) as Cliente, count(*) as Visitas FROM customer c
     left join events e on c.id = e.customer
     GROUP by concat(firstname, ' ' , lastname)
     order by Visitas desc """

    df = pd.read_sql(sql, db.engine)

    return render_template('atencionesReport.html',table= df.to_html(escape=False,classes='atencionesReport'))

@app.route('/diaSemanaReport')
def diaSemanaReport():


    sql = """SELECT DAYOFWEEK(start),DAYNAME(start), COUNT(*) FROM events WHERE 1
    GROUP BY DAYOFWEEK(start),DAYNAME(start)
    ORDER BY DAYOFWEEK(start) """

    df = pd.read_sql(sql, db.engine)

    return render_template('diaSemanaReport.html',table= df.to_html(escape=False,classes='diaSemanaReport'))



@app.route('/new_customer', methods=['GET', 'POST'])
def new_customer():
    """
    Add a new customer
    """
    form = CustomerForm(request.form)

    if request.method == 'POST' and form.validate():
        # save the album
        new_customer = customer()
        save_changes(new_customer, form, new=True)
        flash('Cliente Registrado!')
        return redirect('/')

    return render_template('new_customer.html', form=form)

@app.route('/nuevaAtencionCustomer/<int:id>', methods=['GET', 'POST'])
def nuevaAtencionCustomer(id):
    """
    Add a new atencion
    """
    form = AtencionesClienteForm(request.form)
    form.customer.data = id

    if request.method == 'POST' and form.validate():
        # save the album
        nuevaAtencion = events()
        save_changesAtencion(nuevaAtencion, form, new=True)
        flash('Atencion Registrada!')
        return redirect('/')

    return render_template('nuevaAtencionCustomer.html', form=form, id=id)

@app.route('/item/<int:id>', methods=['GET', 'POST'])
def edit(id):
    qry = db.session.query(customer).filter(
                customer.id==id)
    customer_info = qry.first()

    if customer_info:
        form = CustomerForm(formdata=request.form, obj=customer_info)
        if request.method == 'POST' and form.validate():
            # save edits
            save_changes(customer_info, form)
            flash('Cliente registrado!')
            return redirect('/')
        return render_template('edit_customer.html', form=form)
    else:
        return 'Error loading #{id}'.format(id=id)

@app.route('/delete/<int:id>', methods=['GET', 'POST'])
def delete(id):
    """
    Delete the item in the database that matches the specified
    id in the URL
    """
    qry = db.session.query(customer).filter(
                customer.id==id)
    customer_info = qry.first()

    if customer:
        form = CustomerForm(formdata=request.form, obj=customer_info)
        if request.method == 'POST' and form.validate():
            # delete the item from the database
            db.session.delete(customer_info)
            db.session.commit()

            flash('Cliente eliminado!')
            return redirect('/')
        return render_template('delete_customer.html', form=form)
    else:
        return 'Error deleting #{id}'.format(id=id)

def save_changes(customer_info, form, new=False):
    """
    Save the changes to the database
    """
    # Get data from form and assign it to the correct attributes
    # of the SQLAlchemy table object


    customer_info.firstname = form.firstname.data
    customer_info.lastname = form.lastname.data
    customer_info.comment = form.comment.data
    customer_info.address = form.address.data
    customer_info.telephone = form.telephone.data
    customer_info.email = form.email.data

    if new:
        # Add the new album to the database
        db.session.add(customer_info)

    # commit the data to the database
    db.session.commit()

def save_changesAtencion(atencion_info, form, new=False):
    """
    Save the changes to the database
    """
    # Get data from form and assign it to the correct attributes
    # of the SQLAlchemy table object


    atencion_info.start = form.start.data
    atencion_info.name = form.name.data
    atencion_info.customer = form.customer.data


    if new:
        # Add the new album to the database
        db.session.add(atencion_info)

    # commit the data to the database
    db.session.commit()
