void main() {
  // Create an instance (object) of the Area class.
  Area area = Area();
  // The following line is commented out, so 'area.height' remains null.
  // area.height = 10;
  // Call the rectAngle method on the 'area' object to calculate and print the area.
  area.rectAngle();
}

class Area {

  // Declare a nullable double variable to store the height. It can hold a double value or null.
  double? height;
  double? width;

  // Method to calculate and print the area of a rectangle.
  void rectAngle() {
    // Print the current value of the 'width' property. It will be null since it hasn't been assigned a value.
    print("width is : $width");
    print("height is :$height");

    // Use a try-catch block to handle potential errors that might occur if width or height are null.
    try {
      // Use the null-aware operator '??' to provide a default value of 0 if 'width' is null.
      double tempwidth = width ?? 0;
      // Use the null-aware operator '??' to provide a default value of 0 if 'height' is null.
      double tempheight = height ?? 0;

      // Calculate the area using the temporary non-nullable variables.
      // The '!' operator is used here to assert that 'tempheight' and 'tempwidth' are not null
      // because we've provided a default value using '??'.
      double area = tempheight! * tempwidth!;
      // Print the calculated area.
      print("area is " + area.toString());
    } catch (e) {
      // If any error occurs within the try block (though unlikely with the '??' operator),
      // this catch block will execute. However, in this case, it simply captures the error 'e'
      // but doesn't do anything with it. It might be better to log or print the error for debugging.
      e;
    }
  }
}