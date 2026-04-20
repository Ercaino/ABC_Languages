/*
 * Hello World in ActionScript 3
 * Requirements: Adobe AIR SDK or Apache Flex SDK
 * Execution: mxmlc helloWorld_ActionScript.as
 */

package {
    import flash.display.Sprite;
    import flash.text.TextField;

    public class helloWorld_ActionScript extends Sprite {
        public function helloWorld_ActionScript() {
            // Create a text field to display the message
            var textField:TextField = new TextField();
            textField.text = "Hello, World!";
            addChild(textField);
            
            // Also output to the trace log for debugging
            trace("Hello, World!");
        }
    }
}
