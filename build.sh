if [ ! -d "build" ]; then
  mkdir build
fi
echo "Building conv2d with float32 type ..."
cncc conv2d_float32.mlu -o build/conv2d_f32 -O3 --bang-mlu-arch=mtp_372
echo "Building conv2d with float16 type ..."
cncc conv2d_float16.mlu -o build/conv2d_f16 -O3 --bang-mlu-arch=mtp_372
echo "Building conv2d with bfloat16 type ..."
cncc conv2d_bf16.mlu -o build/conv2d_bf16 -O3 --bang-mlu-arch=mtp_372
echo "Building conv2d with int16 type ..."
cncc conv2d_int16.mlu -o build/conv2d_int16 -O3 --bang-mlu-arch=mtp_372
echo "Building conv2d with int8 type ..."
cncc conv2d_int8.mlu -o build/conv2d_int8 -O3 --bang-mlu-arch=mtp_372
echo "Building conv2d with int4 type ..."
cncc conv2d_int4.mlu -o build/conv2d_int4 -O3 --bang-mlu-arch=mtp_372

