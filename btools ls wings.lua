function randomstring()
	local length = math.random(10, 20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end
local function addPart(name, size,col,m,t,s)
if col == nil then col = Color3.fromRGB(255, 255, 255) end
local args = {
	[1] = "CreatePart",
	[2] = "Normal",
	[3] = CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.Position*Vector3.new(0,10,0)),
	[4] = workspace
}

local aa = game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args))
if m ~= nil then
if s == nil then s = Vector3.new(1,1,1) end
local args6 = {
	[1] = "CreateMeshes",
	[2] = {
		[1] = {
			["Part"] = aa,
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args6))
local args7 = {
	[1] = "SyncMesh",
	[2] = {
		[1] = {
			["MeshType"] = 5,
			["Part"] = aa
		}
	}
}
game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args7))
local args1 = {
	[1] = "SyncMesh",
	[2] = {
		[1] = {
			["Part"] = aa,
			["MeshId"] = "rbxassetid://"..m
			
		}
	}
}
game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args1))
if t ~= nil then
local ar1 = {
	[1] = "SyncMesh",
	[2] = {
		[1] = {
			["TextureId"] = "rbxassetid://"..t,
			["Part"] = aa
		}
	}
}
game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(ar1))
end
local ar = {
	[1] = "SyncMesh",
	[2] = {
		[1] = {
			["Scale"] = s,
			["Part"] = aa,
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(ar))
end


local args2 = {
	[1] = "SetName",
	[2] = {
		[1] = aa
	},
	[3] = randomstring()
}
game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args2))
local args3 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = aa,
			["CFrame"] = CFrame.new(game.Players.LocalPlayer.Character.Torso.CFrame.Position*Vector3.new(0,10,0)),
			["Size"] = size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args3))
local args4 = {
	[1] = "SyncColor",
	[2] = {
		[1] = {
			["Color"] = col,
			["UnionColoring"] = true,
			["Part"] = aa,
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args4))
local args5 = {
	[1] = "SyncCollision",
	[2] = {
		[1] = {
			["Part"] = aa,
			["CanCollide"] = false
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args5))
aa.CanTouch = false
aa.CanQuery = false
aa.Name = name
end 
addPart("Wing1", Vector3.new(1,2,1),Color3.fromRGB(255, 255, 255),"6368254154",nil,Vector3.new(0.5, 0.5, 0.5))
addPart("Wing2", Vector3.new(1,2,1),Color3.fromRGB(255, 255, 255),"6368254154",nil,Vector3.new(0.5, 0.5, 0.5))
addPart("Wing3", Vector3.new(1,2,1),Color3.fromRGB(255, 255, 255),"6368254154",nil,Vector3.new(0.5, 0.5, 0.5))
addPart("Wing4", Vector3.new(1,2,1),Color3.fromRGB(255, 255, 255),"6368254154",nil,Vector3.new(0.5, 0.5, 0.5))
addPart("Wing5", Vector3.new(1,2,1),Color3.fromRGB(255, 255, 255),"6368254154",nil,Vector3.new(0.5, 0.5, 0.5))
addPart("Wing6", Vector3.new(1,2,1),Color3.fromRGB(255, 255, 255),"6368254154",nil,Vector3.new(0.5, 0.5, 0.5))
local connect = game:GetService("RunService").Heartbeat:Connect(function(set)
local args3 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = workspace:WaitForChild("Wing1"),
			["CFrame"] = game.Players.LocalPlayer.Character.Wing1.Primary.CFrame,
			["Size"] = game.Players.LocalPlayer.Character.Wing1.Primary.Size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args3))
local args33 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = workspace:WaitForChild("Wing2"),
			["CFrame"] = game.Players.LocalPlayer.Character.Wing2.Primary.CFrame,
			["Size"] = game.Players.LocalPlayer.Character.Wing2.Primary.Size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args33))

local args333 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = workspace:WaitForChild("Wing3"),
			["CFrame"] = game.Players.LocalPlayer.Character.Wing3.Primary.CFrame,
			["Size"] = game.Players.LocalPlayer.Character.Wing3.Primary.Size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args333))
local args12 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = workspace:WaitForChild("Wing4"),
			["CFrame"] = game.Players.LocalPlayer.Character.Wing4.Primary.CFrame,
			["Size"] = game.Players.LocalPlayer.Character.Wing4.Primary.Size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args12))
local args23 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = workspace:WaitForChild("Wing5"),
			["CFrame"] = game.Players.LocalPlayer.Character.Wing5.Primary.CFrame,
			["Size"] = game.Players.LocalPlayer.Character.Wing5.Primary.Size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args23))

local args1 = {
	[1] = "SyncResize",
	[2] = {
		[1] = {
			["Part"] = workspace:WaitForChild("Wing6"),
			["CFrame"] = game.Players.LocalPlayer.Character.Wing6.Primary.CFrame,
			["Size"] = game.Players.LocalPlayer.Character.Wing6.Primary.Size
		}
	}
}

game.Players.LocalPlayer.Backpack["Building Tools"].SyncAPI.ServerEndpoint:InvokeServer(unpack(args1))

end)