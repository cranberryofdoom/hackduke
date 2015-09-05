import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';
import Airtable from '../services/Airtable';

export default {

  getSemesters(payload) {
    Dispatcher.handleViewAction({
      type: Constants.ActionTypes.SEMESTERS_GET,
      route: payload.route
    });
    Airtable.Semester.getAll(payload);
  },
};
