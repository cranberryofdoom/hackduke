import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';
import BaseStore from './BaseStore';
import assign from 'object-assign';

let _abouts = [{
  imageUrl: null,
  header: null,
  subHeader: null
}];

const AboutStore = assign({}, BaseStore, {
  getAll() {
    return {
      abouts: _abouts
    };
  },

  dispatcherIndex: Dispatcher.register(function(payload) {
    let action = payload.action;

    switch(action.type) {
      case Constants.ActionTypes.ABOUTS_RECEIVED:
        _abouts = action.abouts.map(about => {
          about.imageUrl = about.fields.Image[0].url;
          about.header = about.fields.Header;
          about.subHeader = about.fields.SubHeader;
          return about;
        });
        AboutStore.emitChange();
        break;
    }
  })
});

export default AboutStore;
