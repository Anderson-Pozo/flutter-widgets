import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email  = '';
  String _fecha  = '';
  String _opcionSeleccionada = 'Volar';
   
  List<String> _poderes = ['Volar', 'Rayos X', 'Super aliento', 'Super fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
          Divider(),
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        labelText: 'Nombre',
        hintText: 'Nombre ...',
        helperText: 'Solo el nombre',
        suffix: Icon(Icons.accessibility),
        // prefixIcon: Icon(Icons.textsms),
        icon: Icon(Icons.people)
      ),
      onChanged: (valor){

        setState(() {
          _nombre = valor;
        });
      }
    );

  }


  Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Email',
        hintText: 'Email ...',
        suffix: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor) =>setState(() {
          _email = valor;
      })
      
    );

  }
  
  Widget _crearPassword() {
    
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Password',
        hintText: 'Password ...',
        suffix: Icon(Icons.lock),
        icon: Icon(Icons.lock_outline)
      )
      
    );
  }

  Widget _crearFecha(BuildContext context){
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        labelText: 'Fecha nacimiento',
        hintText: 'Fecha nacimiento ...',
        suffix: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);

      },
      
    );
  }
  
  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2021),
      locale: Locale('es', 'ES')
    );

    if (picked !=null){
      setState(() {
        _fecha = DateFormat("yMMMMd").format(picked);
        // _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

List<DropdownMenuItem<String>> getOpcionesDropdown(){

  List<DropdownMenuItem<String>> lista = new List();

  _poderes.forEach((poder){
    lista.add(DropdownMenuItem(
      child: Text(poder),
      value: poder,
    ));
  });

  return lista;
}


Widget _crearDropdown(){

  return Row(
    children: <Widget>[
      Icon(Icons.select_all),
      SizedBox(width: 30.0,),
      DropdownButton(
      value: _opcionSeleccionada,
      items: getOpcionesDropdown(),
      onChanged: (opt){
        setState(() {
          _opcionSeleccionada = opt;
        });
      },
    )
    ],
  );

}

  Widget _crearPersona() {

    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcionSeleccionada),
    );

  }

}