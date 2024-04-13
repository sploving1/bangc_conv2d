if [ ! -d "build" ]; then
  echo "Please run build.sh to compile the source code first!"
fi
echo "Runing conv2d with float32 type"
./build/conv2d_f32
echo "Runing conv2d with float16 type"
./build/conv2d_f16
echo "Runing conv2d with bfloat16 type"
./build/conv2d_bf16
echo "Runing conv2d with int16 type"
./build/conv2d_int16
echo "Runing conv2d with int8 type"
./build/conv2d_int8
echo "Runing conv2d with int4 type"
./build/conv2d_int4

