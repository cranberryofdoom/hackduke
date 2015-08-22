import React, {PropTypes} from 'react';
import Router from 'react-router';
import Nav from './Nav.jsx';

const RouteHandler = Router.RouteHandler;

let App = React.createClass({

  contextTypes: {
    router: React.PropTypes.func
  },

  getDefaultProps() {
    return {
      tasks: []
    };
  },

  getHandlerKey: function () {
    // Trick used to re-mount when the route is changed: https://github.com/rackt/react-router/blob/master/docs/guides/overview.md#important-note-about-dynamic-segments
    let {router} = this.context;
    let key = JSON.stringify({
      path: router.getCurrentRoutes()[1].path,
      params: router.getCurrentParams()
    });
    return key;
  },

  render() {
    return (
      <div id="page">
        <Nav/>
        <div className="content">
          <RouteHandler key={this.getHandlerKey()}/>
        </div>
      </div>
    );
  }
});

export default App;
