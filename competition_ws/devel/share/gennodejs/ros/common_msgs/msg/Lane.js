// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_idx = null;
      this.c_0 = null;
      this.c_1 = null;
      this.c_2 = null;
      this.c_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_idx')) {
        this.lane_idx = initObj.lane_idx
      }
      else {
        this.lane_idx = 0;
      }
      if (initObj.hasOwnProperty('c_0')) {
        this.c_0 = initObj.c_0
      }
      else {
        this.c_0 = 0.0;
      }
      if (initObj.hasOwnProperty('c_1')) {
        this.c_1 = initObj.c_1
      }
      else {
        this.c_1 = 0.0;
      }
      if (initObj.hasOwnProperty('c_2')) {
        this.c_2 = initObj.c_2
      }
      else {
        this.c_2 = 0.0;
      }
      if (initObj.hasOwnProperty('c_3')) {
        this.c_3 = initObj.c_3
      }
      else {
        this.c_3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [lane_idx]
    bufferOffset = _serializer.uint8(obj.lane_idx, buffer, bufferOffset);
    // Serialize message field [c_0]
    bufferOffset = _serializer.float32(obj.c_0, buffer, bufferOffset);
    // Serialize message field [c_1]
    bufferOffset = _serializer.float32(obj.c_1, buffer, bufferOffset);
    // Serialize message field [c_2]
    bufferOffset = _serializer.float32(obj.c_2, buffer, bufferOffset);
    // Serialize message field [c_3]
    bufferOffset = _serializer.float32(obj.c_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [lane_idx]
    data.lane_idx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [c_0]
    data.c_0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c_1]
    data.c_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c_2]
    data.c_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c_3]
    data.c_3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6ece6904fb62b4ebe5a720f5abf96c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 单条车道线描述
    uint8 lane_idx #车道线ID
    float32 c_0    #车道线参数C0
    float32 c_1    #车道线参数C1
    float32 c_2    #车道线参数C2
    float32 c_3    #车道线参数C3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lane(null);
    if (msg.lane_idx !== undefined) {
      resolved.lane_idx = msg.lane_idx;
    }
    else {
      resolved.lane_idx = 0
    }

    if (msg.c_0 !== undefined) {
      resolved.c_0 = msg.c_0;
    }
    else {
      resolved.c_0 = 0.0
    }

    if (msg.c_1 !== undefined) {
      resolved.c_1 = msg.c_1;
    }
    else {
      resolved.c_1 = 0.0
    }

    if (msg.c_2 !== undefined) {
      resolved.c_2 = msg.c_2;
    }
    else {
      resolved.c_2 = 0.0
    }

    if (msg.c_3 !== undefined) {
      resolved.c_3 = msg.c_3;
    }
    else {
      resolved.c_3 = 0.0
    }

    return resolved;
    }
};

module.exports = Lane;
