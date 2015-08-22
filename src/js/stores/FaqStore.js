import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';
import BaseStore from './BaseStore';
import assign from 'object-assign';

let _faqs = [];

const FaqStore = assign({}, BaseStore, {
  getAll() {
    return {
      faqs: _faqs
    };
  },

  dispatcherIndex: Dispatcher.register(function(payload) {
    let action = payload.action;

    switch(action.type) {
      case Constants.ActionTypes.FAQS_RECEIVED:
        _faqs = action.faqs.map(faq => {
          faq.question = faq.fields.Question;
          faq.answer = faq.fields.Answer;
          return faq;
        });
        FaqStore.emitChange();
        break;
    }
  })
});

export default FaqStore;
