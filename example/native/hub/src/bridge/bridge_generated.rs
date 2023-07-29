#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.79.0.

use crate::bridge::api::*;
use bridge_engine::rust2dart::IntoIntoDart;
use bridge_engine::*;
use core::panic::UnwindSafe;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

use crate::bridge::api::RustOperation;
use crate::bridge::api::RustRequest;
use crate::bridge::api::RustRequestUnique;
use crate::bridge::api::RustResponse;
use crate::bridge::api::RustResponseUnique;
use crate::bridge::api::RustSignal;

// Section: wire functions

fn wire_prepare_rust_signal_stream_impl(port_: MessagePort) {
    FRB_HANDLER.wrap::<_, _, _, ()>(
        WrapInfo {
            debug_name: "prepare_rust_signal_stream",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || {
            move |task_callback| {
                Ok(prepare_rust_signal_stream(
                    task_callback.stream_sink::<_, RustSignal>(),
                ))
            }
        },
    )
}
fn wire_prepare_rust_response_stream_impl(port_: MessagePort) {
    FRB_HANDLER.wrap::<_, _, _, ()>(
        WrapInfo {
            debug_name: "prepare_rust_response_stream",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || {
            move |task_callback| {
                Ok(prepare_rust_response_stream(
                    task_callback.stream_sink::<_, RustResponseUnique>(),
                ))
            }
        },
    )
}
fn wire_prepare_channels_impl() -> support::WireSyncReturn {
    FRB_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "prepare_channels",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || Ok(prepare_channels()),
    )
}
fn wire_check_rust_streams_impl(port_: MessagePort) {
    FRB_HANDLER.wrap::<_, _, _, bool>(
        WrapInfo {
            debug_name: "check_rust_streams",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(check_rust_streams()),
    )
}
fn wire_start_rust_logic_impl(port_: MessagePort) {
    FRB_HANDLER.wrap::<_, _, _, ()>(
        WrapInfo {
            debug_name: "start_rust_logic",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(start_rust_logic()),
    )
}
fn wire_request_to_rust_impl(
    request_unique: impl Wire2Api<RustRequestUnique> + UnwindSafe,
) -> support::WireSyncReturn {
    FRB_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "request_to_rust",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_request_unique = request_unique.wire2api();
            Ok(request_to_rust(api_request_unique))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}
impl Wire2Api<RustOperation> for i32 {
    fn wire2api(self) -> RustOperation {
        match self {
            0 => RustOperation::Create,
            1 => RustOperation::Read,
            2 => RustOperation::Update,
            3 => RustOperation::Delete,
            _ => unreachable!("Invalid variant for RustOperation: {}", self),
        }
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for RustResponse {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.successful.into_into_dart().into_dart(),
            self.bytes.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for RustResponse {}
impl rust2dart::IntoIntoDart<RustResponse> for RustResponse {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for RustResponseUnique {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.id.into_into_dart().into_dart(),
            self.response.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for RustResponseUnique {}
impl rust2dart::IntoIntoDart<RustResponseUnique> for RustResponseUnique {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for RustSignal {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.address.into_into_dart().into_dart(),
            self.bytes.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for RustSignal {}
impl rust2dart::IntoIntoDart<RustSignal> for RustSignal {
    fn into_into_dart(self) -> Self {
        self
    }
}

// Section: executor

support::lazy_static! {
    pub static ref FRB_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
mod io {
    use super::*;
    // Section: wire functions

    #[no_mangle]
    pub extern "C" fn wire_prepare_rust_signal_stream(port_: i64) {
        wire_prepare_rust_signal_stream_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_prepare_rust_response_stream(port_: i64) {
        wire_prepare_rust_response_stream_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_prepare_channels() -> support::WireSyncReturn {
        wire_prepare_channels_impl()
    }

    #[no_mangle]
    pub extern "C" fn wire_check_rust_streams(port_: i64) {
        wire_check_rust_streams_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_start_rust_logic(port_: i64) {
        wire_start_rust_logic_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_request_to_rust(
        request_unique: *mut wire_RustRequestUnique,
    ) -> support::WireSyncReturn {
        wire_request_to_rust_impl(request_unique)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_rust_request_unique_0() -> *mut wire_RustRequestUnique {
        support::new_leak_box_ptr(wire_RustRequestUnique::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
        let ans = wire_uint_8_list {
            ptr: support::new_leak_vec_ptr(Default::default(), len),
            len,
        };
        support::new_leak_box_ptr(ans)
    }

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for *mut wire_uint_8_list {
        fn wire2api(self) -> String {
            let vec: Vec<u8> = self.wire2api();
            String::from_utf8_lossy(&vec).into_owned()
        }
    }
    impl Wire2Api<RustRequestUnique> for *mut wire_RustRequestUnique {
        fn wire2api(self) -> RustRequestUnique {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<RustRequestUnique>::wire2api(*wrap).into()
        }
    }

    impl Wire2Api<RustRequest> for wire_RustRequest {
        fn wire2api(self) -> RustRequest {
            RustRequest {
                address: self.address.wire2api(),
                operation: self.operation.wire2api(),
                bytes: self.bytes.wire2api(),
            }
        }
    }
    impl Wire2Api<RustRequestUnique> for wire_RustRequestUnique {
        fn wire2api(self) -> RustRequestUnique {
            RustRequestUnique {
                id: self.id.wire2api(),
                request: self.request.wire2api(),
            }
        }
    }

    impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
        fn wire2api(self) -> Vec<u8> {
            unsafe {
                let wrap = support::box_from_leak_ptr(self);
                support::vec_from_leak_ptr(wrap.ptr, wrap.len)
            }
        }
    }
    // Section: wire structs

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_RustRequest {
        address: *mut wire_uint_8_list,
        operation: i32,
        bytes: *mut wire_uint_8_list,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_RustRequestUnique {
        id: i32,
        request: wire_RustRequest,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_uint_8_list {
        ptr: *mut u8,
        len: i32,
    }

    // Section: impl NewWithNullPtr

    pub trait NewWithNullPtr {
        fn new_with_null_ptr() -> Self;
    }

    impl<T> NewWithNullPtr for *mut T {
        fn new_with_null_ptr() -> Self {
            std::ptr::null_mut()
        }
    }

    impl NewWithNullPtr for wire_RustRequest {
        fn new_with_null_ptr() -> Self {
            Self {
                address: core::ptr::null_mut(),
                operation: Default::default(),
                bytes: core::ptr::null_mut(),
            }
        }
    }

    impl Default for wire_RustRequest {
        fn default() -> Self {
            Self::new_with_null_ptr()
        }
    }

    impl NewWithNullPtr for wire_RustRequestUnique {
        fn new_with_null_ptr() -> Self {
            Self {
                id: Default::default(),
                request: Default::default(),
            }
        }
    }

    impl Default for wire_RustRequestUnique {
        fn default() -> Self {
            Self::new_with_null_ptr()
        }
    }

    // Section: sync execution mode utility

    #[no_mangle]
    pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
        unsafe {
            let _ = support::box_from_leak_ptr(ptr);
        };
    }
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;
