คะแนนหลังจากวางใส่แผง Cancvas แล้วอยู่ใน FloristryScore
ต้องตั้ง Autoload : FloristryScore.gd -> โหนดเป็น "floristryScore"

FlowerBucket จะดึงรายการดอกไม้มาจาก BagManager มาเรนเดอร์ FlowerCard
FlowerCard เมื่อถูกคลิกจะสร้าง FlowerBody ขึ้นมาให้ตามเมาส์ เอาไปวางใน Canvas

มีการแก้ FlowerData.gd เพื่อเพิ่ม bodyImage ไว้แสดงผล ก็อปพวก _data.tres ไปทับได้เลย (กับมีอัปรูปใหม่ที่แก้พื้นหลัง)

แสดงคะแนทำง่ายๆ คลิก ซ่อนแสดง Panel Node
