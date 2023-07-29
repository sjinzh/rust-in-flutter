// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.79.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_web_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'bridge_engine/exports.dart';
import 'package:uuid/uuid.dart';
import 'bridge_web_generated.dart';
export 'bridge_web_generated.dart';
import 'dart:ffi' as ffi;

class BridgeWebPlatform extends FlutterRustBridgeBase<BridgeWebWire> {
  BridgeWebPlatform(ffi.DynamicLibrary dylib) : super(BridgeWebWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_RustRequestUnique> api2wire_box_autoadd_rust_request_unique(
      RustRequestUnique raw) {
    final ptr = inner.new_box_autoadd_rust_request_unique_0();
    _api_fill_to_wire_rust_request_unique(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_rust_request_unique(
      RustRequestUnique apiObj, ffi.Pointer<wire_RustRequestUnique> wireObj) {
    _api_fill_to_wire_rust_request_unique(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_rust_request(
      RustRequest apiObj, wire_RustRequest wireObj) {
    wireObj.address = api2wire_String(apiObj.address);
    wireObj.operation = api2wire_rust_operation(apiObj.operation);
    wireObj.bytes = api2wire_uint_8_list(apiObj.bytes);
  }

  void _api_fill_to_wire_rust_request_unique(
      RustRequestUnique apiObj, wire_RustRequestUnique wireObj) {
    wireObj.id = api2wire_i32(apiObj.id);
    _api_fill_to_wire_rust_request(apiObj.request, wireObj.request);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class BridgeWebWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  BridgeWebWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  BridgeWebWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_prepare_rust_signal_stream(
    int port_,
  ) {
    return _wire_prepare_rust_signal_stream(
      port_,
    );
  }

  late final _wire_prepare_rust_signal_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_rust_signal_stream');
  late final _wire_prepare_rust_signal_stream =
      _wire_prepare_rust_signal_streamPtr.asFunction<void Function(int)>();

  void wire_prepare_rust_response_stream(
    int port_,
  ) {
    return _wire_prepare_rust_response_stream(
      port_,
    );
  }

  late final _wire_prepare_rust_response_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_rust_response_stream');
  late final _wire_prepare_rust_response_stream =
      _wire_prepare_rust_response_streamPtr.asFunction<void Function(int)>();

  void wire_prepare_channels(
    int port_,
  ) {
    return _wire_prepare_channels(
      port_,
    );
  }

  late final _wire_prepare_channelsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_channels');
  late final _wire_prepare_channels =
      _wire_prepare_channelsPtr.asFunction<void Function(int)>();

  void wire_check_rust_streams(
    int port_,
  ) {
    return _wire_check_rust_streams(
      port_,
    );
  }

  late final _wire_check_rust_streamsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_check_rust_streams');
  late final _wire_check_rust_streams =
      _wire_check_rust_streamsPtr.asFunction<void Function(int)>();

  void wire_start_rust_logic(
    int port_,
  ) {
    return _wire_start_rust_logic(
      port_,
    );
  }

  late final _wire_start_rust_logicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_start_rust_logic');
  late final _wire_start_rust_logic =
      _wire_start_rust_logicPtr.asFunction<void Function(int)>();

  void wire_request_to_rust(
    int port_,
    ffi.Pointer<wire_RustRequestUnique> request_unique,
  ) {
    return _wire_request_to_rust(
      port_,
      request_unique,
    );
  }

  late final _wire_request_to_rustPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_RustRequestUnique>)>>('wire_request_to_rust');
  late final _wire_request_to_rust = _wire_request_to_rustPtr
      .asFunction<void Function(int, ffi.Pointer<wire_RustRequestUnique>)>();

  ffi.Pointer<wire_RustRequestUnique> new_box_autoadd_rust_request_unique_0() {
    return _new_box_autoadd_rust_request_unique_0();
  }

  late final _new_box_autoadd_rust_request_unique_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_RustRequestUnique> Function()>>(
      'new_box_autoadd_rust_request_unique_0');
  late final _new_box_autoadd_rust_request_unique_0 =
      _new_box_autoadd_rust_request_unique_0Ptr
          .asFunction<ffi.Pointer<wire_RustRequestUnique> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_RustRequest extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> address;

  @ffi.Int32()
  external int operation;

  external ffi.Pointer<wire_uint_8_list> bytes;
}

final class wire_RustRequestUnique extends ffi.Struct {
  @ffi.Int32()
  external int id;

  external wire_RustRequest request;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
