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

class Vehicle_Feedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.V_VehSpdX = null;
      this.V_VehSpdY = null;
      this.V_VehAccelX = null;
      this.V_VehAccelY = null;
      this.V_VehPosYaw = null;
      this.V_VehPosX = null;
      this.V_VehPosY = null;
      this.V_VehPosRoll = null;
      this.V_VehPosPitch = null;
      this.GearLevPos = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('V_VehSpdX')) {
        this.V_VehSpdX = initObj.V_VehSpdX
      }
      else {
        this.V_VehSpdX = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehSpdY')) {
        this.V_VehSpdY = initObj.V_VehSpdY
      }
      else {
        this.V_VehSpdY = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehAccelX')) {
        this.V_VehAccelX = initObj.V_VehAccelX
      }
      else {
        this.V_VehAccelX = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehAccelY')) {
        this.V_VehAccelY = initObj.V_VehAccelY
      }
      else {
        this.V_VehAccelY = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehPosYaw')) {
        this.V_VehPosYaw = initObj.V_VehPosYaw
      }
      else {
        this.V_VehPosYaw = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehPosX')) {
        this.V_VehPosX = initObj.V_VehPosX
      }
      else {
        this.V_VehPosX = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehPosY')) {
        this.V_VehPosY = initObj.V_VehPosY
      }
      else {
        this.V_VehPosY = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehPosRoll')) {
        this.V_VehPosRoll = initObj.V_VehPosRoll
      }
      else {
        this.V_VehPosRoll = 0.0;
      }
      if (initObj.hasOwnProperty('V_VehPosPitch')) {
        this.V_VehPosPitch = initObj.V_VehPosPitch
      }
      else {
        this.V_VehPosPitch = 0.0;
      }
      if (initObj.hasOwnProperty('GearLevPos')) {
        this.GearLevPos = initObj.GearLevPos
      }
      else {
        this.GearLevPos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle_Feedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [V_VehSpdX]
    bufferOffset = _serializer.float32(obj.V_VehSpdX, buffer, bufferOffset);
    // Serialize message field [V_VehSpdY]
    bufferOffset = _serializer.float32(obj.V_VehSpdY, buffer, bufferOffset);
    // Serialize message field [V_VehAccelX]
    bufferOffset = _serializer.float32(obj.V_VehAccelX, buffer, bufferOffset);
    // Serialize message field [V_VehAccelY]
    bufferOffset = _serializer.float32(obj.V_VehAccelY, buffer, bufferOffset);
    // Serialize message field [V_VehPosYaw]
    bufferOffset = _serializer.float32(obj.V_VehPosYaw, buffer, bufferOffset);
    // Serialize message field [V_VehPosX]
    bufferOffset = _serializer.float32(obj.V_VehPosX, buffer, bufferOffset);
    // Serialize message field [V_VehPosY]
    bufferOffset = _serializer.float32(obj.V_VehPosY, buffer, bufferOffset);
    // Serialize message field [V_VehPosRoll]
    bufferOffset = _serializer.float32(obj.V_VehPosRoll, buffer, bufferOffset);
    // Serialize message field [V_VehPosPitch]
    bufferOffset = _serializer.float32(obj.V_VehPosPitch, buffer, bufferOffset);
    // Serialize message field [GearLevPos]
    bufferOffset = _serializer.uint32(obj.GearLevPos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle_Feedback
    let len;
    let data = new Vehicle_Feedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [V_VehSpdX]
    data.V_VehSpdX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehSpdY]
    data.V_VehSpdY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehAccelX]
    data.V_VehAccelX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehAccelY]
    data.V_VehAccelY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehPosYaw]
    data.V_VehPosYaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehPosX]
    data.V_VehPosX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehPosY]
    data.V_VehPosY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehPosRoll]
    data.V_VehPosRoll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [V_VehPosPitch]
    data.V_VehPosPitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [GearLevPos]
    data.GearLevPos = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Vehicle_Feedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dae5a81ecfdc3c6e7aac43803325361';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header  header
    float32 V_VehSpdX               #本车X向车速
    float32 V_VehSpdY               #本车Y向车速
    float32 V_VehAccelX             #本车纵向加速度
    float32 V_VehAccelY             #本车横向加速度
    float32 V_VehPosYaw             #本车航向角
    float32 V_VehPosX               #本车X向坐标
    float32 V_VehPosY               #本车Y向坐标
    float32 V_VehPosRoll            #本车Roll
    float32 V_VehPosPitch           #本车Pitch
    uint32 GearLevPos               #底盘反馈当前档位
    #float32 BrakePedal              #本车制动踏板开度
    #float32 ThrottlePedal           #本车油门踏板开度
    #float32 SteeringAngle           #本车方向盘转角
    
    
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
    const resolved = new Vehicle_Feedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.V_VehSpdX !== undefined) {
      resolved.V_VehSpdX = msg.V_VehSpdX;
    }
    else {
      resolved.V_VehSpdX = 0.0
    }

    if (msg.V_VehSpdY !== undefined) {
      resolved.V_VehSpdY = msg.V_VehSpdY;
    }
    else {
      resolved.V_VehSpdY = 0.0
    }

    if (msg.V_VehAccelX !== undefined) {
      resolved.V_VehAccelX = msg.V_VehAccelX;
    }
    else {
      resolved.V_VehAccelX = 0.0
    }

    if (msg.V_VehAccelY !== undefined) {
      resolved.V_VehAccelY = msg.V_VehAccelY;
    }
    else {
      resolved.V_VehAccelY = 0.0
    }

    if (msg.V_VehPosYaw !== undefined) {
      resolved.V_VehPosYaw = msg.V_VehPosYaw;
    }
    else {
      resolved.V_VehPosYaw = 0.0
    }

    if (msg.V_VehPosX !== undefined) {
      resolved.V_VehPosX = msg.V_VehPosX;
    }
    else {
      resolved.V_VehPosX = 0.0
    }

    if (msg.V_VehPosY !== undefined) {
      resolved.V_VehPosY = msg.V_VehPosY;
    }
    else {
      resolved.V_VehPosY = 0.0
    }

    if (msg.V_VehPosRoll !== undefined) {
      resolved.V_VehPosRoll = msg.V_VehPosRoll;
    }
    else {
      resolved.V_VehPosRoll = 0.0
    }

    if (msg.V_VehPosPitch !== undefined) {
      resolved.V_VehPosPitch = msg.V_VehPosPitch;
    }
    else {
      resolved.V_VehPosPitch = 0.0
    }

    if (msg.GearLevPos !== undefined) {
      resolved.GearLevPos = msg.GearLevPos;
    }
    else {
      resolved.GearLevPos = 0
    }

    return resolved;
    }
};

module.exports = Vehicle_Feedback;
