import config from '../config/environment';
import DS from 'ember-data';

export default DS.RESTAdapter.extend({
  host: config.apiHost,
  namespace: 'api'
});
