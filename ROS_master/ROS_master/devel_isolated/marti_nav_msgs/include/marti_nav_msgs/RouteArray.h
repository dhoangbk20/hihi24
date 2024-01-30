// Generated by gencpp from file marti_nav_msgs/RouteArray.msg
// DO NOT EDIT!


#ifndef MARTI_NAV_MSGS_MESSAGE_ROUTEARRAY_H
#define MARTI_NAV_MSGS_MESSAGE_ROUTEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <marti_nav_msgs/Route.h>
#include <marti_common_msgs/KeyValue.h>

namespace marti_nav_msgs
{
template <class ContainerAllocator>
struct RouteArray_
{
  typedef RouteArray_<ContainerAllocator> Type;

  RouteArray_()
    : header()
    , routes()
    , properties()  {
    }
  RouteArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , routes(_alloc)
    , properties(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::marti_nav_msgs::Route_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::marti_nav_msgs::Route_<ContainerAllocator> >::other >  _routes_type;
  _routes_type routes;

   typedef std::vector< ::marti_common_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::marti_common_msgs::KeyValue_<ContainerAllocator> >::other >  _properties_type;
  _properties_type properties;





  typedef boost::shared_ptr< ::marti_nav_msgs::RouteArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::marti_nav_msgs::RouteArray_<ContainerAllocator> const> ConstPtr;

}; // struct RouteArray_

typedef ::marti_nav_msgs::RouteArray_<std::allocator<void> > RouteArray;

typedef boost::shared_ptr< ::marti_nav_msgs::RouteArray > RouteArrayPtr;
typedef boost::shared_ptr< ::marti_nav_msgs::RouteArray const> RouteArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::marti_nav_msgs::RouteArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::marti_nav_msgs::RouteArray_<ContainerAllocator1> & lhs, const ::marti_nav_msgs::RouteArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.routes == rhs.routes &&
    lhs.properties == rhs.properties;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::marti_nav_msgs::RouteArray_<ContainerAllocator1> & lhs, const ::marti_nav_msgs::RouteArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace marti_nav_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::marti_nav_msgs::RouteArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::marti_nav_msgs::RouteArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::marti_nav_msgs::RouteArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2f93d3e8f926d3456c8a282d8869e1f";
  }

  static const char* value(const ::marti_nav_msgs::RouteArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2f93d3e8f926d34ULL;
  static const uint64_t static_value2 = 0x56c8a282d8869e1fULL;
};

template<class ContainerAllocator>
struct DataType< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "marti_nav_msgs/RouteArray";
  }

  static const char* value(const ::marti_nav_msgs::RouteArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# list of muliple routes, for instance to support multi-lane roads\n"
"\n"
"std_msgs/Header                header\n"
"\n"
"marti_nav_msgs/Route[]         routes\n"
"\n"
"marti_common_msgs/KeyValue[]   properties # properties common to all routes\n"
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
"\n"
"================================================================================\n"
"MSG: marti_nav_msgs/Route\n"
"std_msgs/Header                header\n"
"RoutePoint[]                   route_points\n"
"marti_common_msgs/KeyValue[]   properties\n"
"\n"
"================================================================================\n"
"MSG: marti_nav_msgs/RoutePoint\n"
"geometry_msgs/Pose           pose\n"
"string                       id         # unique identifier for this point\n"
"marti_common_msgs/KeyValue[] properties\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: marti_common_msgs/KeyValue\n"
"# An arbitrary key-value pair\n"
"\n"
"string key\n"
"string value\n"
;
  }

  static const char* value(const ::marti_nav_msgs::RouteArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.routes);
      stream.next(m.properties);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RouteArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::marti_nav_msgs::RouteArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::marti_nav_msgs::RouteArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "routes[]" << std::endl;
    for (size_t i = 0; i < v.routes.size(); ++i)
    {
      s << indent << "  routes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::marti_nav_msgs::Route_<ContainerAllocator> >::stream(s, indent + "    ", v.routes[i]);
    }
    s << indent << "properties[]" << std::endl;
    for (size_t i = 0; i < v.properties.size(); ++i)
    {
      s << indent << "  properties[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::marti_common_msgs::KeyValue_<ContainerAllocator> >::stream(s, indent + "    ", v.properties[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARTI_NAV_MSGS_MESSAGE_ROUTEARRAY_H