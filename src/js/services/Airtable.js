import Request from 'superagent';
import SemesterServerActionCreators from '../actions/SemesterServerActionCreators';
import FaqServerActionCreators from '../actions/FaqServerActionCreators';
import AboutServerActionCreators from '../actions/AboutServerActionCreators';

/**
 * Constants
 */
const AirtableRoot = 'https://api.airtable.com/v0';
const AppID = 'appfITE0VFoQwq07A';
const APIKey = 'api_key=keyOOF7DJXwpuLvAl';
const CORSToken = 'forceInsecureCrossDomain=ALLOW_ANY_DOMAIN';


let Api = {};

Api.Semester = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Semesters/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        SemesterServerActionCreators.recieveError(err);
      } else {
        SemesterServerActionCreators.receiveSemestersSuccess(res.body.records);
      }
    });
  },
};

Api.Faq = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/FAQs/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Organizer = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Organizers/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Partner = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Partners/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Sponsor = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Sponsors/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Mentor = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Mentors/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Course = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Courses/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Admin = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Admins/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.Instructor = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Instructors/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        FaqServerActionCreators.recieveError(err);
      } else {
        FaqServerActionCreators.receiveFaqsSuccess(res.body.records);
      }
    });
  },
};

Api.About = {
  getAll(){
    Request.get(AirtableRoot + '/' + AppID + '/Abouts/?' + CORSToken + '&' + APIKey)
    .end(function(err, res) {
      err = err || (res && res.error);
      if (err) {
        AboutServerActionCreators.recieveError(err);
      } else {
        AboutServerActionCreators.receiveAboutsSuccess(res.body.records);
      }
    });
  },
};

export default Api;
