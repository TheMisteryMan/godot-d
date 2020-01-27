/**
Adds a soft-clip limiter audio effect to an Audio bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectlimiter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
import godot.resource;
/**
Adds a soft-clip limiter audio effect to an Audio bus.

A limiter is similar to a compressor, but it's less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master bus is always recommended to reduce the effects of clipping.
Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.
*/
@GodotBaseClass struct AudioEffectLimiter
{
	enum string _GODOT_internal_name = "AudioEffectLimiter";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_ceiling_db") GodotMethod!(double) getCeilingDb;
		@GodotName("get_soft_clip_db") GodotMethod!(double) getSoftClipDb;
		@GodotName("get_soft_clip_ratio") GodotMethod!(double) getSoftClipRatio;
		@GodotName("get_threshold_db") GodotMethod!(double) getThresholdDb;
		@GodotName("set_ceiling_db") GodotMethod!(void, double) setCeilingDb;
		@GodotName("set_soft_clip_db") GodotMethod!(void, double) setSoftClipDb;
		@GodotName("set_soft_clip_ratio") GodotMethod!(void, double) setSoftClipRatio;
		@GodotName("set_threshold_db") GodotMethod!(void, double) setThresholdDb;
	}
	bool opEquals(in AudioEffectLimiter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectLimiter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectLimiter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectLimiter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectLimiter)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getCeilingDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCeilingDb, _godot_object);
	}
	/**
	
	*/
	double getSoftClipDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSoftClipDb, _godot_object);
	}
	/**
	
	*/
	double getSoftClipRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSoftClipRatio, _godot_object);
	}
	/**
	
	*/
	double getThresholdDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getThresholdDb, _godot_object);
	}
	/**
	
	*/
	void setCeilingDb(in double ceiling)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCeilingDb, _godot_object, ceiling);
	}
	/**
	
	*/
	void setSoftClipDb(in double soft_clip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSoftClipDb, _godot_object, soft_clip);
	}
	/**
	
	*/
	void setSoftClipRatio(in double soft_clip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSoftClipRatio, _godot_object, soft_clip);
	}
	/**
	
	*/
	void setThresholdDb(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setThresholdDb, _godot_object, threshold);
	}
	/**
	The waveform's maximum allowed value, in decibels. Value can range from -20 to -0.1.
	*/
	@property double ceilingDb()
	{
		return getCeilingDb();
	}
	/// ditto
	@property void ceilingDb(double v)
	{
		setCeilingDb(v);
	}
	/**
	Applies a gain to the limited waves, in decibels. Value can range from 0 to 6.
	*/
	@property double softClipDb()
	{
		return getSoftClipDb();
	}
	/// ditto
	@property void softClipDb(double v)
	{
		setSoftClipDb(v);
	}
	/**
	
	*/
	@property double softClipRatio()
	{
		return getSoftClipRatio();
	}
	/// ditto
	@property void softClipRatio(double v)
	{
		setSoftClipRatio(v);
	}
	/**
	Threshold from which the limiter begins to be active, in decibels. Value can range from -30 to 0.
	*/
	@property double thresholdDb()
	{
		return getThresholdDb();
	}
	/// ditto
	@property void thresholdDb(double v)
	{
		setThresholdDb(v);
	}
}
