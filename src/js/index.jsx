import React from 'react';
import routes from './routes';
import Router from 'react-router';
import RouterContainer from './services/RouterContainer';
import RouterActionCreators from './actions/RouterActionCreators.jsx';

console.log("help");
RouterContainer.set(Router.create({routes}));

Router.run(routes, function(Handler, state) {
  console.log("here?");
  RouterActionCreators.changeRoute({state});
  React.render(<Handler />, document.getElementById('main'));
});
