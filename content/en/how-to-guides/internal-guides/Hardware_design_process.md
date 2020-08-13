# Hardware design process


## I. Creating a new part or assembly
### Checklist
- [ ] 1 - Identify next available part or assembly number(s) (PN/AN) [here](https://docs.google.com/spreadsheets/d/1nCw9LUN7ygv8B8hno6poN-m15rsixNSolVTXhXynrfw/edit#gid=0&range=A1) and fill in the cells to allocate the PN/AN for the new design
- [ ] 2 - Create a new Fusion file using the PN/AN (leaving out the revision number '-X') and a short descriptive name   
   a. PN format: P-TET-000000-X   
   b. AN format: A-TET-001000-X   
- [ ] 3 - Begin work on the new design, make sure to include an easily seen Emboss feature of the PN that includes the revision number (see section iii).
- [ ] 4 - When saving any design, include notes on what was changed or added, and make sure to reference any relevant GitHub Issue #'s

### Notes:
- When possible it is helpful to rename the parametric features with a descriptive name
- Using the "User Parameters" function when specifying tolerances for a model or repeating features (such as fillets or chamfers) will be helpful, make sure to note their use in comments or save notes
- Whenever possible, delete any unused parametric sketches and/or features to maintain a clean parametric design history

## II. Making modifications to and existing part or assembly
### Checklist
- [ ] 1 - All modifications made to existing designs need to be recording using GitHub Issues, if no Issue exists, create one [See Hardware design and GitHub](https://github.com/tetrabiodistributed/project-tetra-docs/blob/hardware_procedures/content/en/how-to-guides/internal-guides/Hardware_design_and_GitHub.md)
- [ ] 2 - For features added to an existing design, make sure that the Rollback bar is located at the end of the Parametric Design History before making changes
- [ ] 3 - For modifications or changes amidst existing parametric features, move the Rollback bar to the appropriate location in the Parametric Design History and then make the required modifications or changes
- [ ] 4 - Save the file with the Rollback bar positioned directly after the changes or modifications made (easier to find when reviewing design history); include notes on what was changed, why, and reference the relevant GitHub Issue(s)

## III. Milestones and part revision number
### Note:
Fusion milestones should **only** be used when a design is produced physically and the number of milestones must coincide with the part revision number. This way all milestones will signify parts that exist in physical form and can be easily identified by a marked revision number.    

   _Example:_   
P-TET-000000-0 : initial model, no physical part exists   
P-TET-000000-1 : first milestone and part revision number = 1; this is the only version of the design that has a physical presence (at this time)   
...   
P-TET-000000-4 : fourth milestone and part revision number = 4; latest physical design, 3 other designs exist physically and all distinguishable by the embossed part number   

### Checklist
- [ ] 1. All features, modifications, or changes should be completed and saved prior to establishing a milestone, the final change/feature to make before establishing a milestone is to add or modify the part revision number of the Embossed PN
- [ ] 2. When setting a milestone, make sure that save notes include a reference to any relevant GitHub Issue(s) and the milestone notes must include the following
   - [ ] a. Add one of the following codes: (P), (T), or (V)

     + (P) Production = design has been successfully verified and tested, with all documentation complete, ready for use in a complete system (likely by anyone outside the organization)
     + (T) Testing = design has been verified but still subject to review and/or approval, but will need to be tested for performance and/or functionality
     + (V) Verification = design is still under development and needs to be checked for physical dimensions, basic functionality, manufacturability, tolerances, and/or conformance
     + NOTE: It is assumed that any design being made for testing, will also (in general) be verified

   - [ ] b. PN + revision number
   - [ ] c. Brief description of all major changes made, or note if this is the first physical version being made
- [ ] 3. Export the design as an STL, 3MF, and/or STEP file using the part number including the revision number
- [ ] 4. Upload the exported file to the appropriate Project Tetra branch on GitHub
   - [ ] a. If you're unclear as to which branch this is or how to do so, contact @Burhan-Q
   - [ ] b. At minimum compress the design file(s) into a zip folder and upload as a comment on the appropriate GitHub Issue
