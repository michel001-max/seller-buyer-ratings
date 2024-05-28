/**
 * Links the path `/notebook` to a route named `notebook`. Named like this, a
 * route with the same name needs to be created in the `routes` directory.
 */
export default function () {
  this.route('seller_dashboard', { path: '/seller_dashboard' });
  this.route('buyer_dashboard', { path: '/buyer_dashboard' });
  this.route('notebook', { path: '/notebook' });
  this.route('notebook_test_page', { path: '/notebook_test_page' });
  /*this.route('seller_topic', { path: '/seller' });*/
  this.route('create_seller_topic', { path: '/create_seller_topic' });
  this.route('seller_topic', { path: '/get_seller_topic' });
  this.route('submit_feedback', { path: '/submit_feedback' });
  this.route('single_seller_page', { path: '/single_seller_page' });
  
  this.route('create_deal', { path: '/create_deal' });
}
