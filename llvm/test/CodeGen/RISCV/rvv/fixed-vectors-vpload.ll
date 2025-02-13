; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+experimental-v -riscv-v-vector-bits-min=128 \
; RUN:   -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+experimental-v -riscv-v-vector-bits-min=128 \
; RUN:   -verify-machineinstrs < %s | FileCheck %s

declare <2 x i8> @llvm.vp.load.v2i8.p0v2i8(<2 x i8>*, <2 x i1>, i32)

define <2 x i8> @vpload_v2i8(<2 x i8>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf8, ta, mu
; CHECK-NEXT:    vle8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x i8> @llvm.vp.load.v2i8.p0v2i8(<2 x i8>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x i8> %load
}

declare <4 x i8> @llvm.vp.load.v4i8.p0v4i8(<4 x i8>*, <4 x i1>, i32)

define <4 x i8> @vpload_v4i8(<4 x i8>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf4, ta, mu
; CHECK-NEXT:    vle8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x i8> @llvm.vp.load.v4i8.p0v4i8(<4 x i8>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x i8> %load
}

define <4 x i8> @vpload_v4i8_allones_mask(<4 x i8>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4i8_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf4, ta, mu
; CHECK-NEXT:    vle8.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <4 x i1> undef, i1 true, i32 0
  %b = shufflevector <4 x i1> %a, <4 x i1> poison, <4 x i32> zeroinitializer
  %load = call <4 x i8> @llvm.vp.load.v4i8.p0v4i8(<4 x i8>* %ptr, <4 x i1> %b, i32 %evl)
  ret <4 x i8> %load
}

declare <8 x i8> @llvm.vp.load.v8i8.p0v8i8(<8 x i8>*, <8 x i1>, i32)

define <8 x i8> @vpload_v8i8(<8 x i8>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf2, ta, mu
; CHECK-NEXT:    vle8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x i8> @llvm.vp.load.v8i8.p0v8i8(<8 x i8>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x i8> %load
}

declare <2 x i16> @llvm.vp.load.v2i16.p0v2i16(<2 x i16>*, <2 x i1>, i32)

define <2 x i16> @vpload_v2i16(<2 x i16>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x i16> @llvm.vp.load.v2i16.p0v2i16(<2 x i16>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x i16> %load
}

declare <4 x i16> @llvm.vp.load.v4i16.p0v4i16(<4 x i16>*, <4 x i1>, i32)

define <4 x i16> @vpload_v4i16(<4 x i16>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf2, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x i16> @llvm.vp.load.v4i16.p0v4i16(<4 x i16>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x i16> %load
}

declare <8 x i16> @llvm.vp.load.v8i16.p0v8i16(<8 x i16>*, <8 x i1>, i32)

define <8 x i16> @vpload_v8i16(<8 x i16>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x i16> @llvm.vp.load.v8i16.p0v8i16(<8 x i16>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x i16> %load
}

define <8 x i16> @vpload_v8i16_allones_mask(<8 x i16>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8i16_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <8 x i1> undef, i1 true, i32 0
  %b = shufflevector <8 x i1> %a, <8 x i1> poison, <8 x i32> zeroinitializer
  %load = call <8 x i16> @llvm.vp.load.v8i16.p0v8i16(<8 x i16>* %ptr, <8 x i1> %b, i32 %evl)
  ret <8 x i16> %load
}

declare <2 x i32> @llvm.vp.load.v2i32.p0v2i32(<2 x i32>*, <2 x i1>, i32)

define <2 x i32> @vpload_v2i32(<2 x i32>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, mf2, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x i32> @llvm.vp.load.v2i32.p0v2i32(<2 x i32>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x i32> %load
}

declare <4 x i32> @llvm.vp.load.v4i32.p0v4i32(<4 x i32>*, <4 x i1>, i32)

define <4 x i32> @vpload_v4i32(<4 x i32>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m1, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x i32> @llvm.vp.load.v4i32.p0v4i32(<4 x i32>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x i32> %load
}

declare <8 x i32> @llvm.vp.load.v8i32.p0v8i32(<8 x i32>*, <8 x i1>, i32)

define <8 x i32> @vpload_v8i32(<8 x i32>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x i32> @llvm.vp.load.v8i32.p0v8i32(<8 x i32>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x i32> %load
}

define <8 x i32> @vpload_v8i32_allones_mask(<8 x i32>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8i32_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <8 x i1> undef, i1 true, i32 0
  %b = shufflevector <8 x i1> %a, <8 x i1> poison, <8 x i32> zeroinitializer
  %load = call <8 x i32> @llvm.vp.load.v8i32.p0v8i32(<8 x i32>* %ptr, <8 x i1> %b, i32 %evl)
  ret <8 x i32> %load
}

declare <2 x i64> @llvm.vp.load.v2i64.p0v2i64(<2 x i64>*, <2 x i1>, i32)

define <2 x i64> @vpload_v2i64(<2 x i64>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m1, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x i64> @llvm.vp.load.v2i64.p0v2i64(<2 x i64>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x i64> %load
}

declare <4 x i64> @llvm.vp.load.v4i64.p0v4i64(<4 x i64>*, <4 x i1>, i32)

define <4 x i64> @vpload_v4i64(<4 x i64>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x i64> @llvm.vp.load.v4i64.p0v4i64(<4 x i64>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x i64> %load
}

define <4 x i64> @vpload_v4i64_allones_mask(<4 x i64>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4i64_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <4 x i1> undef, i1 true, i32 0
  %b = shufflevector <4 x i1> %a, <4 x i1> poison, <4 x i32> zeroinitializer
  %load = call <4 x i64> @llvm.vp.load.v4i64.p0v4i64(<4 x i64>* %ptr, <4 x i1> %b, i32 %evl)
  ret <4 x i64> %load
}

declare <8 x i64> @llvm.vp.load.v8i64.p0v8i64(<8 x i64>*, <8 x i1>, i32)

define <8 x i64> @vpload_v8i64(<8 x i64>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m4, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x i64> @llvm.vp.load.v8i64.p0v8i64(<8 x i64>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x i64> %load
}

declare <2 x half> @llvm.vp.load.v2f16.p0v2f16(<2 x half>*, <2 x i1>, i32)

define <2 x half> @vpload_v2f16(<2 x half>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x half> @llvm.vp.load.v2f16.p0v2f16(<2 x half>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x half> %load
}

define <2 x half> @vpload_v2f16_allones_mask(<2 x half>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2f16_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <2 x i1> undef, i1 true, i32 0
  %b = shufflevector <2 x i1> %a, <2 x i1> poison, <2 x i32> zeroinitializer
  %load = call <2 x half> @llvm.vp.load.v2f16.p0v2f16(<2 x half>* %ptr, <2 x i1> %b, i32 %evl)
  ret <2 x half> %load
}

declare <4 x half> @llvm.vp.load.v4f16.p0v4f16(<4 x half>*, <4 x i1>, i32)

define <4 x half> @vpload_v4f16(<4 x half>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf2, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x half> @llvm.vp.load.v4f16.p0v4f16(<4 x half>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x half> %load
}

declare <8 x half> @llvm.vp.load.v8f16.p0v8f16(<8 x half>*, <8 x i1>, i32)

define <8 x half> @vpload_v8f16(<8 x half>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vle16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x half> @llvm.vp.load.v8f16.p0v8f16(<8 x half>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x half> %load
}

declare <2 x float> @llvm.vp.load.v2f32.p0v2f32(<2 x float>*, <2 x i1>, i32)

define <2 x float> @vpload_v2f32(<2 x float>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, mf2, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x float> @llvm.vp.load.v2f32.p0v2f32(<2 x float>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x float> %load
}

declare <4 x float> @llvm.vp.load.v4f32.p0v4f32(<4 x float>*, <4 x i1>, i32)

define <4 x float> @vpload_v4f32(<4 x float>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m1, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x float> @llvm.vp.load.v4f32.p0v4f32(<4 x float>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x float> %load
}

declare <8 x float> @llvm.vp.load.v8f32.p0v8f32(<8 x float>*, <8 x i1>, i32)

define <8 x float> @vpload_v8f32(<8 x float>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x float> @llvm.vp.load.v8f32.p0v8f32(<8 x float>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x float> %load
}

define <8 x float> @vpload_v8f32_allones_mask(<8 x float>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8f32_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vle32.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <8 x i1> undef, i1 true, i32 0
  %b = shufflevector <8 x i1> %a, <8 x i1> poison, <8 x i32> zeroinitializer
  %load = call <8 x float> @llvm.vp.load.v8f32.p0v8f32(<8 x float>* %ptr, <8 x i1> %b, i32 %evl)
  ret <8 x float> %load
}

declare <2 x double> @llvm.vp.load.v2f64.p0v2f64(<2 x double>*, <2 x i1>, i32)

define <2 x double> @vpload_v2f64(<2 x double>* %ptr, <2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v2f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m1, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <2 x double> @llvm.vp.load.v2f64.p0v2f64(<2 x double>* %ptr, <2 x i1> %m, i32 %evl)
  ret <2 x double> %load
}

declare <4 x double> @llvm.vp.load.v4f64.p0v4f64(<4 x double>*, <4 x i1>, i32)

define <4 x double> @vpload_v4f64(<4 x double>* %ptr, <4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <4 x double> @llvm.vp.load.v4f64.p0v4f64(<4 x double>* %ptr, <4 x i1> %m, i32 %evl)
  ret <4 x double> %load
}

define <4 x double> @vpload_v4f64_allones_mask(<4 x double>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v4f64_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <4 x i1> undef, i1 true, i32 0
  %b = shufflevector <4 x i1> %a, <4 x i1> poison, <4 x i32> zeroinitializer
  %load = call <4 x double> @llvm.vp.load.v4f64.p0v4f64(<4 x double>* %ptr, <4 x i1> %b, i32 %evl)
  ret <4 x double> %load
}

declare <8 x double> @llvm.vp.load.v8f64.p0v8f64(<8 x double>*, <8 x i1>, i32)

define <8 x double> @vpload_v8f64(<8 x double>* %ptr, <8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpload_v8f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m4, ta, mu
; CHECK-NEXT:    vle64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  %load = call <8 x double> @llvm.vp.load.v8f64.p0v8f64(<8 x double>* %ptr, <8 x i1> %m, i32 %evl)
  ret <8 x double> %load
}
