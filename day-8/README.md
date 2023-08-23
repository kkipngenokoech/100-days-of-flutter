# STATE MANAGEMENT

Data flows in different directions in any application:

1. from the parent to child widget
2. from the child widget to parent
3. from a widget to another widget that are not in the same widget tree.
4. managing states within itself

in such situations we need a way to manage global states:

1. Redux
2. BloC
3. scoped_model

## SCOPED MODEL

it is just a collection of three classes:

1. model class - it will extend scoped_model class. here you will place your data handling logic, and naturally our data variables.