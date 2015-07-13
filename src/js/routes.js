import React from 'react';
import Router from 'react-router';
const {Route} = Router;

import App from './components/App.jsx';
import HomePage from './components/HomePage.jsx';

export default (
  <Route handler={App}>
    <Route name='home' path='/' handler={HomePage} />
  </Route>
);
