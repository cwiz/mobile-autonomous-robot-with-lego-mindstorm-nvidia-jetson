;; Auto-generated. Do not edit!


(when (boundp 'h4r_ev3_msgs::Seek)
  (if (not (find-package "H4R_EV3_MSGS"))
    (make-package "H4R_EV3_MSGS"))
  (shadow 'Seek (find-package "H4R_EV3_MSGS")))
(unless (find-package "H4R_EV3_MSGS::SEEK")
  (make-package "H4R_EV3_MSGS::SEEK"))

(in-package "ROS")
;;//! \htmlinclude Seek.msg.html


(defclass h4r_ev3_msgs::Seek
  :super ros::object
  :slots (_heading _distance ))

(defmethod h4r_ev3_msgs::Seek
  (:init
   (&key
    ((:heading __heading) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _heading (float __heading))
   (setq _distance (float __distance))
   self)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _heading
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get h4r_ev3_msgs::Seek :md5sum-) "3897b918b84041e153db3b3eea1a1e19")
(setf (get h4r_ev3_msgs::Seek :datatype-) "h4r_ev3_msgs/Seek")
(setf (get h4r_ev3_msgs::Seek :definition-)
      "float64 heading
float64 distance
")



(provide :h4r_ev3_msgs/Seek "3897b918b84041e153db3b3eea1a1e19")


