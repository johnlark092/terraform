# Session 2

Terraform live training session 2 will focus on:
- Modules
- Outputs
- Module Consumption of Outputs for Building a Dependency Tree

## Script:
 ______Modules________
- Before session user's will have downloaded our curated session 2 code to use as a baseline for this session.  We will also have a vpc and subnet created for them.  The session 2 code we give them will be slightly modified to be placed in directories as modules.   The nginx module will have a start up script for nginx boostrapping. 
- (Verbal) Explain what modules are
- (Verbal)Explain why we use modules for repeatability and templating reason 
- (Verbal) Walk user through the code and show them the directory structure on how we will organize module dir (module definition). Explain how thier session 2 code is now being prepped to become a module.  Explain how we added a start up script to start a nginx server on the VM. 
- (Verbal) Walk user through the nginx module code block (module consumption)and how it works.  (i.e how to map the source parameter and feed the module attributes)
- (Hands-on) Now we direct them to main.tf file on the root level and show them how to instantiate the module.  They create a module for nginx module, and update the vars to have a vpc/subnet info we provide them.  Explain that this wqas precreated in environment.  They will have to run the compute module on a vpc/subnet we created before hand since they have no networking code atm.
- (Hands-on) Run apply for ngingx module/ run destroy 
- (Verbal) Explain through the users downloaded networking module that we put that in their code as well.  Explain to them that since we want to automate the entire use case (network too) we will use this module.
- (Hands-On) have users instantiate the networking module we gave them in thier main.tf.  They will need to update the variables.tf at the root level, update the root main.tf, and update the tfvars at the root to include the networking module.  Run apply - they shoul see a dependency issue
- (Explain) When they run there is going to be a dependey issue unless we use outputs....thus segue into outputs.  

______Outputs______
- (Verbal) Explain what ooutputs are and why we use them (to pass data either within our code form a module or to another process i.e Jenkins)
- (Verbal) Explian what output code works and best practice by creating an output.tf 
- (Hands-on) Revisit networking module and do a hands on activity where users output the subnet name for their networking module 
- (Hands-on) Run only the networrking code and show them on cli how you can now see th eout put after a successful build.  Now run destroy. 
______module consuming outputs____
- (Verbal) Now that they have a module with an output, explain how networking is a dependency for compute 
- (Verbal) One of the uses of outputs is to build this depeency tree in Terraform so you can dynamically create dependencies and resources that need to wait on them 
- (Verbal) In our case our compute needs to wait for the network to be provisioned
- (Hands-on) Have the compute module edited to use the output from the entwroking module.  Run apply on the code.
- (Verbal)Explain to them if we had run the code earlier it may not have worked sicne the newrokt was up 
- (Verbal) Explain how now any subsequent module can dynamically be passed the subnetwork name 

