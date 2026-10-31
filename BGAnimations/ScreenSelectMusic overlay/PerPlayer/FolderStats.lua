-- Compact per-player folder cards, inspired by zarzob/Simply-Love-SM5:
-- https://github.com/zarzob/Simply-Love-SM5/blob/8f823d93d0a678f609f6e9d9fb079db3bcc024b9/BGAnimations/ScreenSelectMusic%20overlay/PerPlayer/FolderStats.lua
-- Membership and score aggregation come from the wheel, so all sorts work.
if GAMESTATE:IsCourseMode() then return Def.Actor{} end

local player = ...
local pn = ToEnumShortString(player)
local width = IsUsingWideScreen() and 188 or 142
local height = 88
local innerWidth = width - 16
local wheel

local function RefreshLater(self)
	-- Coalesce song/steps/style notifications and avoid scanning while scrolling.
	self:stoptweening():sleep(0.12):queuecommand("Refresh")
end

local af = Def.ActorFrame{
	Name="FolderStats"..pn,
	InitCommand=function(self) self:visible(false) end,
	OnCommand=RefreshLater,
	CurrentSongChangedMessageCommand=RefreshLater,
	SortOrderChangedMessageCommand=RefreshLater,
	PreferredStepsTypeChangedMessageCommand=RefreshLater,
	CurrentStyleChangedMessageCommand=RefreshLater,
	["PreferredDifficulty"..pn.."ChangedMessageCommand"]=RefreshLater,
	["CurrentSteps"..pn.."ChangedMessageCommand"]=RefreshLater,
	PlayerProfileSetMessageCommand=RefreshLater,
	PlayerJoinedMessageCommand=RefreshLater,
	PlayerUnjoinedMessageCommand=RefreshLater,
	RefreshCommand=function(self)
		local screen = SCREENMAN:GetTopScreen()
		wheel = screen and screen.GetMusicWheel and screen:GetMusicWheel()
		-- Allow this theme to continue working on engines without the stats API.
		if not GAMESTATE:IsHumanPlayer(player) or not wheel or not wheel.GetSelectedSectionScoreStats then
			self:visible(false)
			return
		end
		local kind = wheel:GetSelectedType()
		if kind ~= "WheelItemDataType_Song" and kind ~= "WheelItemDataType_Section"
			and kind ~= "WheelItemDataType_ParentSection" then
			self:visible(false)
			return
		end
		local right = _screen.w - width/2 - 8
		self:xy(right - ((#GAMESTATE:GetHumanPlayers() > 1 and player == PLAYER_1) and width+8 or 0), 78)
		local section = wheel:GetSelectedSection()
		local stats = wheel:GetSelectedSectionScoreStats(player)
		local steps = GAMESTATE:GetCurrentSteps(player)
		local difficulty = stats.Difficulty or (steps and steps:GetDifficulty())
			or GAMESTATE:GetPreferredDifficulty(player)
		if not difficulty then
			self:visible(false)
			return
		end
		local profile = PROFILEMAN:GetProfile(player)
		local name = profile and profile:GetDisplayName() or ""
		self:visible(true):playcommand("Summary", {
			Stats=stats, Section=section, Difficulty=difficulty,
			PlayerName=name ~= "" and name or pn,
			-- Only a real pack has a pack banner; other sorts use the panel background.
			Banner=GAMESTATE:GetSortOrder() == "SortOrder_Group" and section ~= ""
				and SONGMAN:GetSongGroupBannerPath(section) or ""
		})
	end,
}

af[#af+1] = Def.Quad{
	InitCommand=function(self) self:setsize(width+2, height+2):diffuse(PlayerColor(player)) end
}
af[#af+1] = Def.Quad{
	InitCommand=function(self) self:setsize(width, height):diffuse(color("#1e282f")) end
}
af[#af+1] = Def.Sprite{
	SummaryCommand=function(self, params)
		self:visible(params.Banner ~= "" and PREFSMAN:GetPreference("ShowBanners"))
		if params.Banner ~= "" then self:Load(params.Banner):scaletoclipped(width, height) end
	end
}
af[#af+1] = Def.Quad{
	InitCommand=function(self) self:setsize(width, height):diffuse(color("#000000DD")) end
}
af[#af+1] = LoadFont("Common Normal")..{
	InitCommand=function(self) self:y(-33):zoom(0.8):maxwidth(innerWidth/0.8) end,
	SummaryCommand=function(self, params)
		self:settext(params.Section ~= "" and params.Section or THEME:GetString("FolderStats", "AllSongs"))
	end
}
af[#af+1] = LoadFont("Common Normal")..{
	InitCommand=function(self) self:y(-18):zoom(0.65):maxwidth(innerWidth/0.65) end,
	SummaryCommand=function(self, params)
		self:settext(params.PlayerName.." / "..THEME:GetString("CustomDifficulty", ToEnumShortString(params.Difficulty)))
		self:diffuse(DifficultyColor(params.Difficulty))
	end
}
af[#af+1] = LoadFont("Common Normal")..{
	InitCommand=function(self) self:y(-3):zoom(0.65):maxwidth(innerWidth/0.65) end,
	SummaryCommand=function(self, params)
		local stats = params.Stats
		self:settext(stats.Charts == 0 and THEME:GetString("FolderStats", "NoCharts") or
			THEME:GetString("FolderStats", "Passed"):format(stats.PassedCharts, stats.Charts, stats.AverageMeter))
	end
}

-- Always show all five grade counters, including zero quints (sprite state zero).
local function GradeCount(stats, i)
	local quints = stats.QuintCharts or 0
	if i == 0 then return quints end
	local count = stats.GradeCounts[("Grade_Tier%02d"):format(i)]
	return i == 1 and count - quints or count
end
for i=0,4 do
	local x = -innerWidth/2 + (i+0.5)*innerWidth/5
	af[#af+1] = Def.Sprite{
		Texture=THEME:GetPathG("MusicWheelItem", "Grades/grades 1x19.png"),
		InitCommand=function(self) self:animate(false):setstate(i):zoom(0.17):y(15) end,
		SummaryCommand=function(self, params)
			local stats = params.Stats
			self:visible(stats.Charts > 0):x(x-8)
		end
	}
	af[#af+1] = LoadFont("Common Normal")..{
		InitCommand=function(self) self:y(15):zoom(0.65) end,
		SummaryCommand=function(self, params)
			local stats = params.Stats
			self:visible(stats.Charts > 0)
			self:x(x+7):maxwidth((innerWidth/5-16)/0.65):settext(GradeCount(stats, i))
		end
	}
end

-- Mutually exclusive segments: quints, four top grades, other passes, failures, unplayed.
local colors = {"#ff9de2", "#80eaff", "#ffe570", "#72e582", "#b1d9ff", "#b8bec7", "#ef6a68", "#343c47"}
for i=1,#colors do
	af[#af+1] = Def.Quad{
		InitCommand=function(self) self:halign(0):y(34):diffuse(color(colors[i])) end,
		SummaryCommand=function(self, params)
			local stats = params.Stats
			local counts, top = {}, 0
			for g=0,4 do
				counts[g+1] = GradeCount(stats, g)
				top = top + counts[g+1]
			end
			counts[6], counts[7], counts[8] = stats.PassedCharts-top, stats.FailedCharts, stats.UnplayedCharts
			local before = 0
			for g=1,i-1 do before = before + counts[g] end
			local total = math.max(1, stats.Charts)
			self:visible(counts[i] > 0)
			if counts[i] > 0 then
				self:x(-innerWidth/2 + innerWidth*before/total):setsize(innerWidth*counts[i]/total, 5)
			end
		end
	}
end

return af
