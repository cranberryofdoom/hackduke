/**
 * Dependencies.
 */
const AppDispatcher = require('../dispatchers/Dispatcher');
const Constants = require('../constants/Constants');
const BaseStore = require('./BaseStore');
const assign = require('object-assign');

/**
 * Variables.
 */
let _state;

/**
 * Store.
 */
let RouterStore = assign({}, BaseStore, {

  getState() {
    return _state;
  },

  getStateName() {
    return _state && _state.routes.slice(-1).pop().name;
  },

  dispatcherIndex: AppDispatcher.register((payload) => {
    let action = payload.action;

    switch(action.type) {
      case Constants.ActionTypes.CHANGE_ROUTE:
        _state = action.payload.state;
        RouterStore.emitChange();
        break;
    }
  })

});

export default RouterStore;
