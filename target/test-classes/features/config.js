/*function fn(){
var config = {

  baseUrl: 'https://www.napaonline.com/'
}
return config
}*/

/*
function() {
  var config = {
    baseUrl: 'https://www.napaonline.com/',
    waitForElementVisible: function(selector, timeout) {
      var start = Date.now();
      var end = start + timeout * 10 ;
      var element = null;
      while (Date.now() < end) {
        element = karate.get(selector);
        if (element && element.style.display !== 'none' && element.style.visibility !== 'hidden') {
          return element;
        }
        sleep(10000);
      }

      // Add the setTimeout code here
      setTimeout(() => {
        waitForElementVisible(selector, timeout);
      }, 4000);

      throw 'Timeout waiting for element ' + selector;
    }
  };

  function sleep(ms) {
    java.lang.Thread.sleep(ms);
  }

  return config;
}
*/
