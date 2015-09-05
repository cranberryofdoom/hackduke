import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';
import Airtable from '../services/Airtable';

export default {

  getAbouts(payload) {
    Dispatcher.handleViewAction({
      type: Constants.ActionTypes.ABOUTS_GET
    });
    Airtable.About.getAll();
  },
};
