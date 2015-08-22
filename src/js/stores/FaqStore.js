import Dispatcher from '../dispatcher/Dispatcher';
import Constants from '../constants/Constants';
import BaseStore from './BaseStore';
import assign from 'object-assign';

let _faqs = [];

function addItem(faq) {
  _faqs.push(faq);
}

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
        _faqs = payload.action.faqs;
        FaqStore.emitChange();
        break;
    }
  })
});

export default FaqStore;
