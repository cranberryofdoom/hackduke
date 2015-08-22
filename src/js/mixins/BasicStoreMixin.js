function BasicStoreMixin(...stores) {
  let StoreMixin = {
    getInitialState() {
      return this.getStateFromStore(this.props);
    },

    componentDidMount() {
      stores.forEach(store => {
        store.addChangeListener(this.handleStoresChanged);
      });
      this.setState(this.getStateFromStore());
    },

    componentWillUnmount() {
      stores.forEach(store => {
        store.removeChangeListener(this.handleStoresChanged);
      });
    },

    handleStoresChanged() {
      this.setState(this.getStateFromStore());
    }
  };

  return StoreMixin;
}

export default BasicStoreMixin;
