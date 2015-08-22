import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';
import Airtable from '../services/Airtable';

export default {

  getFaqs(payload) {
    Dispatcher.handleViewAction({
      type: Constants.ActionTypes.FAQS_GET
    });
    Airtable.Faq.getAll();
  },
};
