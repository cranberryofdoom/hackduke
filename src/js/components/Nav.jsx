import React from 'react';
import Dropdown from './common/Dropdown.jsx';

let Nav = React.createClass({

  render() {
    return (
      <nav>
        <ul>
          <div className="logo"></div>
          <Dropdown
            label="More Info">
            <li><a href="/organizers">Our Team</a></li>
            <li><a href="/schedule">Schedule</a></li>
            <li><a href="/speakers">Speakers</a></li>
            <li><a href="/prizes">Prizes</a></li>
            <li><a href="/travel">Travel</a></li>
            <li><a href="/courses">Crash Courses</a></li>
            <li><a href="/tech-talks">Tech Talks</a></li>
          </Dropdown>
          <Dropdown
            label="Tracks">
            <li><a href="http://hackduke.tumblr.com/inequality">Inequality</a></li>
            <li><a href="http://hackduke.tumblr.com/energy-environment">Energy &amp; The Environment</a></li>
            <li><a href="http://hackduke.tumblr.com/education">Education</a></li>
            <li><a href="http://hackduke.tumblr.com/health-wellness">Health &amp; Wellness</a></li>
          </Dropdown>
          <Dropdown
            label="Fun">
            <li><a href="/fun#data">Datasets</a></li>
            <li><a href="/fun#api-credits">APIs &amp; Credits</a></li>
            <li><a href="/fun#eco">Eco-Friendliness</a></li>
            <li><a href="/fun#massages">Massages</a></li>
            <li><a href="/fun#ladies">Ladies Night</a></li>
            <li><a href="/fun#nerf">Nerf Gun Wars</a></li>
          </Dropdown>
          <Dropdown
            label="Mentors">
            <li><a href="/mentor-guidelines">Learn about mentorship</a></li>
            <li><a href="/mentor-info">Become a mentor</a></li>
          </Dropdown>
          <Dropdown
            label="Sponsors">
            <li><a href>Learn about sponsorship</a></li>
            <li><a href="mailto:sponsorship@hackduke.org">Become a sponsor</a></li>
          </Dropdown>
          <Dropdown
            label="Past">
            <li><a href="http://spring2014.hackduke.org">HackDuke Spring 2014</a></li>
            <li><a href="http://fall2013.hackduke.org">HackDuke Fall 2013</a></li>
          </Dropdown>
          <li><a href="http://hackduke.tumblr.com/">Blog</a></li>
        </ul>
      </nav>
    );
  }
});

export default Nav;
