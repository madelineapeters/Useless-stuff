library(rgl)
plot3d(x=offspring_map_350$X_pos, y=offspring_map_350$Y_pos, z=offspring_map_350$FLday, col="darkgreen", size=3, xlab="X position", ylab="Y position", zlab="Flowering day")
dir.create("animation")
for (i in 1:90) {
  view3d(userMatrix=rotationMatrix(2*pi * i/90, 1, -1, 1))
  rgl.snapshot(filename=paste("animation/frame-",
                              sprintf("%03d", i), ".png", sep=""))
}