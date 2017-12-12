// Auto-generated. Do not edit!

// (in-package seeker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class displacement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.displacementMessage = null;
    }
    else {
      if (initObj.hasOwnProperty('displacementMessage')) {
        this.displacementMessage = initObj.displacementMessage
      }
      else {
        this.displacementMessage = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type displacement
    // Serialize message field [displacementMessage]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.displacementMessage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type displacement
    let len;
    let data = new displacement(null);
    // Deserialize message field [displacementMessage]
    data.displacementMessage = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'seeker/displacement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32f65ba4fdf766c71719d0c45327361d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 displacementMessage
    #float64 x
    #float64 y
    #float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new displacement(null);
    if (msg.displacementMessage !== undefined) {
      resolved.displacementMessage = geometry_msgs.msg.Vector3.Resolve(msg.displacementMessage)
    }
    else {
      resolved.displacementMessage = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = displacement;
