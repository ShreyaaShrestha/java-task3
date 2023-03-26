<%@ page import = "java.util.Stack" %>

<!DOCTYPE html>
<html>
<head>
	<title>Prefix Algorithm</title>
</head>
<body>
	<form method="post">
		<label for="expr">Enter Expression:</label>
		<input type="text" name="expr" id="expr" required>
		<button type="submit">Evaluate</button>
	</form>
</body>
</html>

<%
	if(request.getMethod().equals("POST")) {
		s
	    String input = request.getParameter("expr");
	    Stack<Character> stack = new Stack<>();
	    
	    // Loop through each character in the input string
	    for (int i = 0; i < input.length(); i++) {
	        char c = input.charAt(i);
	        
	        // If the character is an opening bracket, push it onto the stack
	        if (c == '(' || c == '[' || c == '{') {
	            stack.push(c);
	        }
	        
	        // If the character is a closing bracket, check if the top of the stack is a matching opening bracket
	        else if (c == ')' || c == ']' || c == '}') {
	            if (stack.isEmpty()) {
	                out.println("Unbalanced brackets");
	                break;
	            }
	            char top = stack.pop();
	            if ((c == ')' && top != '(') || (c == ']' && top != '[') || (c == '}' && top != '{')) {
	                out.println("Unbalanced brackets");
	                break;
	            }
	        }
	    }
	    
	    // If the stack is not empty, there are unmatched opening brackets
	    if (!stack.isEmpty()) {
	        out.println("Unbalanced brackets");
	    } else {
	        out.println("Balanced brackets");
	    }
	}
%> 