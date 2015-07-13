import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';

module.exports = {

  changeRoute: function(payload) {
    Dispatcher.handleViewAction({
      type: Constants.ActionTypes.ROUTE_CHANGED,
      payload: payload
    });
  }
};
