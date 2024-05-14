import 'package:flutter/material.dart';

class MonsterSheet extends StatefulWidget {
  const MonsterSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MonsterSheetState createState() => _MonsterSheetState();
}

class _MonsterSheetState extends State<MonsterSheet> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _race = '';
  String _alignment = '';
  String _armorClass = '';
  String _actions = '';
  String _inventory = '';
  String _initiative = '';
  String _speed = '';
  String _hitPoints = '';
  String _challengeRating = '';
  String _skills = '';
  String _currentHitPoints = '';
  String _temporaryHitPoints = '';
  String _proficiencyBonus = '';
  String _bonusActions = '';
  String _reactions = '';
  String _languages = '';
  String _resistances = '';
  String _immunities = '';
  String _senses = '';
  String _additionalFeatures = '';
  String _strength = '';
  String _charisma = '';
  String _wisdom = '';
  String _intelligence = '';
  String _constitution = '';
  String _dexterity = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              initialValue: _name,
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
              validator: (value) {
                if (value == '') {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Race'),
              initialValue: _race,
              onChanged: (value) {
                setState(() {
                  _race = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Alignment'),
              initialValue: _alignment,
              onChanged: (value) {
                setState(() {
                  _alignment = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Armor Class'),
              initialValue: _armorClass,
              onChanged: (value) {
                setState(() {
                  _armorClass = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Actions'),
              initialValue: _actions,
              onChanged: (value) {
                setState(() {
                  _actions = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Inventory'),
              initialValue: _inventory,
              onChanged: (value) {
                setState(() {
                  _inventory = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Initiative'),
              initialValue: _initiative,
              onChanged: (value) {
                setState(() {
                  _initiative = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Speed'),
              initialValue: _speed,
              onChanged: (value) {
                setState(() {
                  _speed = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Hit Points'),
              initialValue: _hitPoints,
              onChanged: (value) {
                setState(() {
                  _hitPoints = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Challenge Rating'),
              initialValue: _challengeRating,
              onChanged: (value) {
                setState(() {
                  _challengeRating = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Skills'),
              initialValue: _skills,
              onChanged: (value) {
                setState(() {
                  _skills = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Current Hit Points'),
              initialValue: _currentHitPoints,
              onChanged: (value) {
                setState(() {
                  _currentHitPoints = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Temporary Hit Points'),
              initialValue: _temporaryHitPoints,
              onChanged: (value) {
                setState(() {
                  _temporaryHitPoints = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Proficiency Bonus'),
              initialValue: _proficiencyBonus,
              onChanged: (value) {
                setState(() {
                  _proficiencyBonus = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Bonus Actions'),
              initialValue: _bonusActions,
              onChanged: (value) {
                setState(() {
                  _bonusActions = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Reactions'),
              initialValue: _reactions,
              onChanged: (value) {
                setState(() {
                  _reactions = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Languages'),
              initialValue: _languages,
              onChanged: (value) {
                setState(() {
                  _languages = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Resistances'),
              initialValue: _resistances,
              onChanged: (value) {
                setState(() {
                  _resistances = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Immunities'),
              initialValue: _immunities,
              onChanged: (value) {
                setState(() {
                  _immunities = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Senses'),
              initialValue: _senses,
              onChanged: (value) {
                setState(() {
                  _senses = value;
                });
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Additional Features'),
              initialValue: _additionalFeatures,
              onChanged: (value) {
                setState(() {
                  _additionalFeatures = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Strength'),
              initialValue: _strength,
              onChanged: (value) {
                setState(() {
                  _strength = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Charisma'),
              initialValue: _charisma,
              onChanged: (value) {
                setState(() {
                  _charisma = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Wisdom'),
              initialValue: _wisdom,
              onChanged: (value) {
                setState(() {
                  _wisdom = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Intelligence'),
              initialValue: _intelligence,
              onChanged: (value) {
                setState(() {
                  _intelligence = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Constitution'),
              initialValue: _constitution,
              onChanged: (value) {
                setState(() {
                  _constitution = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Dexterity'),
              initialValue: _dexterity,
              onChanged: (value) {
                setState(() {
                  _dexterity = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')));
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
