; Auto-generated. Do not edit!


(cl:in-package my_service-srv)


;//! \htmlinclude AddInts-request.msg.html

(cl:defclass <AddInts-request> (roslisp-msg-protocol:ros-message)
  ((matrix
    :reader matrix
    :initarg :matrix
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass AddInts-request (<AddInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<AddInts-request> is deprecated: use my_service-srv:AddInts-request instead.")))

(cl:ensure-generic-function 'matrix-val :lambda-list '(m))
(cl:defmethod matrix-val ((m <AddInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:matrix-val is deprecated.  Use my_service-srv:matrix instead.")
  (matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddInts-request>) ostream)
  "Serializes a message object of type '<AddInts-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddInts-request>) istream)
  "Deserializes a message object of type '<AddInts-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddInts-request>)))
  "Returns string type for a service object of type '<AddInts-request>"
  "my_service/AddIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInts-request)))
  "Returns string type for a service object of type 'AddInts-request"
  "my_service/AddIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddInts-request>)))
  "Returns md5sum for a message object of type '<AddInts-request>"
  "9564b56328397cc2f16bf495df3beab6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddInts-request)))
  "Returns md5sum for a message object of type 'AddInts-request"
  "9564b56328397cc2f16bf495df3beab6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddInts-request>)))
  "Returns full string definition for message of type '<AddInts-request>"
  (cl:format cl:nil "int64[] matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddInts-request)))
  "Returns full string definition for message of type 'AddInts-request"
  (cl:format cl:nil "int64[] matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddInts-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddInts-request
    (cl:cons ':matrix (matrix msg))
))
;//! \htmlinclude AddInts-response.msg.html

(cl:defclass <AddInts-response> (roslisp-msg-protocol:ros-message)
  ((determinant
    :reader determinant
    :initarg :determinant
    :type cl:integer
    :initform 0))
)

(cl:defclass AddInts-response (<AddInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<AddInts-response> is deprecated: use my_service-srv:AddInts-response instead.")))

(cl:ensure-generic-function 'determinant-val :lambda-list '(m))
(cl:defmethod determinant-val ((m <AddInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:determinant-val is deprecated.  Use my_service-srv:determinant instead.")
  (determinant m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddInts-response>) ostream)
  "Serializes a message object of type '<AddInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'determinant)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddInts-response>) istream)
  "Deserializes a message object of type '<AddInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'determinant) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddInts-response>)))
  "Returns string type for a service object of type '<AddInts-response>"
  "my_service/AddIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInts-response)))
  "Returns string type for a service object of type 'AddInts-response"
  "my_service/AddIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddInts-response>)))
  "Returns md5sum for a message object of type '<AddInts-response>"
  "9564b56328397cc2f16bf495df3beab6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddInts-response)))
  "Returns md5sum for a message object of type 'AddInts-response"
  "9564b56328397cc2f16bf495df3beab6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddInts-response>)))
  "Returns full string definition for message of type '<AddInts-response>"
  (cl:format cl:nil "int64 determinant~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddInts-response)))
  "Returns full string definition for message of type 'AddInts-response"
  (cl:format cl:nil "int64 determinant~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddInts-response
    (cl:cons ':determinant (determinant msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddInts)))
  'AddInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddInts)))
  'AddInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInts)))
  "Returns string type for a service object of type '<AddInts>"
  "my_service/AddInts")