/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.jsonrpc;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
/**

*/
@GodotBaseClass struct JSONRPC
{
	enum string _GODOT_internal_name = "JSONRPC";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("make_notification") GodotMethod!(Dictionary, String, Variant) makeNotification;
		@GodotName("make_request") GodotMethod!(Dictionary, String, Variant, Variant) makeRequest;
		@GodotName("make_response") GodotMethod!(Dictionary, Variant, Variant) makeResponse;
		@GodotName("make_response_error") GodotMethod!(Dictionary, long, String, Variant) makeResponseError;
		@GodotName("process_action") GodotMethod!(Variant, Variant, bool) processAction;
		@GodotName("process_string") GodotMethod!(String, String) processString;
		@GodotName("set_scope") GodotMethod!(void, String, GodotObject) setScope;
	}
	bool opEquals(in JSONRPC other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JSONRPC opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JSONRPC _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JSONRPC");
		if(constructor is null) return typeof(this).init;
		return cast(JSONRPC)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ErrorCode : int
	{
		/**
		
		*/
		parseError = -32700,
		/**
		
		*/
		internalError = -32603,
		/**
		
		*/
		invalidParams = -32602,
		/**
		
		*/
		methodNotFound = -32601,
		/**
		
		*/
		invalidRequest = -32600,
	}
	/// 
	enum Constants : int
	{
		parseError = -32700,
		internalError = -32603,
		invalidParams = -32602,
		methodNotFound = -32601,
		invalidRequest = -32600,
	}
	/**
	
	*/
	Dictionary makeNotification(VariantArg1)(in String method, in VariantArg1 params)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.makeNotification, _godot_object, method, params);
	}
	/**
	
	*/
	Dictionary makeRequest(VariantArg1, VariantArg2)(in String method, in VariantArg1 params, in VariantArg2 id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.makeRequest, _godot_object, method, params, id);
	}
	/**
	
	*/
	Dictionary makeResponse(VariantArg0, VariantArg1)(in VariantArg0 result, in VariantArg1 id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.makeResponse, _godot_object, result, id);
	}
	/**
	
	*/
	Dictionary makeResponseError(VariantArg2)(in long code, in String message, in VariantArg2 id = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.makeResponseError, _godot_object, code, message, id);
	}
	/**
	
	*/
	Variant processAction(VariantArg0)(in VariantArg0 action, in bool recurse = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.processAction, _godot_object, action, recurse);
	}
	/**
	
	*/
	String processString(in String action)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.processString, _godot_object, action);
	}
	/**
	
	*/
	void setScope(in String _scope, GodotObject target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScope, _godot_object, _scope, target);
	}
}
