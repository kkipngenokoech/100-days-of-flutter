# FORMS

## final TextEditingController _passwordController = TextEditingController();

TextEditingController is used to control the content of a text field and to provide an interface to listen for changes and retrieves the current value of the field.

in the example above, if you want to access the value of the password you just : `_passwordController.text`

## Form()

there is a widget used to control forms in flutter, `Flutter()`. This widget is used to wrap set of form fields like:

1. text fields
2. checkboxes
3. radio buttons

it helps in organizing and managing the state and validation of those fields.

when a `Form` is submitted, it triggers validation for all its fields.

The GlobalKey<FormState> _formKey is used to interact with the form for validation and submission. The validator functions inside the TextFormField widgets are used to provide input validation messages.