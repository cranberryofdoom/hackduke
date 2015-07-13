/**
 * Used to get access to the router within the actions/etc...
 */
var _router = null;
export default {
  set: (router) => _router = router,
  get: () => _router
};
