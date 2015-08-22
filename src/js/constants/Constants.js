import keyMirror from 'react/lib/keyMirror';

export default {
  // event name triggered from store, listened to by views
  CHANGE_EVENT: 'change',

  // Each time you add an action, add it here... They should be past-tense
  ActionTypes: keyMirror({
    TASK_ADDED: null,
    ROUTE_CHANGED: null,

    // Semester
    SEMESTERS_RECEIVED: null,
    SEMESTER_RECEIVED: null,

    // FAQs
    FAQS_GET: null,
    FAQS_RECEIVED: null,

    // Abouts
    ABOUTS_RECEIVED: null,
    ABOUTS_GET: null
  }),

  ActionSources: keyMirror({
    SERVER_ACTION: null,
    VIEW_ACTION: null
  })
};
