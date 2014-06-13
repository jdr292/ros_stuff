/** hey me! don't forget to edit the header! */

/**
 * @author Russell Toris - rctoris@wpi.edu
 */

/**
 * A marker client that listens to a given marker topic.
 *
 * Emits the following events:
 *  * 'change' - there was an update or change in the marker
 *
 * @constructor
 * @param options - object with following keys:
 *   * ros - the ROSLIB.Ros connection handle
 *   * topic - the marker topic to listen to
 *   * tfClient - the TF client handle to use
 *   * rootObject (optional) - the root object to add this marker to
 */
ROS3D.PointCloudClient = function(options) {
  var that = this;
  options = options || {};
  var ros = options.ros;
  var topic = options.topic;
  this.tfClient = options.tfClient;
  this.rootObject = options.rootObject || new THREE.Object3D();

  // current marker that is displayed
  this.currentCloud = null; 

  // subscribe to the topic
  var rosTopic = new ROSLIB.Topic({
    ros : ros,
    name : topic,
    messageType : 'my_package/PCAndString',
    compression : 'png'
  });

rosTopic.subscribe(function(message) {
    var newCloud = new ROS3D.PointCloud({
      message : message
    });
    
    // check for an old marker
    if (that.currentCloud) {
      that.rootObject.remove(that.currentCloud);
    }

    that.currentCloud = new ROS3D.SceneNode({
      frameID : message.pointcloud.header.frame_id,
      tfClient : that.tfClient,
      object : newCloud
    });
    that.rootObject.add(that.currentCloud);
    
    that.emit('change');
  });
};
ROS3D.PointCloudClient.prototype.__proto__ = EventEmitter2.prototype;
