import BasicStoreMixin from '../mixins/BasicStoreMixin';
import Nav from './Nav.jsx';
import React, {PropTypes} from 'react';
import Router from 'react-router';
import SemesterActionCreators from '../actions/SemesterActionCreators';
import SemesterStore from '../stores/SemesterStore';

const RouteHandler = Router.RouteHandler;

let App = React.createClass({

  contextTypes: {
    router: React.PropTypes.func
  },

  mixins: [BasicStoreMixin(SemesterStore)],

  getStateFromStore() {
    return {
      semester: SemesterStore.getSemester().semester
    };
  },

  componentWillMount() {
    SemesterActionCreators.getSemesters({
      route: this.context.router.getCurrentRoutes()[1].path
    });
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
          <RouteHandler key={this.getHandlerKey()} semester={this.state.semester.id}/>
        </div>
      </div>
    );
  }
});

export default App;
