import React from 'react';
import Router from 'react-router';
const {Route} = Router;

import App from './components/App.jsx';
import HomePage from './components/HomePage.jsx';

export default (
  <Route handler={App} location="history">
    <Route name='f2014' path='/f2014'>
      <Route name='f2014-home' path='/f2014/home' handler={HomePage} />
      <Route name='f2014-mentors' path='/f2014/mentors' />
    </Route>
  </Route>
);
