// Auto-generated. Do not edit!

// (in-package marti_dbw_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PrimaryControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.active = null;
      this.estop = null;
      this.steering_command = null;
      this.throttle_command = null;
      this.brake_command = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('estop')) {
        this.estop = initObj.estop
      }
      else {
        this.estop = false;
      }
      if (initObj.hasOwnProperty('steering_command')) {
        this.steering_command = initObj.steering_command
      }
      else {
        this.steering_command = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_command')) {
        this.throttle_command = initObj.throttle_command
      }
      else {
        this.throttle_command = 0.0;
      }
      if (initObj.hasOwnProperty('brake_command')) {
        this.brake_command = initObj.brake_command
      }
      else {
        this.brake_command = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrimaryControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [estop]
    bufferOffset = _serializer.bool(obj.estop, buffer, bufferOffset);
    // Serialize message field [steering_command]
    bufferOffset = _serializer.float32(obj.steering_command, buffer, bufferOffset);
    // Serialize message field [throttle_command]
    bufferOffset = _serializer.float32(obj.throttle_command, buffer, bufferOffset);
    // Serialize message field [brake_command]
    bufferOffset = _serializer.float32(obj.brake_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrimaryControl
    let len;
    let data = new PrimaryControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [estop]
    data.estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_command]
    data.steering_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_command]
    data.throttle_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_command]
    data.brake_command = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_dbw_msgs/PrimaryControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27c1b402f9d823bdca2b54b539b73c0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool active
    bool estop
    
    float32 steering_command
    # Steering command in range [0.0 to 1.0]
    
    float32 throttle_command
    # Throttle command in range [0.0 to 1.0]
    
    float32 brake_command
    # Brake command in range [0.0 to 1.0]
    
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
    const resolved = new PrimaryControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.estop !== undefined) {
      resolved.estop = msg.estop;
    }
    else {
      resolved.estop = false
    }

    if (msg.steering_command !== undefined) {
      resolved.steering_command = msg.steering_command;
    }
    else {
      resolved.steering_command = 0.0
    }

    if (msg.throttle_command !== undefined) {
      resolved.throttle_command = msg.throttle_command;
    }
    else {
      resolved.throttle_command = 0.0
    }

    if (msg.brake_command !== undefined) {
      resolved.brake_command = msg.brake_command;
    }
    else {
      resolved.brake_command = 0.0
    }

    return resolved;
    }
};

module.exports = PrimaryControl;
