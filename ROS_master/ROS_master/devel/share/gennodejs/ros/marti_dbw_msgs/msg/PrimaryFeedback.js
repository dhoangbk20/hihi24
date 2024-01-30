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

class PrimaryFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.present = null;
      this.robotic_mode = null;
      this.steering_command = null;
      this.steering_measure = null;
      this.throttle_command = null;
      this.throttle_measure = null;
      this.brake_command = null;
      this.brake_measure = null;
      this.estop_command = null;
      this.estop_measure = null;
      this.error_steering = null;
      this.error_throttle = null;
      this.error_brake = null;
      this.error_other = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('present')) {
        this.present = initObj.present
      }
      else {
        this.present = false;
      }
      if (initObj.hasOwnProperty('robotic_mode')) {
        this.robotic_mode = initObj.robotic_mode
      }
      else {
        this.robotic_mode = false;
      }
      if (initObj.hasOwnProperty('steering_command')) {
        this.steering_command = initObj.steering_command
      }
      else {
        this.steering_command = 0.0;
      }
      if (initObj.hasOwnProperty('steering_measure')) {
        this.steering_measure = initObj.steering_measure
      }
      else {
        this.steering_measure = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_command')) {
        this.throttle_command = initObj.throttle_command
      }
      else {
        this.throttle_command = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_measure')) {
        this.throttle_measure = initObj.throttle_measure
      }
      else {
        this.throttle_measure = 0.0;
      }
      if (initObj.hasOwnProperty('brake_command')) {
        this.brake_command = initObj.brake_command
      }
      else {
        this.brake_command = 0.0;
      }
      if (initObj.hasOwnProperty('brake_measure')) {
        this.brake_measure = initObj.brake_measure
      }
      else {
        this.brake_measure = 0.0;
      }
      if (initObj.hasOwnProperty('estop_command')) {
        this.estop_command = initObj.estop_command
      }
      else {
        this.estop_command = false;
      }
      if (initObj.hasOwnProperty('estop_measure')) {
        this.estop_measure = initObj.estop_measure
      }
      else {
        this.estop_measure = false;
      }
      if (initObj.hasOwnProperty('error_steering')) {
        this.error_steering = initObj.error_steering
      }
      else {
        this.error_steering = false;
      }
      if (initObj.hasOwnProperty('error_throttle')) {
        this.error_throttle = initObj.error_throttle
      }
      else {
        this.error_throttle = false;
      }
      if (initObj.hasOwnProperty('error_brake')) {
        this.error_brake = initObj.error_brake
      }
      else {
        this.error_brake = false;
      }
      if (initObj.hasOwnProperty('error_other')) {
        this.error_other = initObj.error_other
      }
      else {
        this.error_other = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrimaryFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [present]
    bufferOffset = _serializer.bool(obj.present, buffer, bufferOffset);
    // Serialize message field [robotic_mode]
    bufferOffset = _serializer.bool(obj.robotic_mode, buffer, bufferOffset);
    // Serialize message field [steering_command]
    bufferOffset = _serializer.float32(obj.steering_command, buffer, bufferOffset);
    // Serialize message field [steering_measure]
    bufferOffset = _serializer.float32(obj.steering_measure, buffer, bufferOffset);
    // Serialize message field [throttle_command]
    bufferOffset = _serializer.float32(obj.throttle_command, buffer, bufferOffset);
    // Serialize message field [throttle_measure]
    bufferOffset = _serializer.float32(obj.throttle_measure, buffer, bufferOffset);
    // Serialize message field [brake_command]
    bufferOffset = _serializer.float32(obj.brake_command, buffer, bufferOffset);
    // Serialize message field [brake_measure]
    bufferOffset = _serializer.float32(obj.brake_measure, buffer, bufferOffset);
    // Serialize message field [estop_command]
    bufferOffset = _serializer.bool(obj.estop_command, buffer, bufferOffset);
    // Serialize message field [estop_measure]
    bufferOffset = _serializer.bool(obj.estop_measure, buffer, bufferOffset);
    // Serialize message field [error_steering]
    bufferOffset = _serializer.bool(obj.error_steering, buffer, bufferOffset);
    // Serialize message field [error_throttle]
    bufferOffset = _serializer.bool(obj.error_throttle, buffer, bufferOffset);
    // Serialize message field [error_brake]
    bufferOffset = _serializer.bool(obj.error_brake, buffer, bufferOffset);
    // Serialize message field [error_other]
    bufferOffset = _serializer.bool(obj.error_other, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrimaryFeedback
    let len;
    let data = new PrimaryFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [present]
    data.present = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robotic_mode]
    data.robotic_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steering_command]
    data.steering_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_measure]
    data.steering_measure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_command]
    data.throttle_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_measure]
    data.throttle_measure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_command]
    data.brake_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_measure]
    data.brake_measure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [estop_command]
    data.estop_command = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [estop_measure]
    data.estop_measure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_steering]
    data.error_steering = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_throttle]
    data.error_throttle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_brake]
    data.error_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_other]
    data.error_other = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_dbw_msgs/PrimaryFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30a7ed1579a7c53a676c3444badef268';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool present
    # Boolean flag indicating that DBW system is present and communicating
    # properly.  If this is false, none of the remaining data in the
    # feedback can be considered valid.
    
    # Boolean flag indicating that DBW system is in robotic mode.
    bool robotic_mode
    
    float32 steering_command
    float32 steering_measure
    # The current steering command and measured value of the steering
    # axies in the range [0.0 to 1.0].  Typically 0.0 is full left and 1.0
    # is full right, but the steering calibration can handle either
    # direction.
    
    float32 throttle_command
    float32 throttle_measure
    # The current throttle command and measured value of the throttle
    # control in the range [0.0 to 1.0]
    
    float32 brake_command
    float32 brake_measure
    # The current throttle command and measured value of the throttle
    # control in the range [0.0 to 1.0]
    
    bool estop_command
    bool estop_measure
    
    bool error_steering
    bool error_throttle
    bool error_brake
    bool error_other
    
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
    const resolved = new PrimaryFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.present !== undefined) {
      resolved.present = msg.present;
    }
    else {
      resolved.present = false
    }

    if (msg.robotic_mode !== undefined) {
      resolved.robotic_mode = msg.robotic_mode;
    }
    else {
      resolved.robotic_mode = false
    }

    if (msg.steering_command !== undefined) {
      resolved.steering_command = msg.steering_command;
    }
    else {
      resolved.steering_command = 0.0
    }

    if (msg.steering_measure !== undefined) {
      resolved.steering_measure = msg.steering_measure;
    }
    else {
      resolved.steering_measure = 0.0
    }

    if (msg.throttle_command !== undefined) {
      resolved.throttle_command = msg.throttle_command;
    }
    else {
      resolved.throttle_command = 0.0
    }

    if (msg.throttle_measure !== undefined) {
      resolved.throttle_measure = msg.throttle_measure;
    }
    else {
      resolved.throttle_measure = 0.0
    }

    if (msg.brake_command !== undefined) {
      resolved.brake_command = msg.brake_command;
    }
    else {
      resolved.brake_command = 0.0
    }

    if (msg.brake_measure !== undefined) {
      resolved.brake_measure = msg.brake_measure;
    }
    else {
      resolved.brake_measure = 0.0
    }

    if (msg.estop_command !== undefined) {
      resolved.estop_command = msg.estop_command;
    }
    else {
      resolved.estop_command = false
    }

    if (msg.estop_measure !== undefined) {
      resolved.estop_measure = msg.estop_measure;
    }
    else {
      resolved.estop_measure = false
    }

    if (msg.error_steering !== undefined) {
      resolved.error_steering = msg.error_steering;
    }
    else {
      resolved.error_steering = false
    }

    if (msg.error_throttle !== undefined) {
      resolved.error_throttle = msg.error_throttle;
    }
    else {
      resolved.error_throttle = false
    }

    if (msg.error_brake !== undefined) {
      resolved.error_brake = msg.error_brake;
    }
    else {
      resolved.error_brake = false
    }

    if (msg.error_other !== undefined) {
      resolved.error_other = msg.error_other;
    }
    else {
      resolved.error_other = false
    }

    return resolved;
    }
};

module.exports = PrimaryFeedback;
