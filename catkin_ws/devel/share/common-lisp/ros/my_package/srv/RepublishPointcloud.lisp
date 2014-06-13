; Auto-generated. Do not edit!


(cl:in-package my_package-srv)


;//! \htmlinclude RepublishPointcloud-request.msg.html

(cl:defclass <RepublishPointcloud-request> (roslisp-msg-protocol:ros-message)
  ((pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass RepublishPointcloud-request (<RepublishPointcloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RepublishPointcloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RepublishPointcloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<RepublishPointcloud-request> is deprecated: use my_package-srv:RepublishPointcloud-request instead.")))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <RepublishPointcloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:pointcloud-val is deprecated.  Use my_package-srv:pointcloud instead.")
  (pointcloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RepublishPointcloud-request>) ostream)
  "Serializes a message object of type '<RepublishPointcloud-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RepublishPointcloud-request>) istream)
  "Deserializes a message object of type '<RepublishPointcloud-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RepublishPointcloud-request>)))
  "Returns string type for a service object of type '<RepublishPointcloud-request>"
  "my_package/RepublishPointcloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RepublishPointcloud-request)))
  "Returns string type for a service object of type 'RepublishPointcloud-request"
  "my_package/RepublishPointcloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RepublishPointcloud-request>)))
  "Returns md5sum for a message object of type '<RepublishPointcloud-request>"
  "cc9df6275cdefe56b65ca013c5664db2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RepublishPointcloud-request)))
  "Returns md5sum for a message object of type 'RepublishPointcloud-request"
  "cc9df6275cdefe56b65ca013c5664db2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RepublishPointcloud-request>)))
  "Returns full string definition for message of type '<RepublishPointcloud-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RepublishPointcloud-request)))
  "Returns full string definition for message of type 'RepublishPointcloud-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RepublishPointcloud-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RepublishPointcloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RepublishPointcloud-request
    (cl:cons ':pointcloud (pointcloud msg))
))
;//! \htmlinclude RepublishPointcloud-response.msg.html

(cl:defclass <RepublishPointcloud-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass RepublishPointcloud-response (<RepublishPointcloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RepublishPointcloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RepublishPointcloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<RepublishPointcloud-response> is deprecated: use my_package-srv:RepublishPointcloud-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RepublishPointcloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:data-val is deprecated.  Use my_package-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RepublishPointcloud-response>) ostream)
  "Serializes a message object of type '<RepublishPointcloud-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RepublishPointcloud-response>) istream)
  "Deserializes a message object of type '<RepublishPointcloud-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RepublishPointcloud-response>)))
  "Returns string type for a service object of type '<RepublishPointcloud-response>"
  "my_package/RepublishPointcloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RepublishPointcloud-response)))
  "Returns string type for a service object of type 'RepublishPointcloud-response"
  "my_package/RepublishPointcloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RepublishPointcloud-response>)))
  "Returns md5sum for a message object of type '<RepublishPointcloud-response>"
  "cc9df6275cdefe56b65ca013c5664db2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RepublishPointcloud-response)))
  "Returns md5sum for a message object of type 'RepublishPointcloud-response"
  "cc9df6275cdefe56b65ca013c5664db2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RepublishPointcloud-response>)))
  "Returns full string definition for message of type '<RepublishPointcloud-response>"
  (cl:format cl:nil "string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RepublishPointcloud-response)))
  "Returns full string definition for message of type 'RepublishPointcloud-response"
  (cl:format cl:nil "string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RepublishPointcloud-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RepublishPointcloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RepublishPointcloud-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RepublishPointcloud)))
  'RepublishPointcloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RepublishPointcloud)))
  'RepublishPointcloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RepublishPointcloud)))
  "Returns string type for a service object of type '<RepublishPointcloud>"
  "my_package/RepublishPointcloud")