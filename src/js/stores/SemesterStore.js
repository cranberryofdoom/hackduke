import Dispatcher from '../dispatchers/Dispatcher';
import Constants from '../constants/Constants';
import BaseStore from './BaseStore';
import assign from 'object-assign';
import find from 'mout/array/find';

let _semesters = [];
let _semester = {};

function parsePath(path) {
  let season;
  let year = path.substring(2, 6);
  if (path.indexOf('f') > -1) {
    season = 'Fall';
  } else if (path.indexOf('s') > -1) {
    season = 'Spring';
  }
  return {
    season: season,
    year: parseInt(year)
  }
}

const SemesterStore = assign({}, BaseStore, {
  getAll() {
    return {
      semesters: _semesters
    };
  },

  getSemester() {
    return {semester: _semester};
  },

  dispatcherIndex: Dispatcher.register(function(payload) {
    let action = payload.action;

    switch(action.type) {
      case Constants.ActionTypes.SEMESTERS_RECEIVED:
        _semesters = action.semesters.map(semester => {
          semester.year = semester.fields.Year;
          semester.season = semester.fields.Season;
          return semester;
        });
        _semester = find(_semesters, parsePath(action.route));
        SemesterStore.emitChange();
        break;
    }
  })
});

export default SemesterStore;
