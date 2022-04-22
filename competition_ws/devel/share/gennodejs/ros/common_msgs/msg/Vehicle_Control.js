// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Vehicle_Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.SteeringAngle = null;
      this.ThrottlePedal = null;
      this.Gear = null;
      this.BrakePedal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('SteeringAngle')) {
        this.SteeringAngle = initObj.SteeringAngle
      }
      else {
        this.SteeringAngle = 0.0;
      }
      if (initObj.hasOwnProperty('ThrottlePedal')) {
        this.ThrottlePedal = initObj.ThrottlePedal
      }
      else {
        this.ThrottlePedal = 0.0;
      }
      if (initObj.hasOwnProperty('Gear')) {
        this.Gear = initObj.Gear
      }
      else {
        this.Gear = 0;
      }
      if (initObj.hasOwnProperty('BrakePedal')) {
        this.BrakePedal = initObj.BrakePedal
      }
      else {
        this.BrakePedal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle_Control
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [SteeringAngle]
    bufferOffset = _serializer.float32(obj.SteeringAngle, buffer, bufferOffset);
    // Serialize message field [ThrottlePedal]
    bufferOffset = _serializer.float32(obj.ThrottlePedal, buffer, bufferOffset);
    // Serialize message field [Gear]
    bufferOffset = _serializer.uint32(obj.Gear, buffer, bufferOffset);
    // Serialize message field [BrakePedal]
    bufferOffset = _serializer.float32(obj.BrakePedal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle_Control
    let len;
    let data = new Vehicle_Control(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [SteeringAngle]
    data.SteeringAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ThrottlePedal]
    data.ThrottlePedal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gear]
    data.Gear = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [BrakePedal]
    data.BrakePedal = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Vehicle_Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5f180f742e223d0bc9f7c17b3e27310';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header  header
    float32 SteeringAngle                 #方向盘转角
    float32 ThrottlePedal                 #油门踏板开度
    uint32 Gear                           #请求档位
    float32 BrakePedal                    #制动踏板开度
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vehicle_Control(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.SteeringAngle !== undefined) {
      resolved.SteeringAngle = msg.SteeringAngle;
    }
    else {
      resolved.SteeringAngle = 0.0
    }

    if (msg.ThrottlePedal !== undefined) {
      resolved.ThrottlePedal = msg.ThrottlePedal;
    }
    else {
      resolved.ThrottlePedal = 0.0
    }

    if (msg.Gear !== undefined) {
      resolved.Gear = msg.Gear;
    }
    else {
      resolved.Gear = 0
    }

    if (msg.BrakePedal !== undefined) {
      resolved.BrakePedal = msg.BrakePedal;
    }
    else {
      resolved.BrakePedal = 0.0
    }

    return resolved;
    }
};

module.exports = Vehicle_Control;
