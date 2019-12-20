import 'package:flutter/material.dart';

class PageIcon extends StatefulWidget {
  PageIcon({Key key}) : super(key: key);

  @override
  _PageIconState createState() => _PageIconState();
}

class _PageIconState extends State<PageIcon> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('各种 icon'),
      ),
      body: GridView.count(
        crossAxisCount: 12,
        children: <Widget>[
          ImageIcon(
            AssetImage('lib/images/pagehome/home.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/home-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/live.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/live-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/video.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/video-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/widget.png'),
            size: 56,
            color: Colors.black45,
          ),
          ImageIcon(
            AssetImage('lib/images/pagehome/widget-fill.png'),
            size: 56,
            color: Theme.of(context).accentColor,
          ),
          Icon(Icons.threesixty),
          Icon(Icons.threed_rotation),
          Icon(Icons.four_k),
          Icon(Icons.ac_unit),
          Icon(Icons.access_alarm),
          Icon(Icons.access_alarms),
          Icon(Icons.access_time),
          Icon(Icons.accessibility),
          Icon(Icons.accessibility_new),
          Icon(Icons.accessible),
          Icon(Icons.accessible_forward),
          Icon(Icons.account_balance),
          Icon(Icons.account_balance_wallet),
          Icon(Icons.account_box),
          Icon(Icons.account_circle),
          Icon(Icons.adb),
          Icon(Icons.add),
          Icon(Icons.add_a_photo),
          Icon(Icons.add_alarm),
          Icon(Icons.add_alert),
          Icon(Icons.add_box),
          Icon(Icons.add_call),
          Icon(Icons.add_circle),
          Icon(Icons.add_circle_outline),
          Icon(Icons.add_comment),
          Icon(Icons.add_location),
          Icon(Icons.add_photo_alternate),
          Icon(Icons.add_shopping_cart),
          Icon(Icons.add_to_home_screen),
          Icon(Icons.add_to_photos),
          Icon(Icons.add_to_queue),
          Icon(Icons.adjust),
          Icon(Icons.airline_seat_flat),
          Icon(Icons.airline_seat_flat_angled),
          Icon(Icons.airline_seat_individual_suite),
          Icon(Icons.airline_seat_legroom_extra),
          Icon(Icons.airline_seat_legroom_normal),
          Icon(Icons.airline_seat_legroom_reduced),
          Icon(Icons.airline_seat_recline_extra),
          Icon(Icons.airline_seat_recline_normal),
          Icon(Icons.airplanemode_active),
          Icon(Icons.airplanemode_inactive),
          Icon(Icons.airplay),
          Icon(Icons.airport_shuttle),
          Icon(Icons.alarm),
          Icon(Icons.alarm_add),
          Icon(Icons.alarm_off),
          Icon(Icons.alarm_on),
          Icon(Icons.album),
          Icon(Icons.all_inclusive),
          Icon(Icons.all_out),
          Icon(Icons.alternate_email),
          Icon(Icons.android),
          Icon(Icons.announcement),
          Icon(Icons.apps),
          Icon(Icons.archive),
          Icon(Icons.arrow_back),
          Icon(Icons.arrow_back_ios),
          Icon(Icons.arrow_downward),
          Icon(Icons.arrow_drop_down),
          Icon(Icons.arrow_drop_down_circle),
          Icon(Icons.arrow_drop_up),
          Icon(Icons.arrow_forward),
          Icon(Icons.arrow_forward_ios),
          Icon(Icons.arrow_left),
          Icon(Icons.arrow_right),
          Icon(Icons.arrow_upward),
          Icon(Icons.art_track),
          Icon(Icons.aspect_ratio),
          Icon(Icons.assessment),
          Icon(Icons.assignment),
          Icon(Icons.assignment_ind),
          Icon(Icons.assignment_late),
          Icon(Icons.assignment_return),
          Icon(Icons.assignment_returned),
          Icon(Icons.assignment_turned_in),
          Icon(Icons.assistant),
          Icon(Icons.assistant_photo),
          Icon(Icons.atm),
          Icon(Icons.attach_file),
          Icon(Icons.attach_money),
          Icon(Icons.attachment),
          Icon(Icons.audiotrack),
          Icon(Icons.autorenew),
          Icon(Icons.av_timer),
          Icon(Icons.backspace),
          Icon(Icons.backup),
          Icon(Icons.battery_alert),
          Icon(Icons.battery_charging_full),
          Icon(Icons.battery_full),
          Icon(Icons.battery_std),
          Icon(Icons.battery_unknown),
          Icon(Icons.beach_access),
          Icon(Icons.beenhere),
          Icon(Icons.block),
          Icon(Icons.bluetooth),
          Icon(Icons.bluetooth_audio),
          Icon(Icons.bluetooth_connected),
          Icon(Icons.bluetooth_disabled),
          Icon(Icons.bluetooth_searching),
          Icon(Icons.blur_circular),
          Icon(Icons.blur_linear),
          Icon(Icons.blur_off),
          Icon(Icons.blur_on),
          Icon(Icons.book),
          Icon(Icons.bookmark),
          Icon(Icons.bookmark_border),
          Icon(Icons.border_all),
          Icon(Icons.border_bottom),
          Icon(Icons.border_clear),
          Icon(Icons.border_color),
          Icon(Icons.border_horizontal),
          Icon(Icons.border_inner),
          Icon(Icons.border_left),
          Icon(Icons.border_outer),
          Icon(Icons.border_right),
          Icon(Icons.border_style),
          Icon(Icons.border_top),
          Icon(Icons.border_vertical),
          Icon(Icons.branding_watermark),
          Icon(Icons.brightness_1),
          Icon(Icons.brightness_2),
          Icon(Icons.brightness_3),
          Icon(Icons.brightness_4),
          Icon(Icons.brightness_5),
          Icon(Icons.brightness_6),
          Icon(Icons.brightness_7),
          Icon(Icons.brightness_auto),
          Icon(Icons.brightness_high),
          Icon(Icons.brightness_low),
          Icon(Icons.brightness_medium),
          Icon(Icons.broken_image),
          Icon(Icons.brush),
          Icon(Icons.bubble_chart),
          Icon(Icons.bug_report),
          Icon(Icons.build),
          Icon(Icons.burst_mode),
          Icon(Icons.business),
          Icon(Icons.business_center),
          Icon(Icons.cached),
          Icon(Icons.cake),
          Icon(Icons.calendar_today),
          Icon(Icons.calendar_view_day),
          Icon(Icons.call),
          Icon(Icons.call_end),
          Icon(Icons.call_made),
          Icon(Icons.call_merge),
          Icon(Icons.call_missed),
          Icon(Icons.call_missed_outgoing),
          Icon(Icons.call_received),
          Icon(Icons.call_split),
          Icon(Icons.call_to_action),
          Icon(Icons.camera),
          Icon(Icons.camera_alt),
          Icon(Icons.camera_enhance),
          Icon(Icons.camera_front),
          Icon(Icons.camera_rear),
          Icon(Icons.camera_roll),
          Icon(Icons.cancel),
          Icon(Icons.card_giftcard),
          Icon(Icons.card_membership),
          Icon(Icons.card_travel),
          Icon(Icons.casino),
          Icon(Icons.cast),
          Icon(Icons.cast_connected),
          Icon(Icons.category),
          Icon(Icons.center_focus_strong),
          Icon(Icons.center_focus_weak),
          Icon(Icons.change_history),
          Icon(Icons.chat),
          Icon(Icons.chat_bubble),
          Icon(Icons.chat_bubble_outline),
          Icon(Icons.check),
          Icon(Icons.check_box),
          Icon(Icons.check_box_outline_blank),
          Icon(Icons.check_circle),
          Icon(Icons.check_circle_outline),
          Icon(Icons.chevron_left),
          Icon(Icons.chevron_right),
          Icon(Icons.child_care),
          Icon(Icons.child_friendly),
          Icon(Icons.chrome_reader_mode),
          Icon(Icons.class_),
          Icon(Icons.clear),
          Icon(Icons.clear_all),
          Icon(Icons.close),
          Icon(Icons.closed_caption),
          Icon(Icons.cloud),
          Icon(Icons.cloud_circle),
          Icon(Icons.cloud_done),
          Icon(Icons.cloud_download),
          Icon(Icons.cloud_off),
          Icon(Icons.cloud_queue),
          Icon(Icons.cloud_upload),
          Icon(Icons.code),
          Icon(Icons.collections),
          Icon(Icons.collections_bookmark),
          Icon(Icons.color_lens),
          Icon(Icons.colorize),
          Icon(Icons.comment),
          Icon(Icons.compare),
          Icon(Icons.compare_arrows),
          Icon(Icons.computer),
          Icon(Icons.confirmation_number),
          Icon(Icons.contact_mail),
          Icon(Icons.contact_phone),
          Icon(Icons.contacts),
          Icon(Icons.content_copy),
          Icon(Icons.content_cut),
          Icon(Icons.content_paste),
          Icon(Icons.control_point),
          Icon(Icons.control_point_duplicate),
          Icon(Icons.copyright),
          Icon(Icons.create),
          Icon(Icons.create_new_folder),
          Icon(Icons.credit_card),
          Icon(Icons.crop),
          Icon(Icons.crop_16_9),
          Icon(Icons.crop_3_2),
          Icon(Icons.crop_5_4),
          Icon(Icons.crop_7_5),
          Icon(Icons.crop_din),
          Icon(Icons.crop_free),
          Icon(Icons.crop_landscape),
          Icon(Icons.crop_original),
          Icon(Icons.crop_portrait),
          Icon(Icons.crop_rotate),
          Icon(Icons.crop_square),
          Icon(Icons.dashboard),
          Icon(Icons.data_usage),
          Icon(Icons.date_range),
          Icon(Icons.dehaze),
          Icon(Icons.delete),
          Icon(Icons.delete_forever),
          Icon(Icons.delete_outline),
          Icon(Icons.delete_sweep),
          Icon(Icons.departure_board),
          Icon(Icons.description),
          Icon(Icons.desktop_mac),
          Icon(Icons.desktop_windows),
          Icon(Icons.details),
          Icon(Icons.developer_board),
          Icon(Icons.developer_mode),
          Icon(Icons.device_hub),
          Icon(Icons.device_unknown),
          Icon(Icons.devices),
          Icon(Icons.devices_other),
          Icon(Icons.dialer_sip),
          Icon(Icons.dialpad),
          Icon(Icons.directions),
          Icon(Icons.directions_bike),
          Icon(Icons.directions_boat),
          Icon(Icons.directions_bus),
          Icon(Icons.directions_car),
          Icon(Icons.directions_railway),
          Icon(Icons.directions_run),
          Icon(Icons.directions_subway),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_walk),
          Icon(Icons.disc_full),
          Icon(Icons.dns),
          Icon(Icons.do_not_disturb),
          Icon(Icons.do_not_disturb_alt),
          Icon(Icons.do_not_disturb_off),
          Icon(Icons.do_not_disturb_on),
          Icon(Icons.dock),
          Icon(Icons.domain),
          Icon(Icons.done),
          Icon(Icons.done_all),
          Icon(Icons.done_outline),
          Icon(Icons.donut_large),
          Icon(Icons.donut_small),
          Icon(Icons.drafts),
          Icon(Icons.drag_handle),
          Icon(Icons.drive_eta),
          Icon(Icons.dvr),
          Icon(Icons.edit),
          Icon(Icons.edit_attributes),
          Icon(Icons.edit_location),
          Icon(Icons.eject),
          Icon(Icons.email),
          Icon(Icons.enhanced_encryption),
          Icon(Icons.equalizer),
          Icon(Icons.error),
          Icon(Icons.error_outline),
          Icon(Icons.euro_symbol),
          Icon(Icons.ev_station),
          Icon(Icons.event),
          Icon(Icons.event_available),
          Icon(Icons.event_busy),
          Icon(Icons.event_note),
          Icon(Icons.event_seat),
          Icon(Icons.exit_to_app),
          Icon(Icons.expand_less),
          Icon(Icons.expand_more),
          Icon(Icons.explicit),
          Icon(Icons.explore),
          Icon(Icons.exposure),
          Icon(Icons.exposure_neg_1),
          Icon(Icons.exposure_neg_2),
          Icon(Icons.exposure_plus_1),
          Icon(Icons.exposure_plus_2),
          Icon(Icons.exposure_zero),
          Icon(Icons.extension),
          Icon(Icons.face),
          Icon(Icons.fast_forward),
          Icon(Icons.fast_rewind),
          Icon(Icons.fastfood),
          Icon(Icons.favorite),
          Icon(Icons.favorite_border),
          Icon(Icons.featured_play_list),
          Icon(Icons.featured_video),
          Icon(Icons.feedback),
          Icon(Icons.fiber_dvr),
          Icon(Icons.fiber_manual_record),
          Icon(Icons.fiber_new),
          Icon(Icons.fiber_pin),
          Icon(Icons.fiber_smart_record),
          Icon(Icons.file_download),
          Icon(Icons.file_upload),
          Icon(Icons.filter),
          Icon(Icons.filter_1),
          Icon(Icons.filter_2),
          Icon(Icons.filter_3),
          Icon(Icons.filter_4),
          Icon(Icons.filter_5),
          Icon(Icons.filter_6),
          Icon(Icons.filter_7),
          Icon(Icons.filter_8),
          Icon(Icons.filter_9),
          Icon(Icons.filter_9_plus),
          Icon(Icons.filter_b_and_w),
          Icon(Icons.filter_center_focus),
          Icon(Icons.filter_drama),
          Icon(Icons.filter_frames),
          Icon(Icons.filter_hdr),
          Icon(Icons.filter_list),
          Icon(Icons.filter_none),
          Icon(Icons.filter_tilt_shift),
          Icon(Icons.filter_vintage),
          Icon(Icons.find_in_page),
          Icon(Icons.find_replace),
          Icon(Icons.fingerprint),
          Icon(Icons.first_page),
          Icon(Icons.fitness_center),
          Icon(Icons.flag),
          Icon(Icons.flare),
          Icon(Icons.flash_auto),
          Icon(Icons.flash_off),
          Icon(Icons.flash_on),
          Icon(Icons.flight),
          Icon(Icons.flight_land),
          Icon(Icons.flight_takeoff),
          Icon(Icons.flip),
          Icon(Icons.flip_to_back),
          Icon(Icons.flip_to_front),
          Icon(Icons.folder),
          Icon(Icons.folder_open),
          Icon(Icons.folder_shared),
          Icon(Icons.folder_special),
          Icon(Icons.font_download),
          Icon(Icons.format_align_center),
          Icon(Icons.format_align_justify),
          Icon(Icons.format_align_left),
          Icon(Icons.format_align_right),
          Icon(Icons.format_bold),
          Icon(Icons.format_clear),
          Icon(Icons.format_color_fill),
          Icon(Icons.format_color_reset),
          Icon(Icons.format_color_text),
          Icon(Icons.format_indent_decrease),
          Icon(Icons.format_indent_increase),
          Icon(Icons.format_italic),
          Icon(Icons.format_line_spacing),
          Icon(Icons.format_list_bulleted),
          Icon(Icons.format_list_numbered),
          Icon(Icons.format_list_numbered_rtl),
          Icon(Icons.format_paint),
          Icon(Icons.format_quote),
          Icon(Icons.format_shapes),
          Icon(Icons.format_size),
          Icon(Icons.format_strikethrough),
          Icon(Icons.format_textdirection_l_to_r),
          Icon(Icons.format_textdirection_r_to_l),
          Icon(Icons.format_underlined),
          Icon(Icons.forum),
          Icon(Icons.forward),
          Icon(Icons.forward_10),
          Icon(Icons.forward_30),
          Icon(Icons.forward_5),
          Icon(Icons.free_breakfast),
          Icon(Icons.fullscreen),
          Icon(Icons.fullscreen_exit),
          Icon(Icons.functions),
          Icon(Icons.g_translate),
          Icon(Icons.gamepad),
          Icon(Icons.games),
          Icon(Icons.gavel),
          Icon(Icons.gesture),
          Icon(Icons.get_app),
          Icon(Icons.gif),
          Icon(Icons.golf_course),
          Icon(Icons.gps_fixed),
          Icon(Icons.gps_not_fixed),
          Icon(Icons.gps_off),
          Icon(Icons.grade),
          Icon(Icons.gradient),
          Icon(Icons.grain),
          Icon(Icons.graphic_eq),
          Icon(Icons.grid_off),
          Icon(Icons.grid_on),
          Icon(Icons.group),
          Icon(Icons.group_add),
          Icon(Icons.group_work),
          Icon(Icons.hd),
          Icon(Icons.hdr_off),
          Icon(Icons.hdr_on),
          Icon(Icons.hdr_strong),
          Icon(Icons.hdr_weak),
          Icon(Icons.headset),
          Icon(Icons.headset_mic),
          Icon(Icons.headset_off),
          Icon(Icons.healing),
          Icon(Icons.hearing),
          Icon(Icons.help),
          Icon(Icons.help_outline),
          Icon(Icons.high_quality),
          Icon(Icons.highlight),
          Icon(Icons.highlight_off),
          Icon(Icons.history),
          Icon(Icons.home),
          Icon(Icons.hot_tub),
          Icon(Icons.hotel),
          Icon(Icons.hourglass_empty),
          Icon(Icons.hourglass_full),
          Icon(Icons.http),
          Icon(Icons.https),
          Icon(Icons.image),
          Icon(Icons.image_aspect_ratio),
          Icon(Icons.import_contacts),
          Icon(Icons.import_export),
          Icon(Icons.important_devices),
          Icon(Icons.inbox),
          Icon(Icons.indeterminate_check_box),
          Icon(Icons.info),
          Icon(Icons.info_outline),
          Icon(Icons.input),
          Icon(Icons.insert_chart),
          Icon(Icons.insert_comment),
          Icon(Icons.insert_drive_file),
          Icon(Icons.insert_emoticon),
          Icon(Icons.insert_invitation),
          Icon(Icons.insert_link),
          Icon(Icons.insert_photo),
          Icon(Icons.invert_colors),
          Icon(Icons.invert_colors_off),
          Icon(Icons.iso),
          Icon(Icons.keyboard),
          Icon(Icons.keyboard_arrow_down),
          Icon(Icons.keyboard_arrow_left),
          Icon(Icons.keyboard_arrow_right),
          Icon(Icons.keyboard_arrow_up),
          Icon(Icons.keyboard_backspace),
          Icon(Icons.keyboard_capslock),
          Icon(Icons.keyboard_hide),
          Icon(Icons.keyboard_return),
          Icon(Icons.keyboard_tab),
          Icon(Icons.keyboard_voice),
          Icon(Icons.kitchen),
          Icon(Icons.label),
          Icon(Icons.label_important),
          Icon(Icons.label_outline),
          Icon(Icons.landscape),
          Icon(Icons.language),
          Icon(Icons.laptop),
          Icon(Icons.laptop_chromebook),
          Icon(Icons.laptop_mac),
          Icon(Icons.laptop_windows),
          Icon(Icons.last_page),
          Icon(Icons.launch),
          Icon(Icons.layers),
          Icon(Icons.layers_clear),
          Icon(Icons.leak_add),
          Icon(Icons.leak_remove),
          Icon(Icons.lens),
          Icon(Icons.library_add),
          Icon(Icons.library_books),
          Icon(Icons.library_music),
          Icon(Icons.lightbulb_outline),
          Icon(Icons.line_style),
          Icon(Icons.line_weight),
          Icon(Icons.linear_scale),
          Icon(Icons.link),
          Icon(Icons.link_off),
          Icon(Icons.linked_camera),
          Icon(Icons.list),
          Icon(Icons.live_help),
          Icon(Icons.live_tv),
          Icon(Icons.local_activity),
          Icon(Icons.local_airport),
          Icon(Icons.local_atm),
          Icon(Icons.local_bar),
          Icon(Icons.local_cafe),
          Icon(Icons.local_car_wash),
          Icon(Icons.local_convenience_store),
          Icon(Icons.local_dining),
          Icon(Icons.local_drink),
          Icon(Icons.local_florist),
          Icon(Icons.local_gas_station),
          Icon(Icons.local_grocery_store),
          Icon(Icons.local_hospital),
          Icon(Icons.local_hotel),
          Icon(Icons.local_laundry_service),
          Icon(Icons.local_library),
          Icon(Icons.local_mall),
          Icon(Icons.local_movies),
          Icon(Icons.local_offer),
          Icon(Icons.local_parking),
          Icon(Icons.local_pharmacy),
          Icon(Icons.local_phone),
          Icon(Icons.local_pizza),
          Icon(Icons.local_play),
          Icon(Icons.local_post_office),
          Icon(Icons.local_printshop),
          Icon(Icons.local_see),
          Icon(Icons.local_shipping),
          Icon(Icons.local_taxi),
          Icon(Icons.location_city),
          Icon(Icons.location_disabled),
          Icon(Icons.location_off),
          Icon(Icons.location_on),
          Icon(Icons.location_searching),
          Icon(Icons.lock),
          Icon(Icons.lock_open),
          Icon(Icons.lock_outline),
          Icon(Icons.looks),
          Icon(Icons.looks_3),
          Icon(Icons.looks_4),
          Icon(Icons.looks_5),
          Icon(Icons.looks_6),
          Icon(Icons.looks_one),
          Icon(Icons.looks_two),
          Icon(Icons.loop),
          Icon(Icons.loupe),
          Icon(Icons.low_priority),
          Icon(Icons.loyalty),
          Icon(Icons.mail),
          Icon(Icons.mail_outline),
          Icon(Icons.map),
          Icon(Icons.markunread),
          Icon(Icons.markunread_mailbox),
          Icon(Icons.maximize),
          Icon(Icons.memory),
          Icon(Icons.menu),
          Icon(Icons.merge_type),
          Icon(Icons.message),
          Icon(Icons.mic),
          Icon(Icons.mic_none),
          Icon(Icons.mic_off),
          Icon(Icons.minimize),
          Icon(Icons.missed_video_call),
          Icon(Icons.mms),
          Icon(Icons.mobile_screen_share),
          Icon(Icons.mode_comment),
          Icon(Icons.mode_edit),
          Icon(Icons.monetization_on),
          Icon(Icons.money_off),
          Icon(Icons.monochrome_photos),
          Icon(Icons.mood),
          Icon(Icons.mood_bad),
          Icon(Icons.more),
          Icon(Icons.more_horiz),
          Icon(Icons.more_vert),
          Icon(Icons.motorcycle),
          Icon(Icons.mouse),
          Icon(Icons.move_to_inbox),
          Icon(Icons.movie),
          Icon(Icons.movie_creation),
          Icon(Icons.movie_filter),
          Icon(Icons.multiline_chart),
          Icon(Icons.music_note),
          Icon(Icons.music_video),
          Icon(Icons.my_location),
          Icon(Icons.nature),
          Icon(Icons.nature_people),
          Icon(Icons.navigate_before),
          Icon(Icons.navigate_next),
          Icon(Icons.navigation),
          Icon(Icons.near_me),
          Icon(Icons.network_cell),
          Icon(Icons.network_check),
          Icon(Icons.network_locked),
          Icon(Icons.network_wifi),
          Icon(Icons.new_releases),
          Icon(Icons.next_week),
          Icon(Icons.nfc),
          Icon(Icons.no_encryption),
          Icon(Icons.no_sim),
          Icon(Icons.not_interested),
          Icon(Icons.not_listed_location),
          Icon(Icons.note),
          Icon(Icons.note_add),
          Icon(Icons.notification_important),
          Icon(Icons.notifications),
          Icon(Icons.notifications_active),
          Icon(Icons.notifications_none),
          Icon(Icons.notifications_off),
          Icon(Icons.notifications_paused),
          Icon(Icons.offline_bolt),
          Icon(Icons.offline_pin),
          Icon(Icons.ondemand_video),
          Icon(Icons.opacity),
          Icon(Icons.open_in_browser),
          Icon(Icons.open_in_new),
          Icon(Icons.open_with),
          Icon(Icons.outlined_flag),
          Icon(Icons.pages),
          Icon(Icons.pageview),
          Icon(Icons.palette),
          Icon(Icons.pan_tool),
          Icon(Icons.panorama),
          Icon(Icons.panorama_fish_eye),
          Icon(Icons.panorama_horizontal),
          Icon(Icons.panorama_vertical),
          Icon(Icons.panorama_wide_angle),
          Icon(Icons.party_mode),
          Icon(Icons.pause),
          Icon(Icons.pause_circle_filled),
          Icon(Icons.pause_circle_outline),
          Icon(Icons.payment),
          Icon(Icons.people),
          Icon(Icons.people_outline),
          Icon(Icons.perm_camera_mic),
          Icon(Icons.perm_contact_calendar),
          Icon(Icons.perm_data_setting),
          Icon(Icons.perm_device_information),
          Icon(Icons.perm_identity),
          Icon(Icons.perm_media),
          Icon(Icons.perm_phone_msg),
          Icon(Icons.perm_scan_wifi),
          Icon(Icons.person),
          Icon(Icons.person_add),
          Icon(Icons.person_outline),
          Icon(Icons.person_pin),
          Icon(Icons.person_pin_circle),
          Icon(Icons.personal_video),
          Icon(Icons.pets),
          Icon(Icons.phone),
          Icon(Icons.phone_android),
          Icon(Icons.phone_bluetooth_speaker),
          Icon(Icons.phone_forwarded),
          Icon(Icons.phone_in_talk),
          Icon(Icons.phone_iphone),
          Icon(Icons.phone_locked),
          Icon(Icons.phone_missed),
          Icon(Icons.phone_paused),
          Icon(Icons.phonelink),
          Icon(Icons.phonelink_erase),
          Icon(Icons.phonelink_lock),
          Icon(Icons.phonelink_off),
          Icon(Icons.phonelink_ring),
          Icon(Icons.phonelink_setup),
          Icon(Icons.photo),
          Icon(Icons.photo_album),
          Icon(Icons.photo_camera),
          Icon(Icons.photo_filter),
          Icon(Icons.photo_library),
          Icon(Icons.photo_size_select_actual),
          Icon(Icons.photo_size_select_large),
          Icon(Icons.photo_size_select_small),
          Icon(Icons.picture_as_pdf),
          Icon(Icons.picture_in_picture),
          Icon(Icons.picture_in_picture_alt),
          Icon(Icons.pie_chart),
          Icon(Icons.pie_chart_outlined),
          Icon(Icons.pin_drop),
          Icon(Icons.place),
          Icon(Icons.play_arrow),
          Icon(Icons.play_circle_filled),
          Icon(Icons.play_circle_outline),
          Icon(Icons.play_for_work),
          Icon(Icons.playlist_add),
          Icon(Icons.playlist_add_check),
          Icon(Icons.playlist_play),
          Icon(Icons.plus_one),
          Icon(Icons.poll),
          Icon(Icons.polymer),
          Icon(Icons.pool),
          Icon(Icons.portable_wifi_off),
          Icon(Icons.portrait),
          Icon(Icons.power),
          Icon(Icons.power_input),
          Icon(Icons.power_settings_new),
          Icon(Icons.pregnant_woman),
          Icon(Icons.present_to_all),
          Icon(Icons.print),
          Icon(Icons.priority_high),
          Icon(Icons.public),
          Icon(Icons.publish),
          Icon(Icons.query_builder),
          Icon(Icons.question_answer),
          Icon(Icons.queue),
          Icon(Icons.queue_music),
          Icon(Icons.queue_play_next),
          Icon(Icons.radio),
          Icon(Icons.radio_button_checked),
          Icon(Icons.radio_button_unchecked),
          Icon(Icons.rate_review),
          Icon(Icons.receipt),
          Icon(Icons.recent_actors),
          Icon(Icons.record_voice_over),
          Icon(Icons.redeem),
          Icon(Icons.redo),
          Icon(Icons.refresh),
          Icon(Icons.remove),
          Icon(Icons.remove_circle),
          Icon(Icons.remove_circle_outline),
          Icon(Icons.remove_from_queue),
          Icon(Icons.remove_red_eye),
          Icon(Icons.remove_shopping_cart),
          Icon(Icons.reorder),
          Icon(Icons.repeat),
          Icon(Icons.repeat_one),
          Icon(Icons.replay),
          Icon(Icons.replay_10),
          Icon(Icons.replay_30),
          Icon(Icons.replay_5),
          Icon(Icons.reply),
          Icon(Icons.reply_all),
          Icon(Icons.report),
          Icon(Icons.report_off),
          Icon(Icons.report_problem),
          Icon(Icons.restaurant),
          Icon(Icons.restaurant_menu),
          Icon(Icons.restore),
          Icon(Icons.restore_from_trash),
          Icon(Icons.restore_page),
          Icon(Icons.ring_volume),
          Icon(Icons.room),
          Icon(Icons.room_service),
          Icon(Icons.rotate_90_degrees_ccw),
          Icon(Icons.rotate_left),
          Icon(Icons.rotate_right),
          Icon(Icons.rounded_corner),
          Icon(Icons.router),
          Icon(Icons.rowing),
          Icon(Icons.rss_feed),
          Icon(Icons.rv_hookup),
          Icon(Icons.satellite),
          Icon(Icons.save),
          Icon(Icons.save_alt),
          Icon(Icons.scanner),
          Icon(Icons.scatter_plot),
          Icon(Icons.schedule),
          Icon(Icons.school),
          Icon(Icons.score),
          Icon(Icons.screen_lock_landscape),
          Icon(Icons.screen_lock_portrait),
          Icon(Icons.screen_lock_rotation),
          Icon(Icons.screen_rotation),
          Icon(Icons.screen_share),
          Icon(Icons.sd_card),
          Icon(Icons.sd_storage),
          Icon(Icons.search),
          Icon(Icons.security),
          Icon(Icons.select_all),
          Icon(Icons.send),
          Icon(Icons.sentiment_dissatisfied),
          Icon(Icons.sentiment_neutral),
          Icon(Icons.sentiment_satisfied),
          Icon(Icons.sentiment_very_dissatisfied),
          Icon(Icons.sentiment_very_satisfied),
          Icon(Icons.settings),
          Icon(Icons.settings_applications),
          Icon(Icons.settings_backup_restore),
          Icon(Icons.settings_bluetooth),
          Icon(Icons.settings_brightness),
          Icon(Icons.settings_cell),
          Icon(Icons.settings_ethernet),
          Icon(Icons.settings_input_antenna),
          Icon(Icons.settings_input_component),
          Icon(Icons.settings_input_composite),
          Icon(Icons.settings_input_hdmi),
          Icon(Icons.settings_input_svideo),
          Icon(Icons.settings_overscan),
          Icon(Icons.settings_phone),
          Icon(Icons.settings_power),
          Icon(Icons.settings_remote),
          Icon(Icons.settings_system_daydream),
          Icon(Icons.settings_voice),
          Icon(Icons.share),
          Icon(Icons.shop),
          Icon(Icons.shop_two),
          Icon(Icons.shopping_basket),
          Icon(Icons.shopping_cart),
          Icon(Icons.short_text),
          Icon(Icons.show_chart),
          Icon(Icons.shuffle),
          Icon(Icons.shutter_speed),
          Icon(Icons.signal_cellular_4_bar),
          Icon(Icons.signal_cellular_connected_no_internet_4_bar),
          Icon(Icons.signal_cellular_no_sim),
          Icon(Icons.signal_cellular_null),
          Icon(Icons.signal_cellular_off),
          Icon(Icons.signal_wifi_4_bar),
          Icon(Icons.signal_wifi_4_bar_lock),
          Icon(Icons.signal_wifi_off),
          Icon(Icons.sim_card),
          Icon(Icons.sim_card_alert),
          Icon(Icons.skip_next),
          Icon(Icons.skip_previous),
          Icon(Icons.slideshow),
          Icon(Icons.slow_motion_video),
          Icon(Icons.smartphone),
          Icon(Icons.smoke_free),
          Icon(Icons.smoking_rooms),
          Icon(Icons.sms),
          Icon(Icons.sms_failed),
          Icon(Icons.snooze),
          Icon(Icons.sort),
          Icon(Icons.sort_by_alpha),
          Icon(Icons.spa),
          Icon(Icons.space_bar),
          Icon(Icons.speaker),
          Icon(Icons.speaker_group),
          Icon(Icons.speaker_notes),
          Icon(Icons.speaker_notes_off),
          Icon(Icons.speaker_phone),
          Icon(Icons.spellcheck),
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_half),
          Icon(Icons.stars),
          Icon(Icons.stay_current_landscape),
          Icon(Icons.stay_current_portrait),
          Icon(Icons.stay_primary_landscape),
          Icon(Icons.stay_primary_portrait),
          Icon(Icons.stop),
          Icon(Icons.stop_screen_share),
          Icon(Icons.storage),
          Icon(Icons.store),
          Icon(Icons.store_mall_directory),
          Icon(Icons.straighten),
          Icon(Icons.streetview),
          Icon(Icons.strikethrough_s),
          Icon(Icons.style),
          Icon(Icons.subdirectory_arrow_left),
          Icon(Icons.subdirectory_arrow_right),
          Icon(Icons.subject),
          Icon(Icons.subscriptions),
          Icon(Icons.subtitles),
          Icon(Icons.subway),
          Icon(Icons.supervised_user_circle),
          Icon(Icons.supervisor_account),
          Icon(Icons.surround_sound),
          Icon(Icons.swap_calls),
          Icon(Icons.swap_horiz),
          Icon(Icons.swap_horizontal_circle),
          Icon(Icons.swap_vert),
          Icon(Icons.swap_vertical_circle),
          Icon(Icons.switch_camera),
          Icon(Icons.switch_video),
          Icon(Icons.sync),
          Icon(Icons.sync_disabled),
          Icon(Icons.sync_problem),
          Icon(Icons.system_update),
          Icon(Icons.system_update_alt),
          Icon(Icons.tab),
          Icon(Icons.tab_unselected),
          Icon(Icons.table_chart),
          Icon(Icons.tablet),
          Icon(Icons.tablet_android),
          Icon(Icons.tablet_mac),
          Icon(Icons.tag_faces),
          Icon(Icons.tap_and_play),
          Icon(Icons.terrain),
          Icon(Icons.text_fields),
          Icon(Icons.text_format),
          Icon(Icons.text_rotate_up),
          Icon(Icons.text_rotate_vertical),
          Icon(Icons.text_rotation_angledown),
          Icon(Icons.text_rotation_angleup),
          Icon(Icons.text_rotation_down),
          Icon(Icons.text_rotation_none),
          Icon(Icons.textsms),
          Icon(Icons.texture),
          Icon(Icons.theaters),
          Icon(Icons.thumb_down),
          Icon(Icons.thumb_up),
          Icon(Icons.thumbs_up_down),
          Icon(Icons.time_to_leave),
          Icon(Icons.timelapse),
          Icon(Icons.timeline),
          Icon(Icons.timer),
          Icon(Icons.timer_10),
          Icon(Icons.timer_3),
          Icon(Icons.timer_off),
          Icon(Icons.title),
          Icon(Icons.toc),
          Icon(Icons.today),
          Icon(Icons.toll),
          Icon(Icons.tonality),
          Icon(Icons.touch_app),
          Icon(Icons.toys),
          Icon(Icons.track_changes),
          Icon(Icons.traffic),
          Icon(Icons.train),
          Icon(Icons.tram),
          Icon(Icons.transfer_within_a_station),
          Icon(Icons.transform),
          Icon(Icons.transit_enterexit),
          Icon(Icons.translate),
          Icon(Icons.trending_down),
          Icon(Icons.trending_flat),
          Icon(Icons.trending_up),
          Icon(Icons.trip_origin),
          Icon(Icons.tune),
          Icon(Icons.turned_in),
          Icon(Icons.turned_in_not),
          Icon(Icons.tv),
          Icon(Icons.unarchive),
          Icon(Icons.undo),
          Icon(Icons.unfold_less),
          Icon(Icons.unfold_more),
          Icon(Icons.update),
          Icon(Icons.usb),
          Icon(Icons.verified_user),
          Icon(Icons.vertical_align_bottom),
          Icon(Icons.vertical_align_center),
          Icon(Icons.vertical_align_top),
          Icon(Icons.vibration),
          Icon(Icons.video_call),
          Icon(Icons.video_label),
          Icon(Icons.video_library),
          Icon(Icons.videocam),
          Icon(Icons.videocam_off),
          Icon(Icons.videogame_asset),
          Icon(Icons.view_agenda),
          Icon(Icons.view_array),
          Icon(Icons.view_carousel),
          Icon(Icons.view_column),
          Icon(Icons.view_comfy),
          Icon(Icons.view_compact),
          Icon(Icons.view_day),
          Icon(Icons.view_headline),
          Icon(Icons.view_list),
          Icon(Icons.view_module),
          Icon(Icons.view_quilt),
          Icon(Icons.view_stream),
          Icon(Icons.view_week),
          Icon(Icons.vignette),
          Icon(Icons.visibility),
          Icon(Icons.visibility_off),
          Icon(Icons.voice_chat),
          Icon(Icons.voicemail),
          Icon(Icons.volume_down),
          Icon(Icons.volume_mute),
          Icon(Icons.volume_off),
          Icon(Icons.volume_up),
          Icon(Icons.vpn_key),
          Icon(Icons.vpn_lock),
          Icon(Icons.wallpaper),
          Icon(Icons.warning),
          Icon(Icons.watch),
          Icon(Icons.watch_later),
          Icon(Icons.wb_auto),
          Icon(Icons.wb_cloudy),
          Icon(Icons.wb_incandescent),
          Icon(Icons.wb_iridescent),
          Icon(Icons.wb_sunny),
          Icon(Icons.wc),
          Icon(Icons.web),
          Icon(Icons.web_asset),
          Icon(Icons.weekend),
          Icon(Icons.whatshot),
          Icon(Icons.widgets),
          Icon(Icons.wifi),
          Icon(Icons.wifi_lock),
          Icon(Icons.wifi_tethering),
          Icon(Icons.work),
          Icon(Icons.wrap_text),
          Icon(Icons.youtube_searched_for),
          Icon(Icons.zoom_in),
          Icon(Icons.zoom_out),
          Icon(Icons.zoom_out_map),
        ],
      ),
    );
  }
}
