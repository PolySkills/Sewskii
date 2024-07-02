-- locks and unlocks door to annoy people in general
-- i perfer wait() , end / workspace.("Door")WaitForChild.

while wait() do
workspace.("House1"):WaitForChild.("Door"):WaitForChild.("ClickDetector")WaitForChild.("RemoteEvent"):FireServer()
end


-- second verzion if u wanna mention doors , instead of "House1"
while wait() do
workspace.("Door"):WaitForChild.("Lock"):WaitForChild.("ClickDetector")WaitForChild.("RemoteEvent"):FireServer()
end
