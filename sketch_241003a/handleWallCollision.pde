void handleWallCollision() {
  if (blueKirbyX < 50 * ratio || blueKirbyX > width - 50 * ratio)
    blueKirbyVX = -blueKirbyVX;
  if (blueKirbyY < 50 * ratio || blueKirbyY > height - 50 * ratio)
    blueKirbyVY = -blueKirbyVY;
  if (pinkyKirbyX < 50 * ratio || pinkyKirbyX > width - 50 * ratio)
    pinkyKirbyVX = -pinkyKirbyVX;
  if (pinkyKirbyY < 50 * ratio || pinkyKirbyY > height - 50 * ratio)
    pinkyKirbyVY = -pinkyKirbyVY;
  if (gearX < 60 * ratio || gearX > width - 60 * ratio)
    gearVX = -gearVX;
  if (gearY < 60 * ratio || gearY > height - 60 * ratio)
    gearVY = -gearVY;
}
