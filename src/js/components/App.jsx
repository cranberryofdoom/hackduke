import React, {PropTypes} from 'react';
import Router from 'react-router';

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
    let { router } = this.context;
    let key = JSON.stringify({
      path: router.getCurrentRoutes()[1].path,
      params: router.getCurrentParams()
    });
    return key;
  },

  render() {
    return (
      <div>
        <h1>HIIIIIII</h1>
        <RouteHandler key={this.getHandlerKey()}/>
      </div>
    );
  }
});

export default App;
