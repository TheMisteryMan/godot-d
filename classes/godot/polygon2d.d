/**
A 2D polygon.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.polygon2d;
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
import godot.canvasitem;
import godot.node;
import godot.texture;
/**
A 2D polygon.

A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.
*/
@GodotBaseClass struct Polygon2D
{
	enum string _GODOT_internal_name = "Polygon2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_bones") GodotMethod!(Array) _getBones;
		@GodotName("_set_bones") GodotMethod!(void, Array) _setBones;
		@GodotName("_skeleton_bone_setup_changed") GodotMethod!(void) _skeletonBoneSetupChanged;
		@GodotName("add_bone") GodotMethod!(void, NodePath, PoolRealArray) addBone;
		@GodotName("clear_bones") GodotMethod!(void) clearBones;
		@GodotName("erase_bone") GodotMethod!(void, long) eraseBone;
		@GodotName("get_antialiased") GodotMethod!(bool) getAntialiased;
		@GodotName("get_bone_count") GodotMethod!(long) getBoneCount;
		@GodotName("get_bone_path") GodotMethod!(NodePath, long) getBonePath;
		@GodotName("get_bone_weights") GodotMethod!(PoolRealArray, long) getBoneWeights;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_internal_vertex_count") GodotMethod!(long) getInternalVertexCount;
		@GodotName("get_invert") GodotMethod!(bool) getInvert;
		@GodotName("get_invert_border") GodotMethod!(double) getInvertBorder;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("get_polygons") GodotMethod!(Array) getPolygons;
		@GodotName("get_skeleton") GodotMethod!(NodePath) getSkeleton;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_texture_offset") GodotMethod!(Vector2) getTextureOffset;
		@GodotName("get_texture_rotation") GodotMethod!(double) getTextureRotation;
		@GodotName("get_texture_rotation_degrees") GodotMethod!(double) getTextureRotationDegrees;
		@GodotName("get_texture_scale") GodotMethod!(Vector2) getTextureScale;
		@GodotName("get_uv") GodotMethod!(PoolVector2Array) getUv;
		@GodotName("get_vertex_colors") GodotMethod!(PoolColorArray) getVertexColors;
		@GodotName("set_antialiased") GodotMethod!(void, bool) setAntialiased;
		@GodotName("set_bone_path") GodotMethod!(void, long, NodePath) setBonePath;
		@GodotName("set_bone_weights") GodotMethod!(void, long, PoolRealArray) setBoneWeights;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_internal_vertex_count") GodotMethod!(void, long) setInternalVertexCount;
		@GodotName("set_invert") GodotMethod!(void, bool) setInvert;
		@GodotName("set_invert_border") GodotMethod!(void, double) setInvertBorder;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
		@GodotName("set_polygons") GodotMethod!(void, Array) setPolygons;
		@GodotName("set_skeleton") GodotMethod!(void, NodePath) setSkeleton;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_texture_offset") GodotMethod!(void, Vector2) setTextureOffset;
		@GodotName("set_texture_rotation") GodotMethod!(void, double) setTextureRotation;
		@GodotName("set_texture_rotation_degrees") GodotMethod!(void, double) setTextureRotationDegrees;
		@GodotName("set_texture_scale") GodotMethod!(void, Vector2) setTextureScale;
		@GodotName("set_uv") GodotMethod!(void, PoolVector2Array) setUv;
		@GodotName("set_vertex_colors") GodotMethod!(void, PoolColorArray) setVertexColors;
	}
	bool opEquals(in Polygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Polygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Polygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Polygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(Polygon2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getBones() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_bones");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setBones(in Array bones)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(bones);
		String _GODOT_method_name = String("_set_bones");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _skeletonBoneSetupChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_skeleton_bone_setup_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addBone(NodePathArg0)(in NodePathArg0 path, in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBone, _godot_object, path, weights);
	}
	/**
	
	*/
	void clearBones()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearBones, _godot_object);
	}
	/**
	
	*/
	void eraseBone(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.eraseBone, _godot_object, index);
	}
	/**
	
	*/
	bool getAntialiased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAntialiased, _godot_object);
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
	NodePath getBonePath(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getBonePath, _godot_object, index);
	}
	/**
	
	*/
	PoolRealArray getBoneWeights(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(_classBinding.getBoneWeights, _godot_object, index);
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	long getInternalVertexCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInternalVertexCount, _godot_object);
	}
	/**
	
	*/
	bool getInvert() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getInvert, _godot_object);
	}
	/**
	
	*/
	double getInvertBorder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInvertBorder, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPolygon, _godot_object);
	}
	/**
	
	*/
	Array getPolygons() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getPolygons, _godot_object);
	}
	/**
	
	*/
	NodePath getSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getSkeleton, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	Vector2 getTextureOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getTextureOffset, _godot_object);
	}
	/**
	
	*/
	double getTextureRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTextureRotation, _godot_object);
	}
	/**
	
	*/
	double getTextureRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTextureRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getTextureScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getTextureScale, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getUv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getUv, _godot_object);
	}
	/**
	
	*/
	PoolColorArray getVertexColors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(_classBinding.getVertexColors, _godot_object);
	}
	/**
	
	*/
	void setAntialiased(in bool antialiased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAntialiased, _godot_object, antialiased);
	}
	/**
	
	*/
	void setBonePath(NodePathArg1)(in long index, in NodePathArg1 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBonePath, _godot_object, index, path);
	}
	/**
	
	*/
	void setBoneWeights(in long index, in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneWeights, _godot_object, index, weights);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setInternalVertexCount(in long internal_vertex_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInternalVertexCount, _godot_object, internal_vertex_count);
	}
	/**
	
	*/
	void setInvert(in bool invert)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInvert, _godot_object, invert);
	}
	/**
	
	*/
	void setInvertBorder(in double invert_border)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInvertBorder, _godot_object, invert_border);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	void setPolygons(in Array polygons)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPolygons, _godot_object, polygons);
	}
	/**
	
	*/
	void setSkeleton(NodePathArg0)(in NodePathArg0 skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSkeleton, _godot_object, skeleton);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setTextureOffset(in Vector2 texture_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureOffset, _godot_object, texture_offset);
	}
	/**
	
	*/
	void setTextureRotation(in double texture_rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureRotation, _godot_object, texture_rotation);
	}
	/**
	
	*/
	void setTextureRotationDegrees(in double texture_rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureRotationDegrees, _godot_object, texture_rotation);
	}
	/**
	
	*/
	void setTextureScale(in Vector2 texture_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureScale, _godot_object, texture_scale);
	}
	/**
	
	*/
	void setUv(in PoolVector2Array uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUv, _godot_object, uv);
	}
	/**
	
	*/
	void setVertexColors(in PoolColorArray vertex_colors)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertexColors, _godot_object, vertex_colors);
	}
	/**
	If `true`, polygon edges will be anti-aliased.
	*/
	@property bool antialiased()
	{
		return getAntialiased();
	}
	/// ditto
	@property void antialiased(bool v)
	{
		setAntialiased(v);
	}
	/**
	
	*/
	@property Array bones()
	{
		return _getBones();
	}
	/// ditto
	@property void bones(Array v)
	{
		_setBones(v);
	}
	/**
	The polygon's fill color. If `texture` is defined, it will be multiplied by this color. It will also be the default color for vertices not set in `vertex_colors`.
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	
	*/
	@property long internalVertexCount()
	{
		return getInternalVertexCount();
	}
	/// ditto
	@property void internalVertexCount(long v)
	{
		setInternalVertexCount(v);
	}
	/**
	Added padding applied to the bounding box when using `invert`. Setting this value too small may result in a "Bad Polygon" error.
	*/
	@property double invertBorder()
	{
		return getInvertBorder();
	}
	/// ditto
	@property void invertBorder(double v)
	{
		setInvertBorder(v);
	}
	/**
	If `true`, polygon will be inverted, containing the area outside the defined points and extending to the `invert_border`.
	*/
	@property bool invertEnable()
	{
		return getInvert();
	}
	/// ditto
	@property void invertEnable(bool v)
	{
		setInvert(v);
	}
	/**
	The offset applied to each vertex.
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	The polygon's list of vertices. The final point will be connected to the first.
	$(B Note:) This returns a copy of the $(D PoolVector2Array) rather than a reference.
	*/
	@property PoolVector2Array polygon()
	{
		return getPolygon();
	}
	/// ditto
	@property void polygon(PoolVector2Array v)
	{
		setPolygon(v);
	}
	/**
	
	*/
	@property Array polygons()
	{
		return getPolygons();
	}
	/// ditto
	@property void polygons(Array v)
	{
		setPolygons(v);
	}
	/**
	
	*/
	@property NodePath skeleton()
	{
		return getSkeleton();
	}
	/// ditto
	@property void skeleton(NodePath v)
	{
		setSkeleton(v);
	}
	/**
	The polygon's fill texture. Use `uv` to set texture coordinates.
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
	/**
	Amount to offset the polygon's `texture`. If `(0, 0)` the texture's origin (its top-left corner) will be placed at the polygon's `position`.
	*/
	@property Vector2 textureOffset()
	{
		return getTextureOffset();
	}
	/// ditto
	@property void textureOffset(Vector2 v)
	{
		setTextureOffset(v);
	}
	/**
	The texture's rotation in radians.
	*/
	@property double textureRotation()
	{
		return getTextureRotation();
	}
	/// ditto
	@property void textureRotation(double v)
	{
		setTextureRotation(v);
	}
	/**
	The texture's rotation in degrees.
	*/
	@property double textureRotationDegrees()
	{
		return getTextureRotationDegrees();
	}
	/// ditto
	@property void textureRotationDegrees(double v)
	{
		setTextureRotationDegrees(v);
	}
	/**
	Amount to multiply the `uv` coordinates when using a `texture`. Larger values make the texture smaller, and vice versa.
	*/
	@property Vector2 textureScale()
	{
		return getTextureScale();
	}
	/// ditto
	@property void textureScale(Vector2 v)
	{
		setTextureScale(v);
	}
	/**
	Texture coordinates for each vertex of the polygon. There should be one `uv` per polygon vertex. If there are fewer, undefined vertices will use `(0, 0)`.
	*/
	@property PoolVector2Array uv()
	{
		return getUv();
	}
	/// ditto
	@property void uv(PoolVector2Array v)
	{
		setUv(v);
	}
	/**
	Color for each vertex. Colors are interpolated between vertices, resulting in smooth gradients. There should be one per polygon vertex. If there are fewer, undefined vertices will use `color`.
	*/
	@property PoolColorArray vertexColors()
	{
		return getVertexColors();
	}
	/// ditto
	@property void vertexColors(PoolColorArray v)
	{
		setVertexColors(v);
	}
}
