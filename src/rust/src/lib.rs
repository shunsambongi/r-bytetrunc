#![feature(round_char_boundary)]
use extendr_api::prelude::*;

#[extendr]
fn byte_trunc_(string: Vec<String>, size: u32) -> Vec<String> {
    let size: usize = size.try_into().unwrap();
    string
        .into_iter()
        .map(|mut s| {
            s.truncate(s.floor_char_boundary(size));
            s
        })
        .collect()
}

// Macro to generate exports.
// This ensures exported functions are registered with R.
// See corresponding C code in `entrypoint.c`.
extendr_module! {
    mod bytetrunc;
    fn byte_trunc_;
}
