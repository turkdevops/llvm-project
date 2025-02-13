; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+experimental-v \
; RUN:     -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+experimental-v \
; RUN:     -verify-machineinstrs < %s | FileCheck %s

declare void @llvm.vp.store.nxv1i8.p0nxv1i8(<vscale x 1 x i8>, <vscale x 1 x i8>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i8(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf8, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i8.p0nxv1i8(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i8.p0nxv2i8(<vscale x 2 x i8>, <vscale x 2 x i8>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i8(<vscale x 2 x i8> %val, <vscale x 2 x i8>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf4, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i8.p0nxv2i8(<vscale x 2 x i8> %val, <vscale x 2 x i8>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i8.p0nxv4i8(<vscale x 4 x i8>, <vscale x 4 x i8>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i8(<vscale x 4 x i8> %val, <vscale x 4 x i8>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf2, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i8.p0nxv4i8(<vscale x 4 x i8> %val, <vscale x 4 x i8>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i8.p0nxv8i8(<vscale x 8 x i8>, <vscale x 8 x i8>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i8(<vscale x 8 x i8> %val, <vscale x 8 x i8>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i8:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, m1, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i8.p0nxv8i8(<vscale x 8 x i8> %val, <vscale x 8 x i8>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1i16.p0nxv1i16(<vscale x 1 x i16>, <vscale x 1 x i16>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i16(<vscale x 1 x i16> %val, <vscale x 1 x i16>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i16.p0nxv1i16(<vscale x 1 x i16> %val, <vscale x 1 x i16>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i16.p0nxv2i16(<vscale x 2 x i16>, <vscale x 2 x i16>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i16(<vscale x 2 x i16> %val, <vscale x 2 x i16>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i16.p0nxv2i16(<vscale x 2 x i16> %val, <vscale x 2 x i16>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i16.p0nxv4i16(<vscale x 4 x i16>, <vscale x 4 x i16>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i16(<vscale x 4 x i16> %val, <vscale x 4 x i16>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i16.p0nxv4i16(<vscale x 4 x i16> %val, <vscale x 4 x i16>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i16.p0nxv8i16(<vscale x 8 x i16>, <vscale x 8 x i16>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i16(<vscale x 8 x i16> %val, <vscale x 8 x i16>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i16.p0nxv8i16(<vscale x 8 x i16> %val, <vscale x 8 x i16>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1i32.p0nxv1i32(<vscale x 1 x i32>, <vscale x 1 x i32>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i32(<vscale x 1 x i32> %val, <vscale x 1 x i32>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, mf2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i32.p0nxv1i32(<vscale x 1 x i32> %val, <vscale x 1 x i32>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i32.p0nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i32>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i32(<vscale x 2 x i32> %val, <vscale x 2 x i32>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m1, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i32.p0nxv2i32(<vscale x 2 x i32> %val, <vscale x 2 x i32>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i32>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i32(<vscale x 4 x i32> %val, <vscale x 4 x i32>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i32.p0nxv4i32(<vscale x 4 x i32> %val, <vscale x 4 x i32>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i32.p0nxv8i32(<vscale x 8 x i32>, <vscale x 8 x i32>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i32(<vscale x 8 x i32> %val, <vscale x 8 x i32>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m4, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i32.p0nxv8i32(<vscale x 8 x i32> %val, <vscale x 8 x i32>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1i64.p0nxv1i64(<vscale x 1 x i64>, <vscale x 1 x i64>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1i64(<vscale x 1 x i64> %val, <vscale x 1 x i64>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m1, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1i64.p0nxv1i64(<vscale x 1 x i64> %val, <vscale x 1 x i64>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2i64.p0nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i64>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2i64(<vscale x 2 x i64> %val, <vscale x 2 x i64>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2i64.p0nxv2i64(<vscale x 2 x i64> %val, <vscale x 2 x i64>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4i64.p0nxv4i64(<vscale x 4 x i64>, <vscale x 4 x i64>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4i64(<vscale x 4 x i64> %val, <vscale x 4 x i64>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m4, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4i64.p0nxv4i64(<vscale x 4 x i64> %val, <vscale x 4 x i64>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8i64.p0nxv8i64(<vscale x 8 x i64>, <vscale x 8 x i64>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8i64(<vscale x 8 x i64> %val, <vscale x 8 x i64>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8i64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8i64.p0nxv8i64(<vscale x 8 x i64> %val, <vscale x 8 x i64>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1f16.p0nxv1f16(<vscale x 1 x half>, <vscale x 1 x half>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1f16(<vscale x 1 x half> %val, <vscale x 1 x half>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf4, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1f16.p0nxv1f16(<vscale x 1 x half> %val, <vscale x 1 x half>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2f16.p0nxv2f16(<vscale x 2 x half>, <vscale x 2 x half>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2f16(<vscale x 2 x half> %val, <vscale x 2 x half>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, mf2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2f16.p0nxv2f16(<vscale x 2 x half> %val, <vscale x 2 x half>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4f16.p0nxv4f16(<vscale x 4 x half>, <vscale x 4 x half>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4f16(<vscale x 4 x half> %val, <vscale x 4 x half>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m1, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4f16.p0nxv4f16(<vscale x 4 x half> %val, <vscale x 4 x half>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8f16.p0nxv8f16(<vscale x 8 x half>, <vscale x 8 x half>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8f16(<vscale x 8 x half> %val, <vscale x 8 x half>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e16, m2, ta, mu
; CHECK-NEXT:    vse16.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8f16.p0nxv8f16(<vscale x 8 x half> %val, <vscale x 8 x half>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1f32.p0nxv1f32(<vscale x 1 x float>, <vscale x 1 x float>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1f32(<vscale x 1 x float> %val, <vscale x 1 x float>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, mf2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1f32.p0nxv1f32(<vscale x 1 x float> %val, <vscale x 1 x float>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2f32.p0nxv2f32(<vscale x 2 x float>, <vscale x 2 x float>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2f32(<vscale x 2 x float> %val, <vscale x 2 x float>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m1, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2f32.p0nxv2f32(<vscale x 2 x float> %val, <vscale x 2 x float>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4f32.p0nxv4f32(<vscale x 4 x float>, <vscale x 4 x float>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4f32(<vscale x 4 x float> %val, <vscale x 4 x float>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m2, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4f32.p0nxv4f32(<vscale x 4 x float> %val, <vscale x 4 x float>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8f32.p0nxv8f32(<vscale x 8 x float>, <vscale x 8 x float>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8f32(<vscale x 8 x float> %val, <vscale x 8 x float>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e32, m4, ta, mu
; CHECK-NEXT:    vse32.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8f32.p0nxv8f32(<vscale x 8 x float> %val, <vscale x 8 x float>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv1f64.p0nxv1f64(<vscale x 1 x double>, <vscale x 1 x double>*, <vscale x 1 x i1>, i32)

define void @vpstore_nxv1f64(<vscale x 1 x double> %val, <vscale x 1 x double>* %ptr, <vscale x 1 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m1, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv1f64.p0nxv1f64(<vscale x 1 x double> %val, <vscale x 1 x double>* %ptr, <vscale x 1 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv2f64.p0nxv2f64(<vscale x 2 x double>, <vscale x 2 x double>*, <vscale x 2 x i1>, i32)

define void @vpstore_nxv2f64(<vscale x 2 x double> %val, <vscale x 2 x double>* %ptr, <vscale x 2 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv2f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m2, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv2f64.p0nxv2f64(<vscale x 2 x double> %val, <vscale x 2 x double>* %ptr, <vscale x 2 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv4f64.p0nxv4f64(<vscale x 4 x double>, <vscale x 4 x double>*, <vscale x 4 x i1>, i32)

define void @vpstore_nxv4f64(<vscale x 4 x double> %val, <vscale x 4 x double>* %ptr, <vscale x 4 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv4f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m4, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv4f64.p0nxv4f64(<vscale x 4 x double> %val, <vscale x 4 x double>* %ptr, <vscale x 4 x i1> %m, i32 %evl)
  ret void
}

declare void @llvm.vp.store.nxv8f64.p0nxv8f64(<vscale x 8 x double>, <vscale x 8 x double>*, <vscale x 8 x i1>, i32)

define void @vpstore_nxv8f64(<vscale x 8 x double> %val, <vscale x 8 x double>* %ptr, <vscale x 8 x i1> %m, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv8f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e64, m8, ta, mu
; CHECK-NEXT:    vse64.v v8, (a0), v0.t
; CHECK-NEXT:    ret
  call void @llvm.vp.store.nxv8f64.p0nxv8f64(<vscale x 8 x double> %val, <vscale x 8 x double>* %ptr, <vscale x 8 x i1> %m, i32 %evl)
  ret void
}

define void @vpstore_nxv1i8_allones_mask(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, i32 zeroext %evl) {
; CHECK-LABEL: vpstore_nxv1i8_allones_mask:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetvli zero, a1, e8, mf8, ta, mu
; CHECK-NEXT:    vse8.v v8, (a0)
; CHECK-NEXT:    ret
  %a = insertelement <vscale x 1 x i1> undef, i1 true, i32 0
  %b = shufflevector <vscale x 1 x i1> %a, <vscale x 1 x i1> poison, <vscale x 1 x i32> zeroinitializer
  call void @llvm.vp.store.nxv1i8.p0nxv1i8(<vscale x 1 x i8> %val, <vscale x 1 x i8>* %ptr, <vscale x 1 x i1> %b, i32 %evl)
  ret void
}
