/** hey me! don't forget to edit the header! */

/**
 * @author David Gossow - dgossow@willowgarage.com
 * @author Russell Toris - rctoris@wpi.edu
 */

/**
 * A Marker can convert a ROS marker message into a THREE object.
 *
 * @constructor
 * @param options - object with following keys:
 *   * path - the base path or URL for any mesh files that will be loaded for this marker
 *   * message - the marker message
 */
ROS3D.PointCloud = function(options) {
  options = options || {};
  var path = options.path || '/';
  var message = options.message;
  
// extract normal PointCloud2 and alternate data representation
  var pc2 = message.pointcloud;
  var data = message.data;
  message = pc2;
  eval('message.data = ' + data);
  
  // check for a trailing '/'
  if (path.substr(path.length - 1) !== '/') {
    path += '/';
  }

  THREE.Object3D.call(this);
  this.useQuaternion = true;

  var fields = {};
  var j;
  for (j = 0; j < message.fields.length; j++) {
    current = message.fields[j];
    fields[current.name] = {offset:current.offset, datatype:current.datatype, count:current.count};
  }

  var is_xyz = fields.x && fields.y && fields.z;
  var is_rgb = fields.rgb;

  // making some big assumptions: xyz/rgb stored as f32, little-endian. i can generalize later if need be.
  if (!is_xyz) {console.error('No xyz data')}

  // i don't know what an ordered dataset looks like, so for now assume height===1
  var k = 0;
  var j = message.data.length;
  var times = [];
  var geometry = new THREE.Geometry();
  var material = new THREE.ParticleBasicMaterial({
    size : .05
  });
  if (is_rgb) {material.vertexColors = true;}

  while (k < 5000) {
    var vertex = new THREE.Vector3();
    vertex.x = f32ToDecimal(message.data.slice(fields.x.offset, fields.x.offset + 4));
    vertex.y = f32ToDecimal(message.data.slice(fields.y.offset, fields.y.offset + 4));
    vertex.z = f32ToDecimal(message.data.slice(fields.z.offset, fields.z.offset + 4));
    geometry.vertices.push(vertex);

    if (is_rgb) {
      var color = new THREE.Color();
      var colors = f32ToRGB(message.data.slice(fields.rgb.offset, fields.rgb.offset + 4));
      color.setRGB(colors[0]/255,colors[1]/255,colors[2]/255);
      geometry.colors.push(color);
    }

    if (k % 10000 === 0) {
      if (k === 0) {
        times.push(new Date().getTime() / 1000);
      } else {
        times.push((new Date().getTime() / 1000) - times[(k - 10000) % 10000]);
      }
    }
    
    k += 1;
    console.log('normal operation abounds: ' + message.data.length);
    message.data = message.data.slice(message.point_step);
    j -= message.point_step;
  }

  console.log('time steps between groups of 10,000: ' + (times));
  this.add(new THREE.ParticleSystem(geometry,material));
}
ROS3D.PointCloud.prototype.__proto__ = THREE.Object3D.prototype;
