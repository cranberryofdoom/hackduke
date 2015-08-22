import React from 'react';
import classNames from 'classnames';

let Dropdown = React.createClass({
  getInitialState() {
    return {
      open: false
    };
  },

  _toggle() {
    this.setState({
      open: !this.state.open
    });
  },

  render() {
    let dropdownMenuClasses = classNames(
      'dropdown-menu',
      {open: this.state.open}
    );

    return (
      <li className="dropdown">
        <a className="dropdown-toggle" data-toggle="dropdown" href="#" onClick={this._toggle}>{this.props.label} <span className="caret" /></a>
        <ul className={dropdownMenuClasses} role="menu">
          {this.props.children}
        </ul>
      </li>
    );
  }
});

export default Dropdown;
