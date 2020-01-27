/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodeuniform;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualShaderNodeUniform
{
	enum string _GODOT_internal_name = "VisualShaderNodeUniform";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_uniform_name") GodotMethod!(String) getUniformName;
		@GodotName("set_uniform_name") GodotMethod!(void, String) setUniformName;
	}
	bool opEquals(in VisualShaderNodeUniform other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeUniform opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeUniform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeUniform");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeUniform)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getUniformName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getUniformName, _godot_object);
	}
	/**
	
	*/
	void setUniformName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUniformName, _godot_object, name);
	}
	/**
	
	*/
	@property String uniformName()
	{
		return getUniformName();
	}
	/// ditto
	@property void uniformName(String v)
	{
		setUniformName(v);
	}
}
