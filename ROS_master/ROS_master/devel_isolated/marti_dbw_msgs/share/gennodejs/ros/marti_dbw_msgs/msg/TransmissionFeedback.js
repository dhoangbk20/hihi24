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

class TransmissionFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_range = null;
      this.stable = null;
      this.reverse = null;
      this.forward = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_range')) {
        this.current_range = initObj.current_range
      }
      else {
        this.current_range = '';
      }
      if (initObj.hasOwnProperty('stable')) {
        this.stable = initObj.stable
      }
      else {
        this.stable = false;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = false;
      }
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransmissionFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_range]
    bufferOffset = _serializer.string(obj.current_range, buffer, bufferOffset);
    // Serialize message field [stable]
    bufferOffset = _serializer.bool(obj.stable, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.bool(obj.reverse, buffer, bufferOffset);
    // Serialize message field [forward]
    bufferOffset = _serializer.bool(obj.forward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransmissionFeedback
    let len;
    let data = new TransmissionFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_range]
    data.current_range = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stable]
    data.stable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward]
    data.forward = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.current_range.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_dbw_msgs/TransmissionFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20d42db6f4086e2557c494444b704d8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    string current_range
    
    # This is false during shifting when the actuator is moving or
    # settling into the final position.
    bool stable
    
    # This is true when the vehicle is in a reversing gear.
    bool reverse
    
    # This is true when the vehicle is in a forward gear.
    bool forward
    
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
    const resolved = new TransmissionFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_range !== undefined) {
      resolved.current_range = msg.current_range;
    }
    else {
      resolved.current_range = ''
    }

    if (msg.stable !== undefined) {
      resolved.stable = msg.stable;
    }
    else {
      resolved.stable = false
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = false
    }

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = false
    }

    return resolved;
    }
};

module.exports = TransmissionFeedback;
