#include <boost/shared_ptr.hpp>
#include "ros/ros.h"
#include "nodelet/nodelet.h"

namespace swri_transform_util
{
  boost::shared_ptr<nodelet::Nodelet> createGpsTransformPublisher();
}  // namespace swri_transform_util

int main(int argc, char **argv)
{
  ros::init(argc, argv, "gps_transform_publisher");
  nodelet::M_string remap(ros::names::getRemappings());;
  nodelet::V_string my_argv;
  boost::shared_ptr<nodelet::Nodelet> n = swri_transform_util::createGpsTransformPublisher();
  n->init(ros::this_node::getName(), remap, my_argv);
  ros::spin();
  return 0;
}
