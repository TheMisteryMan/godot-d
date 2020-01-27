/**
A custom shader program with a visual editor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shader;
import godot.resource;
import godot.reference;
import godot.visualshadernode;
/**
A custom shader program with a visual editor.

This class allows you to define a custom shader program that can be used for various materials to render objects.
The visual shader editor creates the shader.
*/
@GodotBaseClass struct VisualShader
{
	enum string _GODOT_internal_name = "VisualShader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shader _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_input_type_changed") GodotMethod!(void, long, long) _inputTypeChanged;
		@GodotName("_queue_update") GodotMethod!(void) _queueUpdate;
		@GodotName("_update_shader") GodotMethod!(void) _updateShader;
		@GodotName("add_node") GodotMethod!(void, long, VisualShaderNode, Vector2, long) addNode;
		@GodotName("can_connect_nodes") GodotMethod!(bool, long, long, long, long, long) canConnectNodes;
		@GodotName("connect_nodes") GodotMethod!(GodotError, long, long, long, long, long) connectNodes;
		@GodotName("connect_nodes_forced") GodotMethod!(void, long, long, long, long, long) connectNodesForced;
		@GodotName("disconnect_nodes") GodotMethod!(void, long, long, long, long, long) disconnectNodes;
		@GodotName("get_graph_offset") GodotMethod!(Vector2) getGraphOffset;
		@GodotName("get_node") GodotMethod!(VisualShaderNode, long, long) getNode;
		@GodotName("get_node_connections") GodotMethod!(Array, long) getNodeConnections;
		@GodotName("get_node_list") GodotMethod!(PoolIntArray, long) getNodeList;
		@GodotName("get_node_position") GodotMethod!(Vector2, long, long) getNodePosition;
		@GodotName("get_valid_node_id") GodotMethod!(long, long) getValidNodeId;
		@GodotName("is_node_connection") GodotMethod!(bool, long, long, long, long, long) isNodeConnection;
		@GodotName("remove_node") GodotMethod!(void, long, long) removeNode;
		@GodotName("set_graph_offset") GodotMethod!(void, Vector2) setGraphOffset;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_node_position") GodotMethod!(void, long, long, Vector2) setNodePosition;
	}
	bool opEquals(in VisualShader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShader");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShader)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Type : int
	{
		/**
		
		*/
		typeVertex = 0,
		/**
		
		*/
		typeFragment = 1,
		/**
		
		*/
		typeLight = 2,
		/**
		Represents the size of the $(D type) enum.
		*/
		typeMax = 3,
	}
	/// 
	enum Constants : int
	{
		/**
		
		*/
		nodeIdInvalid = -1,
		typeVertex = 0,
		/**
		
		*/
		nodeIdOutput = 0,
		typeFragment = 1,
		typeLight = 2,
		typeMax = 3,
	}
	/**
	
	*/
	void _inputTypeChanged(in long arg0, in long arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_input_type_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _queueUpdate()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_queue_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateShader() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_shader");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addNode(in long type, VisualShaderNode node, in Vector2 position, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNode, _godot_object, type, node, position, id);
	}
	/**
	
	*/
	bool canConnectNodes(in long type, in long from_node, in long from_port, in long to_node, in long to_port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canConnectNodes, _godot_object, type, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	GodotError connectNodes(in long type, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectNodes, _godot_object, type, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	void connectNodesForced(in long type, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.connectNodesForced, _godot_object, type, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	void disconnectNodes(in long type, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectNodes, _godot_object, type, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	Vector2 getGraphOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGraphOffset, _godot_object);
	}
	/**
	
	*/
	Ref!VisualShaderNode getNode(in long type, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNode)(_classBinding.getNode, _godot_object, type, id);
	}
	/**
	
	*/
	Array getNodeConnections(in long type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getNodeConnections, _godot_object, type);
	}
	/**
	
	*/
	PoolIntArray getNodeList(in long type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getNodeList, _godot_object, type);
	}
	/**
	
	*/
	Vector2 getNodePosition(in long type, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getNodePosition, _godot_object, type, id);
	}
	/**
	
	*/
	long getValidNodeId(in long type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getValidNodeId, _godot_object, type);
	}
	/**
	
	*/
	bool isNodeConnection(in long type, in long from_node, in long from_port, in long to_node, in long to_port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNodeConnection, _godot_object, type, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	void removeNode(in long type, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, type, id);
	}
	/**
	
	*/
	void setGraphOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGraphOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	void setNodePosition(in long type, in long id, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodePosition, _godot_object, type, id, position);
	}
	/**
	
	*/
	@property Vector2 graphOffset()
	{
		return getGraphOffset();
	}
	/// ditto
	@property void graphOffset(Vector2 v)
	{
		setGraphOffset(v);
	}
}
