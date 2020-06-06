/*
querySelector('#confirm') // Get an object.
  ..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));
เท่ากัน
querySelector('#confirm').text = ‘Confirm’;
querySelector('#confirm').classes.add('important');
querySelector('#confirm').onClick .listen((e) => window.alert('Confirmed!'));

*/
