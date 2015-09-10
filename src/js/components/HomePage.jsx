import React from 'react';
import Router from'react-router';
import AboutActionCreators from '../actions/AboutActionCreators';
import AboutStore from '../stores/AboutStore';
import BasicStoreMixin from '../mixins/BasicStoreMixin';
import classNames from 'classnames';
import FaqActionCreators from '../actions/FaqActionCreators';
import FaqStore from '../stores/FaqStore';
import Marked from 'marked';
let HomePage = React.createClass({

  mixins: [BasicStoreMixin(AboutStore, FaqStore)],

  contextTypes: {
    router: React.PropTypes.func
  },

  componentWillMount() {
    AboutActionCreators.getAbouts();
    FaqActionCreators.getFaqs();
  },

  getStateFromStore() {
    return {
      faqs: FaqStore.getAllBySemester(this.props.semester).faqs,
      abouts: AboutStore.getAllBySemester(this.props.semester).abouts
    }
  },

  render() {
    let mainSection = (
        <section className="main">
          <img className="badge" src="../svg/badge.svg" />
        </section>
    );

    let abouts = this.state.abouts.map((about, i) => {
      return (
        <div className="about" key={i}>
          <img src={about.imageUrl} />
          <div className="number">{i + 1}.</div>
          <div className="blurb">
            <h2>{about.header}</h2>
            <p>{about.subHeader}</p>
          </div>
        </div>
      )
    });



    let faqs = this.state.faqs.map((faq, i) => {
      let rawMarkup = Marked(faq.answer.toString(), {sanitize: true});
      return (
        <div className="faq-wrapper" key={i}>
          <div className="faq">
            <h3>{faq.question}</h3>
            <span dangerouslySetInnerHTML={{__html: rawMarkup}} />
          </div>
        </div>
      );
    });

    let aboutsSection = (
      <section className="abouts dark">
        <div className="panel">
          <h1>HackDuke Is About</h1>
          {abouts}
        </div>
      </section>
    );

    let faqsSection = (
      <section className="faqs">
        <div className="panel">
          <h1>FAQs</h1>
          <div className="faqs-wrapper">
            {faqs}
          </div>
        </div>
      </section>
    );

    return (
      <div className="home">
        {mainSection}
        {aboutsSection}
        {faqsSection}
      </div>
    );
  }
});

export default HomePage;
