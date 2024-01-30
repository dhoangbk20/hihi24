# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from marti_sensor_msgs/WheelEncoder.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WheelEncoder(genpy.Message):
  _md5sum = "18725be6b3a6d8aef45fc5b0d63b9a58"
  _type = "marti_sensor_msgs/WheelEncoder"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Frequency from wheel encoder
#  If directional (below) is True, positive frequency means forward, and
#   negative frequency means backward.
#  If directional is False, frequency is non-negative and has no directional
#   information
float64 frequency

# True if frequency sign is significant; false else
bool directional

# ID of the wheel with which this data is associated
uint8 id"""
  __slots__ = ['frequency','directional','id']
  _slot_types = ['float64','bool','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frequency,directional,id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelEncoder, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.frequency is None:
        self.frequency = 0.
      if self.directional is None:
        self.directional = False
      if self.id is None:
        self.id = 0
    else:
      self.frequency = 0.
      self.directional = False
      self.id = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_d2B().pack(_x.frequency, _x.directional, _x.id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 10
      (_x.frequency, _x.directional, _x.id,) = _get_struct_d2B().unpack(str[start:end])
      self.directional = bool(self.directional)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_d2B().pack(_x.frequency, _x.directional, _x.id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 10
      (_x.frequency, _x.directional, _x.id,) = _get_struct_d2B().unpack(str[start:end])
      self.directional = bool(self.directional)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d2B = None
def _get_struct_d2B():
    global _struct_d2B
    if _struct_d2B is None:
        _struct_d2B = struct.Struct("<d2B")
    return _struct_d2B