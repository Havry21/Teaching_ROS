// Auto-generated. Do not edit!

// (in-package my_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddIntsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('matrix')) {
        this.matrix = initObj.matrix
      }
      else {
        this.matrix = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddIntsRequest
    // Serialize message field [matrix]
    bufferOffset = _arraySerializer.int64(obj.matrix, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddIntsRequest
    let len;
    let data = new AddIntsRequest(null);
    // Deserialize message field [matrix]
    data.matrix = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.matrix.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_service/AddIntsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97a0476db3c371263201aae690d8d4a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] matrix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddIntsRequest(null);
    if (msg.matrix !== undefined) {
      resolved.matrix = msg.matrix;
    }
    else {
      resolved.matrix = []
    }

    return resolved;
    }
};

class AddIntsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.determinant = null;
    }
    else {
      if (initObj.hasOwnProperty('determinant')) {
        this.determinant = initObj.determinant
      }
      else {
        this.determinant = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddIntsResponse
    // Serialize message field [determinant]
    bufferOffset = _serializer.int64(obj.determinant, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddIntsResponse
    let len;
    let data = new AddIntsResponse(null);
    // Deserialize message field [determinant]
    data.determinant = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_service/AddIntsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32ab7b72f712f20196be2866cf140ce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 determinant
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddIntsResponse(null);
    if (msg.determinant !== undefined) {
      resolved.determinant = msg.determinant;
    }
    else {
      resolved.determinant = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: AddIntsRequest,
  Response: AddIntsResponse,
  md5sum() { return '9564b56328397cc2f16bf495df3beab6'; },
  datatype() { return 'my_service/AddInts'; }
};
