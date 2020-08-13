# Hardware design and GitHub

## I. GitHub Issues
1. All hardware design changes, additions, and/or modifications require a GitHub Issue to be created, outlining the specifics pertaining to the requirements. [See Proper Design Task Definition](https://docs.google.com/document/d/17HnsZsy_I7kKOkKkEYhdUJK056dD4DdfpkwQNek-qZ8/edit#bookmark=id.xicqbxrjhmm) and [Proper Design Change Definition](https://docs.google.com/document/d/17HnsZsy_I7kKOkKkEYhdUJK056dD4DdfpkwQNek-qZ8/edit#bookmark=id.qkl7ueuc9fi6)
2. Break down the work to address the Issue into discrete deliverables/tasks using a checklist, **be as explicit and complete** as possible to avoid confusion or the need for rework; responsibility for nebulous or incomplete task lists will fall to the individual who made them.
3. Explicitly document who will be responsible for the work, review, and approval of any design work when creating the Issue whenever possible.
4. Select the relevant (and correct) Labels, Milestones, Assignments (see section II) and Project for the Issue; _at minimum_ all Issues **must** be added to the [project-tetra repository project](https://github.com/tetrabiodistributed/project-tetra/projects/1).
5. Add comments to an Issue for discussions, questions, or sharing updates pertaining to the task(s)


## II. Assignments
1. No more than one person is to be assigned concurrently to any GitHub Issue
2. Once assigned, a GitHub Issue should never be assigned to no one, if this occurs, whoever is last assigned will be held accountable for the issue
3. Assignment to an Issue should always happen with the assignee's awareness during or prior to the assignment, not after.    
    a. In situations where an agreement on assignment is made between two individuals, a comment should be added to the Issue stating this agreement and provide the date/time of the conversation (if not added shortly after the discussion occurred)    
4. As an assignment transitions from one individual to another (for any reason), an Issue comment should be added to document what role each assignee is taking.


## III. GitHub Milestones
- GitHub Milestones are different than those in Fusion. Their purpose on GitHub is for tracking the progress towards a set goal. For instance a current Milestone is "Alpha prototype Sprint P2." These Milestones should have a defined completion/deadline date and list of general goals. Issues that are created relating to these goals should be designated for this Milestone, and a matching Label should be created to easily identify related Issues.


## IV. GitHub Labels
1. Labels should be used to help identify, sort, and filter Issues.
2. Currently the some key Labels for Issues are:
    
    Alpha_design_changes   =   related to design changes for Alpha prototype    
    Alpha_Drawings         =   assembly drawings for the Alpha prototype    
    Beta_design_changes    =   changes that will be addressed in the next prototype    
    PR_Queue               =   work complete and approved, schedule pull request to close    
    Ready for Approval     =   Issue that is waiting on approval    
    Ready for Review       =   Issue that is waiting on review    
    Ready for Testing      =   design that needs someone for testing (or printing)    
    Testing                =   work that is undergoing testing phase
    
3. An Issue can have a Label removed when it is no longer representative, with a comment documenting the reason for the change.


## V. Review and approval process
1. Reviews must be conducted by someone who did not perform the design changes for the same Issue. Additionally, approval must be provided by a third party who did not make the design changes and also was not the reviewer for this Issue.
2. All designs **must** be physically made before or as part of the review process unless otherwise explicitly stated.
3. When work for an Issue is ready for review, if no one has yet been designated as the reviewer, **it is the responsibility of the individual assigned** to find someone to review their work.   

    a. The Assignee should Label the Issue as "Ready for Review" so others may self assign the role of reviewer if available.    
4. Once a reviewer has been designated, the Issue Assignee must be changed from the person who performed the work to the reviewer. Add a comment to the Issue indicating this change and to document any important information as outlined in Step 3 from section II.
5. The reviewer will provide feedback on fixes or missed changes based **only** on the defined task list of the Issue in the comments, and then assign the Issue back to the original assignee.    
    
    a. If design changes or problems are found, a new Issue should be created by the reviewer and reference the original Issue #.    
    b. The Assignee for the new Issue does not need to be the same as the original Issue, but responsibilities of the new Issue should be discussed before specifying an Assignee.    
6. If the reviewer finds that all work is completed based on the Issue outlined scope of work, then they are to comment on the Issue stating that the review is complete and the design is ready for approval.     

    a. If an approver has been named in the Issue, then the reviewer may change the Assignee to this person.    
    b. If no approver has been named or documented for this Issue, the reviewer should change the Assignee back to the person who performed the work so they may find someone to approve the work for the Issue.        
    c. Either the reviewer or the individual who performed the work should change the Issue Label to "Ready for Approval" so others may self assign the role of approver if available        
7. Once an approver is identified, they should be Assigned to the Issue with a comment documenting any important information as outlined in Step 3 from section II.    

    a. As with the review process, any problems pertaining to the scope of work for the issue should be outlined and reassigned to the person who performed the work, this new work will be directly checked by the approver unless otherwise stated.        
    b. Any new changes or problems found by the approver must be added to a new Issue created by the approver and reference the original Issue #.    
8. Once all work is approved, the approver must comment documenting their approval and reassign the Issue to the person who performed the work, add the Label "PR_queue", and move the Issue card into the "Approved but not closed" column of the Project board. 


## VI. Pull requests
1. A Pull Request (PR) is performed when designs are ready to uploaded to the repository
2. Generally the designs uploaded should be considered "Released" and coincide with completion of a GitHub Milestone.
3. Designs should be uploaded to a branch of the main repository, which should also reference the Milestone.
4. When a PR is created, it should reference each Issue that the uploaded files address using the keyword "closes" so the PR is traceable to those issues. 
5. The PR will be merged with the main repository after it has been vetted by someone on the docs team to ensure proper protocol is being followed. 
