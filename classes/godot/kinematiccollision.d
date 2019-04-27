/**
Collision data for KinematicBody collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.kinematiccollision;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Collision data for KinematicBody collisions.

Contains collision data for KinematicBody collisions. When a $(D KinematicBody) is moved using $(D KinematicBody.moveAndCollide), it stops if it detects a collision with another body. If a collision is detected, a KinematicCollision object is returned.
This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
*/
@GodotBaseClass struct KinematicCollision
{
	enum string _GODOT_internal_name = "KinematicCollision";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_position") GodotMethod!(Vector3) getPosition;
		@GodotName("get_normal") GodotMethod!(Vector3) getNormal;
		@GodotName("get_travel") GodotMethod!(Vector3) getTravel;
		@GodotName("get_remainder") GodotMethod!(Vector3) getRemainder;
		@GodotName("get_local_shape") GodotMethod!(GodotObject) getLocalShape;
		@GodotName("get_collider") GodotMethod!(GodotObject) getCollider;
		@GodotName("get_collider_id") GodotMethod!(long) getColliderId;
		@GodotName("get_collider_shape") GodotMethod!(GodotObject) getColliderShape;
		@GodotName("get_collider_shape_index") GodotMethod!(long) getColliderShapeIndex;
		@GodotName("get_collider_velocity") GodotMethod!(Vector3) getColliderVelocity;
		@GodotName("get_collider_metadata") GodotMethod!(Variant) getColliderMetadata;
	}
	bool opEquals(in KinematicCollision other) const { return _godot_object.ptr is other._godot_object.ptr; }
	KinematicCollision opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static KinematicCollision _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("KinematicCollision");
		if(constructor is null) return typeof(this).init;
		return cast(KinematicCollision)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector3 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	Vector3 getNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getNormal, _godot_object);
	}
	/**
	
	*/
	Vector3 getTravel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getTravel, _godot_object);
	}
	/**
	
	*/
	Vector3 getRemainder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getRemainder, _godot_object);
	}
	/**
	
	*/
	GodotObject getLocalShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getLocalShape, _godot_object);
	}
	/**
	
	*/
	GodotObject getCollider() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getCollider, _godot_object);
	}
	/**
	
	*/
	long getColliderId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getColliderId, _godot_object);
	}
	/**
	
	*/
	GodotObject getColliderShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getColliderShape, _godot_object);
	}
	/**
	
	*/
	long getColliderShapeIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getColliderShapeIndex, _godot_object);
	}
	/**
	
	*/
	Vector3 getColliderVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getColliderVelocity, _godot_object);
	}
	/**
	
	*/
	Variant getColliderMetadata() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getColliderMetadata, _godot_object);
	}
	/**
	The point of collision.
	*/
	@property Vector3 position()
	{
		return getPosition();
	}
	/**
	The colliding body's shape's normal at the point of collision.
	*/
	@property Vector3 normal()
	{
		return getNormal();
	}
	/**
	The distance the moving object traveled before collision.
	*/
	@property Vector3 travel()
	{
		return getTravel();
	}
	/**
	The moving object's remaining movement vector.
	*/
	@property Vector3 remainder()
	{
		return getRemainder();
	}
	/**
	The moving object's colliding shape.
	*/
	@property GodotObject localShape()
	{
		return getLocalShape();
	}
	/**
	The colliding body.
	*/
	@property GodotObject collider()
	{
		return getCollider();
	}
	/**
	The colliding body's unique $(D RID).
	*/
	@property long colliderId()
	{
		return getColliderId();
	}
	/**
	The colliding body's shape.
	*/
	@property GodotObject colliderShape()
	{
		return getColliderShape();
	}
	/**
	The colliding shape's index. See $(D CollisionObject).
	*/
	@property long colliderShapeIndex()
	{
		return getColliderShapeIndex();
	}
	/**
	The colliding object's velocity.
	*/
	@property Vector3 colliderVelocity()
	{
		return getColliderVelocity();
	}
	/**
	The colliding body's metadata. See $(D GodotObject).
	*/
	@property Variant colliderMetadata()
	{
		return getColliderMetadata();
	}
}