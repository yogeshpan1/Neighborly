package com.Neighborly.model;

public class PollModel 
{
	 private int pollId;
	 private String question;
	 private String status;
	 private String createdAt;
	 private int userId;
	 private String description;
	 
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
	
	public String getDescription()
	{
		return description;
	}

	public String getCreatedAt() 
	{ 
	    return createdAt; 
	}

	public int getUserId() 
	{ 
	    return userId;
	}

	// Setters
	public void setPollId(int pollId) 
	{ 
	    this.pollId = pollId; 
	}

	public void setQuestion(String question) 
	{ 
	    this.question = question; 
	}

	public void setStatus(String status) 
	{ 
	    this.status = status;
	}
	
	public void setDescription(String description)
	{
		this.description = description;
	}

	public void setCreatedAt(String createdAt) 
	{ 
	    this.createdAt = createdAt; 
	}

	public void setUserId(int userId) 
	{
	    this.userId = userId;
	}

}
