import React from 'react';
import Router from'react-router';
import AboutActionCreators from '../actions/AboutActionCreators';
import AboutStore from '../stores/AboutStore';
import BasicStoreMixin from '../mixins/BasicStoreMixin';
import classNames from 'classnames';


let HomePage = React.createClass({

  mixins: [BasicStoreMixin(AboutStore)],

  contextTypes: {
    router: React.PropTypes.func
  },

  componentWillMount() {
    AboutActionCreators.getAbouts();
  },

  getStateFromStore() {
    return {
      faqs: [],
      abouts: AboutStore.getAll().abouts
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
        <div className="mission-unit" key={i}>
          <img src={this.state.abouts[i].imageUrl} />
          <div className="number">{i + 1}.</div>
          <div className="blurb">
            <h2>{this.state.abouts[i].header}</h2>
            <p>{this.state.abouts[i].subHeader}</p>
          </div>
        </div>
      )
    });

    let aboutsSection = (
      <section className="about dark">
        <div className="panel">
          <h1>HackDuke Is About</h1>
          {abouts}
        </div>
      </section>
    );

    let questions = (
      <section className="faqs">
        <div className="panel">
          <h1>FAQs</h1>
        </div>
      </section>
    );

    return (
      <div className="home">
        {mainSection}
        {aboutsSection}
        {questions}
      </div>
    );
  }
});

export default HomePage;
