import React from 'react';
import routes from './routes';
import Router from 'react-router';
import RouterContainer from './services/RouterContainer';
import RouterActionCreators from './actions/RouterActionCreators.jsx';

RouterContainer.set(Router.create({routes}));

Router.run(routes, function(Handler, state) {
  RouterActionCreators.changeRoute({state});
  React.render(<Handler />, document.getElementById('app'));
});
