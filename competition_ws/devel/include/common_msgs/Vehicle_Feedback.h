// Generated by gencpp from file common_msgs/Vehicle_Feedback.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_VEHICLE_FEEDBACK_H
#define COMMON_MSGS_MESSAGE_VEHICLE_FEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace common_msgs
{
template <class ContainerAllocator>
struct Vehicle_Feedback_
{
  typedef Vehicle_Feedback_<ContainerAllocator> Type;

  Vehicle_Feedback_()
    : header()
    , V_VehSpdX(0.0)
    , V_VehSpdY(0.0)
    , V_VehAccelX(0.0)
    , V_VehAccelY(0.0)
    , V_VehPosYaw(0.0)
    , V_VehPosX(0.0)
    , V_VehPosY(0.0)
    , V_VehPosRoll(0.0)
    , V_VehPosPitch(0.0)
    , GearLevPos(0)  {
    }
  Vehicle_Feedback_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , V_VehSpdX(0.0)
    , V_VehSpdY(0.0)
    , V_VehAccelX(0.0)
    , V_VehAccelY(0.0)
    , V_VehPosYaw(0.0)
    , V_VehPosX(0.0)
    , V_VehPosY(0.0)
    , V_VehPosRoll(0.0)
    , V_VehPosPitch(0.0)
    , GearLevPos(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _V_VehSpdX_type;
  _V_VehSpdX_type V_VehSpdX;

   typedef float _V_VehSpdY_type;
  _V_VehSpdY_type V_VehSpdY;

   typedef float _V_VehAccelX_type;
  _V_VehAccelX_type V_VehAccelX;

   typedef float _V_VehAccelY_type;
  _V_VehAccelY_type V_VehAccelY;

   typedef float _V_VehPosYaw_type;
  _V_VehPosYaw_type V_VehPosYaw;

   typedef float _V_VehPosX_type;
  _V_VehPosX_type V_VehPosX;

   typedef float _V_VehPosY_type;
  _V_VehPosY_type V_VehPosY;

   typedef float _V_VehPosRoll_type;
  _V_VehPosRoll_type V_VehPosRoll;

   typedef float _V_VehPosPitch_type;
  _V_VehPosPitch_type V_VehPosPitch;

   typedef uint32_t _GearLevPos_type;
  _GearLevPos_type GearLevPos;





  typedef boost::shared_ptr< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> const> ConstPtr;

}; // struct Vehicle_Feedback_

typedef ::common_msgs::Vehicle_Feedback_<std::allocator<void> > Vehicle_Feedback;

typedef boost::shared_ptr< ::common_msgs::Vehicle_Feedback > Vehicle_FeedbackPtr;
typedef boost::shared_ptr< ::common_msgs::Vehicle_Feedback const> Vehicle_FeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::Vehicle_Feedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::common_msgs::Vehicle_Feedback_<ContainerAllocator1> & lhs, const ::common_msgs::Vehicle_Feedback_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.V_VehSpdX == rhs.V_VehSpdX &&
    lhs.V_VehSpdY == rhs.V_VehSpdY &&
    lhs.V_VehAccelX == rhs.V_VehAccelX &&
    lhs.V_VehAccelY == rhs.V_VehAccelY &&
    lhs.V_VehPosYaw == rhs.V_VehPosYaw &&
    lhs.V_VehPosX == rhs.V_VehPosX &&
    lhs.V_VehPosY == rhs.V_VehPosY &&
    lhs.V_VehPosRoll == rhs.V_VehPosRoll &&
    lhs.V_VehPosPitch == rhs.V_VehPosPitch &&
    lhs.GearLevPos == rhs.GearLevPos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::common_msgs::Vehicle_Feedback_<ContainerAllocator1> & lhs, const ::common_msgs::Vehicle_Feedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace common_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9dae5a81ecfdc3c6e7aac43803325361";
  }

  static const char* value(const ::common_msgs::Vehicle_Feedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9dae5a81ecfdc3c6ULL;
  static const uint64_t static_value2 = 0xe7aac43803325361ULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/Vehicle_Feedback";
  }

  static const char* value(const ::common_msgs::Vehicle_Feedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header  header\n"
"float32 V_VehSpdX               #本车X向车速\n"
"float32 V_VehSpdY               #本车Y向车速\n"
"float32 V_VehAccelX             #本车纵向加速度\n"
"float32 V_VehAccelY             #本车横向加速度\n"
"float32 V_VehPosYaw             #本车航向角\n"
"float32 V_VehPosX               #本车X向坐标\n"
"float32 V_VehPosY               #本车Y向坐标\n"
"float32 V_VehPosRoll            #本车Roll\n"
"float32 V_VehPosPitch           #本车Pitch\n"
"uint32 GearLevPos               #底盘反馈当前档位\n"
"#float32 BrakePedal              #本车制动踏板开度\n"
"#float32 ThrottlePedal           #本车油门踏板开度\n"
"#float32 SteeringAngle           #本车方向盘转角\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::common_msgs::Vehicle_Feedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.V_VehSpdX);
      stream.next(m.V_VehSpdY);
      stream.next(m.V_VehAccelX);
      stream.next(m.V_VehAccelY);
      stream.next(m.V_VehPosYaw);
      stream.next(m.V_VehPosX);
      stream.next(m.V_VehPosY);
      stream.next(m.V_VehPosRoll);
      stream.next(m.V_VehPosPitch);
      stream.next(m.GearLevPos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vehicle_Feedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::Vehicle_Feedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::Vehicle_Feedback_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "V_VehSpdX: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehSpdX);
    s << indent << "V_VehSpdY: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehSpdY);
    s << indent << "V_VehAccelX: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehAccelX);
    s << indent << "V_VehAccelY: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehAccelY);
    s << indent << "V_VehPosYaw: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehPosYaw);
    s << indent << "V_VehPosX: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehPosX);
    s << indent << "V_VehPosY: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehPosY);
    s << indent << "V_VehPosRoll: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehPosRoll);
    s << indent << "V_VehPosPitch: ";
    Printer<float>::stream(s, indent + "  ", v.V_VehPosPitch);
    s << indent << "GearLevPos: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.GearLevPos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_VEHICLE_FEEDBACK_H