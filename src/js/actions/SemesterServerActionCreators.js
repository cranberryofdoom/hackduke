import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';

export default {
  receiveSemestersSuccess(payload, route) {
    Dispatcher.handleServerAction({
      type: Constants.ActionTypes.SEMESTERS_RECEIVED,
      semesters: payload,
      route: route
    });
  }
};
