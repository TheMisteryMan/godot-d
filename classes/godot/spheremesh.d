/**
Class representing a spherical $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spheremesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
import godot.mesh;
import godot.resource;
import godot.reference;
/**
Class representing a spherical $(D PrimitiveMesh).


*/
@GodotBaseClass struct SphereMesh
{
	enum string _GODOT_internal_name = "SphereMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_is_hemisphere") GodotMethod!(bool) getIsHemisphere;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("get_rings") GodotMethod!(long) getRings;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("set_is_hemisphere") GodotMethod!(void, bool) setIsHemisphere;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
	}
	bool opEquals(in SphereMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SphereMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SphereMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SphereMesh");
		if(constructor is null) return typeof(this).init;
		return cast(SphereMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	bool getIsHemisphere() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getIsHemisphere, _godot_object);
	}
	/**
	
	*/
	long getRadialSegments() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRadialSegments, _godot_object);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	long getRings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRings, _godot_object);
	}
	/**
	
	*/
	void setHeight(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setIsHemisphere(in bool is_hemisphere)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIsHemisphere, _godot_object, is_hemisphere);
	}
	/**
	
	*/
	void setRadialSegments(in long radial_segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialSegments, _godot_object, radial_segments);
	}
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadius, _godot_object, radius);
	}
	/**
	
	*/
	void setRings(in long rings)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRings, _godot_object, rings);
	}
	/**
	Full height of the sphere.
	*/
	@property double height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(double v)
	{
		setHeight(v);
	}
	/**
	If `true`, a hemisphere is created rather than a full sphere.
	$(B Note:) To get a regular hemisphere, the height and radius of the sphere must be equal.
	*/
	@property bool isHemisphere()
	{
		return getIsHemisphere();
	}
	/// ditto
	@property void isHemisphere(bool v)
	{
		setIsHemisphere(v);
	}
	/**
	Number of radial segments on the sphere.
	*/
	@property long radialSegments()
	{
		return getRadialSegments();
	}
	/// ditto
	@property void radialSegments(long v)
	{
		setRadialSegments(v);
	}
	/**
	Radius of sphere.
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
	/**
	Number of segments along the height of the sphere.
	*/
	@property long rings()
	{
		return getRings();
	}
	/// ditto
	@property void rings(long v)
	{
		setRings(v);
	}
}
