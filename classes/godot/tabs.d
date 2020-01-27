/**
Tabs control.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tabs;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texture;
/**
Tabs control.

Simple tabs control, similar to $(D TabContainer) but is only in charge of drawing tabs, not interact with children.
*/
@GodotBaseClass struct Tabs
{
	enum string _GODOT_internal_name = "Tabs";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_on_mouse_exited") GodotMethod!(void) _onMouseExited;
		@GodotName("_update_hover") GodotMethod!(void) _updateHover;
		@GodotName("add_tab") GodotMethod!(void, String, Texture) addTab;
		@GodotName("ensure_tab_visible") GodotMethod!(void, long) ensureTabVisible;
		@GodotName("get_current_tab") GodotMethod!(long) getCurrentTab;
		@GodotName("get_drag_to_rearrange_enabled") GodotMethod!(bool) getDragToRearrangeEnabled;
		@GodotName("get_offset_buttons_visible") GodotMethod!(bool) getOffsetButtonsVisible;
		@GodotName("get_scrolling_enabled") GodotMethod!(bool) getScrollingEnabled;
		@GodotName("get_select_with_rmb") GodotMethod!(bool) getSelectWithRmb;
		@GodotName("get_tab_align") GodotMethod!(Tabs.TabAlign) getTabAlign;
		@GodotName("get_tab_close_display_policy") GodotMethod!(Tabs.CloseButtonDisplayPolicy) getTabCloseDisplayPolicy;
		@GodotName("get_tab_count") GodotMethod!(long) getTabCount;
		@GodotName("get_tab_disabled") GodotMethod!(bool, long) getTabDisabled;
		@GodotName("get_tab_icon") GodotMethod!(Texture, long) getTabIcon;
		@GodotName("get_tab_offset") GodotMethod!(long) getTabOffset;
		@GodotName("get_tab_rect") GodotMethod!(Rect2, long) getTabRect;
		@GodotName("get_tab_title") GodotMethod!(String, long) getTabTitle;
		@GodotName("get_tabs_rearrange_group") GodotMethod!(long) getTabsRearrangeGroup;
		@GodotName("move_tab") GodotMethod!(void, long, long) moveTab;
		@GodotName("remove_tab") GodotMethod!(void, long) removeTab;
		@GodotName("set_current_tab") GodotMethod!(void, long) setCurrentTab;
		@GodotName("set_drag_to_rearrange_enabled") GodotMethod!(void, bool) setDragToRearrangeEnabled;
		@GodotName("set_scrolling_enabled") GodotMethod!(void, bool) setScrollingEnabled;
		@GodotName("set_select_with_rmb") GodotMethod!(void, bool) setSelectWithRmb;
		@GodotName("set_tab_align") GodotMethod!(void, long) setTabAlign;
		@GodotName("set_tab_close_display_policy") GodotMethod!(void, long) setTabCloseDisplayPolicy;
		@GodotName("set_tab_disabled") GodotMethod!(void, long, bool) setTabDisabled;
		@GodotName("set_tab_icon") GodotMethod!(void, long, Texture) setTabIcon;
		@GodotName("set_tab_title") GodotMethod!(void, long, String) setTabTitle;
		@GodotName("set_tabs_rearrange_group") GodotMethod!(void, long) setTabsRearrangeGroup;
	}
	bool opEquals(in Tabs other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tabs opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tabs _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Tabs");
		if(constructor is null) return typeof(this).init;
		return cast(Tabs)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CloseButtonDisplayPolicy : int
	{
		/**
		Never show the close buttons.
		*/
		closeButtonShowNever = 0,
		/**
		Only show the close button on the currently active tab.
		*/
		closeButtonShowActiveOnly = 1,
		/**
		Show the close button on all tabs.
		*/
		closeButtonShowAlways = 2,
		/**
		Represents the size of the $(D closebuttondisplaypolicy) enum.
		*/
		closeButtonMax = 3,
	}
	/// 
	enum TabAlign : int
	{
		/**
		Align the tabs to the left.
		*/
		alignLeft = 0,
		/**
		Align the tabs to the center.
		*/
		alignCenter = 1,
		/**
		Align the tabs to the right.
		*/
		alignRight = 2,
		/**
		Represents the size of the $(D tabalign) enum.
		*/
		alignMax = 3,
	}
	/// 
	enum Constants : int
	{
		alignLeft = 0,
		closeButtonShowNever = 0,
		alignCenter = 1,
		closeButtonShowActiveOnly = 1,
		closeButtonShowAlways = 2,
		alignRight = 2,
		alignMax = 3,
		closeButtonMax = 3,
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _onMouseExited()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_on_mouse_exited");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateHover()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_hover");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a new tab.
	*/
	void addTab(in String title = gs!"", Texture icon = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTab, _godot_object, title, icon);
	}
	/**
	Moves the scroll view to make the tab visible.
	*/
	void ensureTabVisible(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.ensureTabVisible, _godot_object, idx);
	}
	/**
	
	*/
	long getCurrentTab() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCurrentTab, _godot_object);
	}
	/**
	
	*/
	bool getDragToRearrangeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getDragToRearrangeEnabled, _godot_object);
	}
	/**
	Returns `true` if the offset buttons (the ones that appear when there's not enough space for all tabs) are visible.
	*/
	bool getOffsetButtonsVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getOffsetButtonsVisible, _godot_object);
	}
	/**
	
	*/
	bool getScrollingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getScrollingEnabled, _godot_object);
	}
	/**
	Returns `true` if select with right mouse button is enabled.
	*/
	bool getSelectWithRmb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getSelectWithRmb, _godot_object);
	}
	/**
	
	*/
	Tabs.TabAlign getTabAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Tabs.TabAlign)(_classBinding.getTabAlign, _godot_object);
	}
	/**
	
	*/
	Tabs.CloseButtonDisplayPolicy getTabCloseDisplayPolicy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Tabs.CloseButtonDisplayPolicy)(_classBinding.getTabCloseDisplayPolicy, _godot_object);
	}
	/**
	Returns the number of tabs.
	*/
	long getTabCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTabCount, _godot_object);
	}
	/**
	Returns `true` if the tab at index `tab_idx` is disabled.
	*/
	bool getTabDisabled(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getTabDisabled, _godot_object, tab_idx);
	}
	/**
	Returns the $(D Texture) for the tab at index `tab_idx` or `null` if the tab has no $(D Texture).
	*/
	Ref!Texture getTabIcon(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTabIcon, _godot_object, tab_idx);
	}
	/**
	Returns the number of hidden tabs offsetted to the left.
	*/
	long getTabOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTabOffset, _godot_object);
	}
	/**
	Returns tab $(D Rect2) with local position and size.
	*/
	Rect2 getTabRect(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getTabRect, _godot_object, tab_idx);
	}
	/**
	Returns the title of the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	String getTabTitle(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTabTitle, _godot_object, tab_idx);
	}
	/**
	Returns the $(D Tabs)' rearrange group ID.
	*/
	long getTabsRearrangeGroup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTabsRearrangeGroup, _godot_object);
	}
	/**
	Moves a tab from `from` to `to`.
	*/
	void moveTab(in long from, in long to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveTab, _godot_object, from, to);
	}
	/**
	Removes the tab at index `tab_idx`.
	*/
	void removeTab(in long tab_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTab, _godot_object, tab_idx);
	}
	/**
	
	*/
	void setCurrentTab(in long tab_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentTab, _godot_object, tab_idx);
	}
	/**
	
	*/
	void setDragToRearrangeEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDragToRearrangeEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setScrollingEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollingEnabled, _godot_object, enabled);
	}
	/**
	If `true`, enables selecting a tab with the right mouse button.
	*/
	void setSelectWithRmb(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelectWithRmb, _godot_object, enabled);
	}
	/**
	
	*/
	void setTabAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabAlign, _godot_object, _align);
	}
	/**
	
	*/
	void setTabCloseDisplayPolicy(in long policy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabCloseDisplayPolicy, _godot_object, policy);
	}
	/**
	If `disabled` is `false`, hides the tab at index `tab_idx`.
	$(B Note:) Its title text will remain unless it is also removed with $(D setTabTitle).
	*/
	void setTabDisabled(in long tab_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabDisabled, _godot_object, tab_idx, disabled);
	}
	/**
	Sets an `icon` for the tab at index `tab_idx`.
	*/
	void setTabIcon(in long tab_idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabIcon, _godot_object, tab_idx, icon);
	}
	/**
	Sets a `title` for the tab at index `tab_idx`.
	*/
	void setTabTitle(in long tab_idx, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabTitle, _godot_object, tab_idx, title);
	}
	/**
	Defines the rearrange group ID. Choose for each $(D Tabs) the same value to dragging tabs between $(D Tabs). Enable drag with `set_drag_to_rearrange_enabled(true)`.
	*/
	void setTabsRearrangeGroup(in long group_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabsRearrangeGroup, _godot_object, group_id);
	}
	/**
	Select tab at index `tab_idx`.
	*/
	@property long currentTab()
	{
		return getCurrentTab();
	}
	/// ditto
	@property void currentTab(long v)
	{
		setCurrentTab(v);
	}
	/**
	If `true`, tabs can be rearranged with mouse drag.
	*/
	@property bool dragToRearrangeEnabled()
	{
		return getDragToRearrangeEnabled();
	}
	/// ditto
	@property void dragToRearrangeEnabled(bool v)
	{
		setDragToRearrangeEnabled(v);
	}
	/**
	if `true`, the mouse's scroll wheel cab be used to navigate the scroll view.
	*/
	@property bool scrollingEnabled()
	{
		return getScrollingEnabled();
	}
	/// ditto
	@property void scrollingEnabled(bool v)
	{
		setScrollingEnabled(v);
	}
	/**
	The alignment of all tabs. See $(D tabalign) for details.
	*/
	@property Tabs.TabAlign tabAlign()
	{
		return getTabAlign();
	}
	/// ditto
	@property void tabAlign(long v)
	{
		setTabAlign(v);
	}
	/**
	Sets when the close button will appear on the tabs. See $(D closebuttondisplaypolicy) for details.
	*/
	@property Tabs.CloseButtonDisplayPolicy tabCloseDisplayPolicy()
	{
		return getTabCloseDisplayPolicy();
	}
	/// ditto
	@property void tabCloseDisplayPolicy(long v)
	{
		setTabCloseDisplayPolicy(v);
	}
}
