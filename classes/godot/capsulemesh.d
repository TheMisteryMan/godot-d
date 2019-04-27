/**
Class representing a capsule-shaped $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.capsulemesh;
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
Class representing a capsule-shaped $(D PrimitiveMesh).


*/
@GodotBaseClass struct CapsuleMesh
{
	enum string _GODOT_internal_name = "CapsuleMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("set_mid_height") GodotMethod!(void, double) setMidHeight;
		@GodotName("get_mid_height") GodotMethod!(double) getMidHeight;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
		@GodotName("get_rings") GodotMethod!(long) getRings;
	}
	bool opEquals(in CapsuleMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CapsuleMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CapsuleMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CapsuleMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CapsuleMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadius, _godot_object, radius);
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
	void setMidHeight(in double mid_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMidHeight, _godot_object, mid_height);
	}
	/**
	
	*/
	double getMidHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMidHeight, _godot_object);
	}
	/**
	
	*/
	void setRadialSegments(in long segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialSegments, _godot_object, segments);
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
	void setRings(in long rings)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRings, _godot_object, rings);
	}
	/**
	
	*/
	long getRings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRings, _godot_object);
	}
	/**
	Radius of the capsule mesh. Defaults to 1.0.
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
	Height of the capsule mesh from the center point. Defaults to 1.0.
	*/
	@property double midHeight()
	{
		return getMidHeight();
	}
	/// ditto
	@property void midHeight(double v)
	{
		setMidHeight(v);
	}
	/**
	Number of radial segments on the capsule mesh. Defaults to 64.
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
	Number of rings along the height of the capsule. Defaults to 8.
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