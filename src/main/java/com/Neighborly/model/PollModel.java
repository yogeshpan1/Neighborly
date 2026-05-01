package com.Neighborly.model;

public class PollModel 
{
	 private int pollId;
	 private String question;
	 private String status;
	 private String createdAt;
	 private int userId;
	 
	// Getters
	public int getPollId() 
	{ 
	    return pollId; 
	}

	public String getQuestion() 
	{ 
	    return question; 
	}

	public String getStatus() 
	{ 
	    return status; 
	}

	public String getCreatedAt() 
	{ 
	    return createdAt; 
	}

	public int getUserId() 
	{ 
	    return userId;
	}


}
