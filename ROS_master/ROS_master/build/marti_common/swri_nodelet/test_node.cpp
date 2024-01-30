#include <boost/shared_ptr.hpp>
#include "ros/ros.h"
#include "nodelet/nodelet.h"

namespace swri_nodelet
{
  boost::shared_ptr<nodelet::Nodelet> createTestNodelet();
}  // namespace swri_nodelet

int main(int argc, char **argv)
{
  ros::init(argc, argv, "test_node");
  nodelet::M_string remap(ros::names::getRemappings());;
  nodelet::V_string my_argv;
  boost::shared_ptr<nodelet::Nodelet> n = swri_nodelet::createTestNodelet();
  n->init(ros::this_node::getName(), remap, my_argv);
  ros::spin();
  return 0;
}
