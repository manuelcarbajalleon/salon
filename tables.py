from flask_table import Table, Col, LinkCol


class Results(Table):
    id = Col('id', show=False)
    #firstname = Col('firstname')
    #lastname = Col('lastname')
    fullname = Col('fullname')
    #comment = Col('comment')
    #address = Col('address')
    telephone = Col('telephone')
    #email = Col('email')
    edit = LinkCol('Edit', 'edit', url_kwargs=dict(id='id'))
    delete = LinkCol('Delete', 'delete', url_kwargs=dict(id='id'))
    atencionesCliente = LinkCol('Atenciones', 'atencionesCliente', url_kwargs=dict(id='id', name='fullname'))

class atencionesResults(Table):
    start = Col('start')
    name = Col('name')
