import 'package:fl_components/components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Manuel',
      'lastName': 'Duarte',
      'email': 'manuel@duarte.com',
      'password': '123456',
      'confirmPassword': '123456',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input y Formularios'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "Ingrese su nombre",
                  suffixIcon: Icons.person,
                  keyboardType: TextInputType.text,
                  icon: Icons.admin_panel_settings_outlined,
                  formProperty: 'name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido",
                  hintText: "Ingrese su apellido",
                  suffixIcon: Icons.person,
                  keyboardType: TextInputType.text,
                  icon: Icons.person,
                  formProperty: 'lastName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Correo",
                  hintText: "Ingrese su correo",
                  suffixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Contraseña",
                  hintText: "Ingrese su contraseña",
                  suffixIcon: Icons.visibility,
                  obscureText: true,
                  icon: Icons.lock,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: "Confirmar contraseña",
                  hintText: "Ingrese su contraseña",
                  obscureText: true,
                  suffixIcon: Icons.visibility,
                  icon: Icons.lock,
                  formProperty: 'confirmPassword',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  value: formValues['role'],
                  decoration: InputDecoration(
                    labelText: 'Rol',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                        value: 'admin', child: Text('Administrador')),
                    DropdownMenuItem(value: 'user', child: Text('Usuario')),
                    DropdownMenuItem(value: 'dev', child: Text('Developer')),
                    DropdownMenuItem(value: 'ui/ux', child: Text('Designer')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Enviar",
                      ),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (_formKey.currentState!.validate()) {
                      print(formValues);
                    } else {
                      print("Formulario invalido");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
