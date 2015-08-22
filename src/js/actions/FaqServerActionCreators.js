import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';

export default {
  receiveFaqsSuccess(payload) {
    Dispatcher.handleServerAction({
      type: Constants.ActionTypes.FAQS_RECEIVED,
      faqs: payload
    });
  },
};
