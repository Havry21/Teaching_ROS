;; Auto-generated. Do not edit!


(when (boundp 'my_service::AddInts)
  (if (not (find-package "MY_SERVICE"))
    (make-package "MY_SERVICE"))
  (shadow 'AddInts (find-package "MY_SERVICE")))
(unless (find-package "MY_SERVICE::ADDINTS")
  (make-package "MY_SERVICE::ADDINTS"))
(unless (find-package "MY_SERVICE::ADDINTSREQUEST")
  (make-package "MY_SERVICE::ADDINTSREQUEST"))
(unless (find-package "MY_SERVICE::ADDINTSRESPONSE")
  (make-package "MY_SERVICE::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass my_service::AddIntsRequest
  :super ros::object
  :slots (_matrix ))

(defmethod my_service::AddIntsRequest
  (:init
   (&key
    ((:matrix __matrix) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _matrix __matrix)
   self)
  (:matrix
   (&optional __matrix)
   (if __matrix (setq _matrix __matrix)) _matrix)
  (:serialization-length
   ()
   (+
    ;; int64[] _matrix
    (* 8    (length _matrix)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _matrix
     (write-long (length _matrix) s)
     (dotimes (i (length _matrix))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _matrix i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _matrix i)) (= (length ((elt _matrix i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _matrix i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _matrix i) . bv) 1) -1) s))
             ((and (class (elt _matrix i)) (= (length ((elt _matrix i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _matrix i) . bv) 0) s)
              (write-long (if (>= (elt _matrix i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _matrix i) s)(write-long (if (>= (elt _matrix i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _matrix (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _matrix i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _matrix i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass my_service::AddIntsResponse
  :super ros::object
  :slots (_determinant ))

(defmethod my_service::AddIntsResponse
  (:init
   (&key
    ((:determinant __determinant) 0)
    )
   (send-super :init)
   (setq _determinant (round __determinant))
   self)
  (:determinant
   (&optional __determinant)
   (if __determinant (setq _determinant __determinant)) _determinant)
  (:serialization-length
   ()
   (+
    ;; int64 _determinant
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _determinant
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _determinant (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _determinant) (= (length (_determinant . bv)) 2)) ;; bignum
              (write-long (ash (elt (_determinant . bv) 0) 0) s)
              (write-long (ash (elt (_determinant . bv) 1) -1) s))
             ((and (class _determinant) (= (length (_determinant . bv)) 1)) ;; big1
              (write-long (elt (_determinant . bv) 0) s)
              (write-long (if (>= _determinant 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _determinant s)(write-long (if (>= _determinant 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _determinant
#+(or :alpha :irix6 :x86_64)
      (setf _determinant (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _determinant (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass my_service::AddInts
  :super ros::object
  :slots ())

(setf (get my_service::AddInts :md5sum-) "9564b56328397cc2f16bf495df3beab6")
(setf (get my_service::AddInts :datatype-) "my_service/AddInts")
(setf (get my_service::AddInts :request) my_service::AddIntsRequest)
(setf (get my_service::AddInts :response) my_service::AddIntsResponse)

(defmethod my_service::AddIntsRequest
  (:response () (instance my_service::AddIntsResponse :init)))

(setf (get my_service::AddIntsRequest :md5sum-) "9564b56328397cc2f16bf495df3beab6")
(setf (get my_service::AddIntsRequest :datatype-) "my_service/AddIntsRequest")
(setf (get my_service::AddIntsRequest :definition-)
      "int64[] matrix
---
int64 determinant
")

(setf (get my_service::AddIntsResponse :md5sum-) "9564b56328397cc2f16bf495df3beab6")
(setf (get my_service::AddIntsResponse :datatype-) "my_service/AddIntsResponse")
(setf (get my_service::AddIntsResponse :definition-)
      "int64[] matrix
---
int64 determinant
")



(provide :my_service/AddInts "9564b56328397cc2f16bf495df3beab6")


