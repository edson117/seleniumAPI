json.id @step.id
json.number @step.number 
json.description @step.description
json.action @step.action, :id, :name
json.actionValue @step.actionValue
json.locatorType @step.locator_type, :id, :name
json.locator @step.locator  
