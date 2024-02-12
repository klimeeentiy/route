import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: new TextFormField(
                    decoration:
                        new InputDecoration(labelText: "Login or Email:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    child: new TextFormField(
                      decoration: new InputDecoration(labelText: "Password:"),
                      obscureText: true,
                    ),
                    width: 400.0,
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 8,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: const Text('Войти'),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 8,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: const Text('Регистрация'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: "Name:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: "Lastname:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: "Login:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: new TextFormField(
                    decoration: InputDecoration(labelText: "Email:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Password:"),
                      obscureText: true,
                    ),
                    width: 400.0,
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    child: TextFormField(
                      decoration:
                          InputDecoration(labelText: "Confirm the password:"),
                      obscureText: true,
                    ),
                    width: 400.0,
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 8,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: const Text('Зарегистрироваться'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
