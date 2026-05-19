package com.Neighborly.service;

public class PollService {
	
	public String validatePoll(String title, String description, String option1, String option2) {

	    if (title == null || title.trim().isEmpty()) {
	        return "Poll title is required";
	    }
	    if (title.trim().length() > 150) {
	        return "Poll title cannot exceed 150 characters";
	    }
	    if (description == null || description.trim().isEmpty()) {
	        return "Description is required";
	    }
	    if (description.trim().length() > 500) {
	        return "Description cannot exceed 500 characters";
	    }
	    if (option1 == null || option1.trim().isEmpty()) {
	        return "Option 1 is required";
	    }
	    if (option1.trim().length() > 100) {
	        return "Option 1 cannot exceed 100 characters";
	    }
	    if (option2 == null || option2.trim().isEmpty()) {
	        return "Option 2 is required";
	    }
	    if (option2.trim().length() > 100) {
	        return "Option 2 cannot exceed 100 characters";
	    }

	    return "Success";
	}
}
