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

class object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Object_ID = null;
      this.Object_DistLong = null;
      this.Object_DistLat = null;
      this.Object_VrelLong = null;
      this.Object_VrelLat = null;
      this.Object_DynProp = null;
      this.Object_ArelLong = null;
      this.Object_ArelLat = null;
      this.Object_Class = null;
      this.Object_Length = null;
      this.Object_Width = null;
      this.Object_ProbOfExist = null;
    }
    else {
      if (initObj.hasOwnProperty('Object_ID')) {
        this.Object_ID = initObj.Object_ID
      }
      else {
        this.Object_ID = 0;
      }
      if (initObj.hasOwnProperty('Object_DistLong')) {
        this.Object_DistLong = initObj.Object_DistLong
      }
      else {
        this.Object_DistLong = 0.0;
      }
      if (initObj.hasOwnProperty('Object_DistLat')) {
        this.Object_DistLat = initObj.Object_DistLat
      }
      else {
        this.Object_DistLat = 0.0;
      }
      if (initObj.hasOwnProperty('Object_VrelLong')) {
        this.Object_VrelLong = initObj.Object_VrelLong
      }
      else {
        this.Object_VrelLong = 0.0;
      }
      if (initObj.hasOwnProperty('Object_VrelLat')) {
        this.Object_VrelLat = initObj.Object_VrelLat
      }
      else {
        this.Object_VrelLat = 0.0;
      }
      if (initObj.hasOwnProperty('Object_DynProp')) {
        this.Object_DynProp = initObj.Object_DynProp
      }
      else {
        this.Object_DynProp = 0;
      }
      if (initObj.hasOwnProperty('Object_ArelLong')) {
        this.Object_ArelLong = initObj.Object_ArelLong
      }
      else {
        this.Object_ArelLong = 0.0;
      }
      if (initObj.hasOwnProperty('Object_ArelLat')) {
        this.Object_ArelLat = initObj.Object_ArelLat
      }
      else {
        this.Object_ArelLat = 0.0;
      }
      if (initObj.hasOwnProperty('Object_Class')) {
        this.Object_Class = initObj.Object_Class
      }
      else {
        this.Object_Class = 0;
      }
      if (initObj.hasOwnProperty('Object_Length')) {
        this.Object_Length = initObj.Object_Length
      }
      else {
        this.Object_Length = 0.0;
      }
      if (initObj.hasOwnProperty('Object_Width')) {
        this.Object_Width = initObj.Object_Width
      }
      else {
        this.Object_Width = 0.0;
      }
      if (initObj.hasOwnProperty('Object_ProbOfExist')) {
        this.Object_ProbOfExist = initObj.Object_ProbOfExist
      }
      else {
        this.Object_ProbOfExist = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type object
    // Serialize message field [Object_ID]
    bufferOffset = _serializer.uint32(obj.Object_ID, buffer, bufferOffset);
    // Serialize message field [Object_DistLong]
    bufferOffset = _serializer.float32(obj.Object_DistLong, buffer, bufferOffset);
    // Serialize message field [Object_DistLat]
    bufferOffset = _serializer.float32(obj.Object_DistLat, buffer, bufferOffset);
    // Serialize message field [Object_VrelLong]
    bufferOffset = _serializer.float32(obj.Object_VrelLong, buffer, bufferOffset);
    // Serialize message field [Object_VrelLat]
    bufferOffset = _serializer.float32(obj.Object_VrelLat, buffer, bufferOffset);
    // Serialize message field [Object_DynProp]
    bufferOffset = _serializer.uint32(obj.Object_DynProp, buffer, bufferOffset);
    // Serialize message field [Object_ArelLong]
    bufferOffset = _serializer.float32(obj.Object_ArelLong, buffer, bufferOffset);
    // Serialize message field [Object_ArelLat]
    bufferOffset = _serializer.float32(obj.Object_ArelLat, buffer, bufferOffset);
    // Serialize message field [Object_Class]
    bufferOffset = _serializer.uint32(obj.Object_Class, buffer, bufferOffset);
    // Serialize message field [Object_Length]
    bufferOffset = _serializer.float32(obj.Object_Length, buffer, bufferOffset);
    // Serialize message field [Object_Width]
    bufferOffset = _serializer.float32(obj.Object_Width, buffer, bufferOffset);
    // Serialize message field [Object_ProbOfExist]
    bufferOffset = _serializer.uint32(obj.Object_ProbOfExist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type object
    let len;
    let data = new object(null);
    // Deserialize message field [Object_ID]
    data.Object_ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Object_DistLong]
    data.Object_DistLong = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_DistLat]
    data.Object_DistLat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_VrelLong]
    data.Object_VrelLong = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_VrelLat]
    data.Object_VrelLat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_DynProp]
    data.Object_DynProp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Object_ArelLong]
    data.Object_ArelLong = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_ArelLat]
    data.Object_ArelLat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_Class]
    data.Object_Class = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Object_Length]
    data.Object_Length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_Width]
    data.Object_Width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Object_ProbOfExist]
    data.Object_ProbOfExist = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c59d4e1031406f14a432b85c2df4e43d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 Object_ID                        #目标的ID编号
    float32 Object_DistLong                 #目标的纵向距离
    float32 Object_DistLat                  #目标的横向距离
    float32 Object_VrelLong                 #目标的纵向相对速度
    float32 Object_VrelLat                  #目标的横向相对速度
    uint32 Object_DynProp                   #目标的运动状态
    float32 Object_ArelLong                 #目标的纵向加速度
    float32 Object_ArelLat                  #目标的横向加速度
    uint32 Object_Class                     #目标的分类
    float32 Object_Length                   #目标的长度
    float32 Object_Width                    #目标的宽度
    uint32 Object_ProbOfExist               #目标置信度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new object(null);
    if (msg.Object_ID !== undefined) {
      resolved.Object_ID = msg.Object_ID;
    }
    else {
      resolved.Object_ID = 0
    }

    if (msg.Object_DistLong !== undefined) {
      resolved.Object_DistLong = msg.Object_DistLong;
    }
    else {
      resolved.Object_DistLong = 0.0
    }

    if (msg.Object_DistLat !== undefined) {
      resolved.Object_DistLat = msg.Object_DistLat;
    }
    else {
      resolved.Object_DistLat = 0.0
    }

    if (msg.Object_VrelLong !== undefined) {
      resolved.Object_VrelLong = msg.Object_VrelLong;
    }
    else {
      resolved.Object_VrelLong = 0.0
    }

    if (msg.Object_VrelLat !== undefined) {
      resolved.Object_VrelLat = msg.Object_VrelLat;
    }
    else {
      resolved.Object_VrelLat = 0.0
    }

    if (msg.Object_DynProp !== undefined) {
      resolved.Object_DynProp = msg.Object_DynProp;
    }
    else {
      resolved.Object_DynProp = 0
    }

    if (msg.Object_ArelLong !== undefined) {
      resolved.Object_ArelLong = msg.Object_ArelLong;
    }
    else {
      resolved.Object_ArelLong = 0.0
    }

    if (msg.Object_ArelLat !== undefined) {
      resolved.Object_ArelLat = msg.Object_ArelLat;
    }
    else {
      resolved.Object_ArelLat = 0.0
    }

    if (msg.Object_Class !== undefined) {
      resolved.Object_Class = msg.Object_Class;
    }
    else {
      resolved.Object_Class = 0
    }

    if (msg.Object_Length !== undefined) {
      resolved.Object_Length = msg.Object_Length;
    }
    else {
      resolved.Object_Length = 0.0
    }

    if (msg.Object_Width !== undefined) {
      resolved.Object_Width = msg.Object_Width;
    }
    else {
      resolved.Object_Width = 0.0
    }

    if (msg.Object_ProbOfExist !== undefined) {
      resolved.Object_ProbOfExist = msg.Object_ProbOfExist;
    }
    else {
      resolved.Object_ProbOfExist = 0
    }

    return resolved;
    }
};

module.exports = object;
