/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetransformfunc;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualShaderNodeTransformFunc
{
	enum string _GODOT_internal_name = "VisualShaderNodeTransformFunc";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_function") GodotMethod!(VisualShaderNodeTransformFunc.Function) getFunction;
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
	}
	bool opEquals(in VisualShaderNodeTransformFunc other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeTransformFunc opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeTransformFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTransformFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTransformFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		
		*/
		funcInverse = 0,
		/**
		
		*/
		funcTranspose = 1,
	}
	/// 
	enum Constants : int
	{
		funcInverse = 0,
		funcTranspose = 1,
	}
	/**
	
	*/
	VisualShaderNodeTransformFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTransformFunc.Function)(_classBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunction, _godot_object, func);
	}
	/**
	
	*/
	@property VisualShaderNodeTransformFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}
