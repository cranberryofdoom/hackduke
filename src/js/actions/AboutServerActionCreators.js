import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';

export default {
  receiveAboutsSuccess(payload) {
    Dispatcher.handleServerAction({
      type: Constants.ActionTypes.ABOUTS_RECEIVED,
      abouts: payload
    });
  },
};
