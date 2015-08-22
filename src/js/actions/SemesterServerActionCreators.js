import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';

export default {
  receiveSemestersSuccess(payload) {
    Dispatcher.handleServerAction({
      type: Constants.ActionTypes.SEMESTERS_RECIEVED,
      semesters: payload
    });
  },

  receiveSemesterSuccess() {
    Dispatcher.handleServerAction({
      type: Constants.ActionTypes.SEMESTER_RECIEVED,
      semester: payload
    });
  }
};
