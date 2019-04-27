/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skeleton2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.bone2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct Skeleton2D
{
	enum string _GODOT_internal_name = "Skeleton2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_update_bone_setup") GodotMethod!(void) _updateBoneSetup;
		@GodotName("_update_transform") GodotMethod!(void) _updateTransform;
		@GodotName("get_bone_count") GodotMethod!(long) getBoneCount;
		@GodotName("get_bone") GodotMethod!(Bone2D, long) getBone;
		@GodotName("get_skeleton") GodotMethod!(RID) getSkeleton;
	}
	bool opEquals(in Skeleton2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Skeleton2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Skeleton2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Skeleton2D");
		if(constructor is null) return typeof(this).init;
		return cast(Skeleton2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _updateBoneSetup()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_bone_setup");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateTransform()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_transform");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getBoneCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBoneCount, _godot_object);
	}
	/**
	
	*/
	Bone2D getBone(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Bone2D)(_classBinding.getBone, _godot_object, idx);
	}
	/**
	
	*/
	RID getSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getSkeleton, _godot_object);
	}
}