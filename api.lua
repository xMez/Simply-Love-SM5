
---@meta
---@alias bool boolean
---@alias float number
---@alias various any
---@alias int integer
---@alias void nil
---@alias color number[]


---[03 Gameplay.lua] Returns `false` if the player should be disallowed from entering the options menu from ScreenSelectMusic (i.e. during an ExtraStage (`GameState:IsAnExtraStage`) or when the `ENUM:PlayMode` is Oni).  Returns `true` otherwise.
---@return bool value
function AllowOptionsMenu() end

---[02 Colors.lua] Returns a `color` with HSV values matching `c` and alpha set to `percent`, where `percent` is in the range `0`..`1`.
---@param c color
---@param percent float
---@return color value
function Alpha(c,percent) end

---Use this to make a current value approach a goal value at the given speed.  Speed must not be negative.  The value will not overshoot the goal.
---Note:  When you see the error "approach: speed 1 is negative." it means that the speed value passed was negative.  The 1 is there because approach and multiapproach use the same internal function and can be ignored when using approach.
---@param current float
---@param goal float
---@param speed float
---@return float value
function approach(current,goal,speed) end

---[03 CustomSpeedMods.lua] Returns an  of speed mod choices generated from the comma-delimited list in  in the root of the current Profile directory (player if available, machine otherwise).
---@return LuaOptionRow value
function ArbitrarySpeedMods() end

---[02 StageMods.lua] Returns `true` if player modifiers should be forced.  This is effectively the negation of `GLOBAL:AllowOptionsMenu`.
---@return bool value
function AreStagePlayerModsForced() end

---[02 StageMods.lua] Returns `true` if song modifiers should be forced (i.e. during an ExtraStage (`GameState:IsAnExtraStage`), or when the `ENUM:PlayMode` is Oni, Battle, or Rave).
---@return bool value
function AreStageSongModsForced() end

---Issues an error when `v` is `false` (or `nil`). Returns all arguments otherwise. `sAssertMessage` is an optional error message (the default is "assertion failed!").
---`assert` is a core function of Lua's basic library; see the Lua manual for more details.
---@param v LuaReference
---@param sAssertMessage string
---@return various value
function assert(v,sAssertMessage) end

---[02 Utilities.lua] Returns two results.
---If P1 is joined (`GameState:IsSideJoined`), the first return value will be `arg1`, and `nil` otherwise.
---If P2 is joined, the second return value will be `arg2`, and `nil` otherwise.
---@param arg1 various
---@param arg2 various
---@return various, various value
function ArgsIfPlayerJoinedOrNil(arg1,arg2) end

---[04 SetBGFitHelpers.lua] Returns an ActorFrame containing examples of how a given background image (with set aspect ratio) will appear in a particular `ENUM:BackgroundFitMode`.
---The _fallback theme uses this to visually represent choices for ScreenSetBGFit, intended to help players choose a BackgroundFitMode preference.
---@param params table
---@return ActorFrame value
function BGFitChoiceExample(params) end

---[04 SetBGFitHelpers.lua] Returns an ActorFrame with an InputCallback (`Screen:AddInputCallback`) attached.
---The _fallback theme uses this to manage input on ScreenSetBGFit, intended to help players choose a `ENUM:BackgroundFitMode` preference.
---@param choices table
---@param LoseFocus function
---@param GainFocus function
---@return ActorFrame value
function BGFitInputActor(choices,LoseFocus,GainFocus) end

---Returns the last named component of `path`.  For example, passing in `"/path/to/file.txt"` will return `"file.txt"`, while `"/path/to/some/directory/"` will return `"directory"`.
---@param path string
---@return string value
function Basename(path) end

---Converts a binary formatted string to hexadecimal format.
---This can be useful in conjunction with 's MD5 and SHA functions.
---@param s string
---@return string value
function BinaryToHex(s) end

---[02 Colors.lua] Returns the color that results from multiplying `c`'s R, G, and B values by `fBoost`.
---@param c color
---@param fBoost float
---@return color value
function BoostColor(c,fBoost) end

---[02 Colors.lua] Modifies the brightness of the specified color.
---@param c color
---@param percent float
---@return color value
function Brightness(c,percent) end

---[02 Utilities.lua] Returns `true` if the `Center1Player` preference is enabled during single style.   Returns `true` when the style is double or routine, regardless of the `Center1Player` preference.
---Returns `false` otherwise.
---@return bool value
function Center1Player() end

---[03 Gameplay.lua] Returns `true` if checkpoint judgments and tap judgments
---are considered separate, or `false` otherwise.
---@return bool value
function CheckpointsTapsSeparateJudgment() end

---CLAMP is an all-female Japanese mangaka group that formed in the mid 1980s.
---Erm, I mean... Clamps `fValue` between `fLow` and `fHigh`.
---@param fValue float
---@param fLow float
---@param fHigh float
---@return float value
function clamp(fValue,fLow,fHigh) end

---[Deprecated] Always returns `false`.
---@return bool value
function CloseConnection() end

---A generic interface to Lua's garbage collector. Performs different functions based on the value of `opt`.
---`collectgarbage` is a core function of Lua's basic library; see the Lua manual for more details.
---@param opt string
---@param arg float
---@return void value
function collectgarbage(opt,arg) end

---Returns a color from a string. `color` can be in hex (`"#FFFFFFFF"`) or 0..1 values (`"1.0,1.0,1.0,1.0"`), in RGBA order.
---@param color string
---@return color value
function color(color) end

---[02 Colors.lua] Returns a darker tone of the color. (Specifically `c[1]/2, c[2]/2, c[3]/2, c[4]`)
---@param c color
---@return color value
function ColorDarkTone(c) end

---[02 Colors.lua] Returns a lighter tone of the color. (Specifically `c[1]+(c[1]/2), c[2]+(c[2]/2), c[3]+(c[3]/2), c[4]`)
---@param c color
---@return color value
function ColorLightTone(c) end

---[02 Colors.lua] Returns a midtone of the color. (Specifically `c[1]/1.5, c[2]/1.5, c[3]/1.5, c[4]`)
---@param c color
---@return color value
function ColorMidTone(c) end

---[02 Colors.lua] Accepts a color and returns the hex representation.  For example, passing in `{1, 0, 0.4, 1}` will return `"FF0066FF"`.
---@param c color
---@return string value
function ColorToHex(c) end

---[02 Colors.lua]  Accepts a color and returns a table with the HSV values, indexed by `Hue`, `Sat`, `Value`, and `Alpha`.
---@param c color
---@return table value
function ColorToHSV(c) end

---[03 Gameplay.lua] Determines what TapNoteScore allows for continuing the combo.
---@return TapNoteScore value
function ComboContinue() end

---[03 Gameplay.lua] Determines what TapNoteScore allows for maintaining the combo.
---@return TapNoteScore value
function ComboMaintain() end

---[03 Gameplay.lua] Determines if combo should be per row (Jump = 1) or per column (Jump = 2).
---@return bool value
function ComboPerRow() end

---[02 Other.lua] Defines the transform function used to position player combo during gameplay.  `params` will contain two boolean values indexed by `bReverse` and `bCentered`.
---Not intended to be called directly by themes.
---@param self Actor
---@param p params
---@return void value
function ComboTransformCommand(self,p) end

---This will take the number and insert a comma every three digits, as normal in English for writing large numbers.
---`number` can be a string, an integer, or a float.
---`comma` is an optional argument that is used instead of a comma.
---"commify(1234, 'cat')" will result in "1cat234".
---`dot` is an optional argument that is used instead of a dot to find the end of the part that should be commified.
---"commify('1234cat5678', ',', 'cat')" will result in "1,234cat5678", but "commify('1234cat5678')" will result in "12,34c,at5,678".
---The `comma` and `dot` arguments are provided to ease compliance with locales or languages that do not use comma and dot in numbers the way English does.
---@param number string
---@param comma string
---@param dot string
---@return string value
function commify(number,comma,dot) end

---[Deprecated] Always returns `false`.
---@param sAddress string
---@return bool value
function ConnectToServer(sAddress) end

---Returns `ENUM:Difficulty` `d` localized for the current language using strings defined under `[CourseDifficulty]`.
---@param d Difficulty
---@return string value
function CourseDifficultyToLocalizedString(d) end

---Returns `ENUM:CourseType` `ct` localized for the current language using strings defined under `[CourseType]`.
---@param ct CourseType
---@return string value
function CourseTypeToLocalizedString(ct) end

---[02 Utilities.lua] Utillity function used to format log output for presenting on-screen.  `indent` is the number of pixels to indent lines.  `width` is the width in pixels that lines should be constrained to.
---@param text BitmapText
---@param indent int
---@param width float
---@param text_zoom float
---@return table value
function convert_text_to_indented_lines(text,indent,width,text_zoom) end

---Recursively searches `dir` for xml files of actors and converts them to equivalent lua files.
---See .
---@param dir string
function convert_xml_bgs(dir) end

---Creates a RageBezier2D for you to use.  Make sure you destroy the RageBezier2D when you're done with it, or you will have a memory leak.
---@return RageBezier2D value
function create_bezier() end

---Creates a CubicSplineN for you to use.  Make sure you destroy (`CubicSplineN:destroy`) the CubicSplineN when you're done with it, or you will have a memory leak.
---@return CubicSplineN value
function create_spline() end

---[02 Colors.lua]
---@param cd string
---@return color value
function CustomDifficultyToColor(cd) end

---[02 Colors.lua]
---@param cd string
---@return color value
function CustomDifficultyToDarkColor(cd) end

---[02 Colors.lua]
---@param cd string
---@return color value
function CustomDifficultyToLightColor(cd) end

---Returns `cd` localized for the current language using strings defined under `[CustomDifficulty]`.
---@param cd string
---@return string value
function CustomDifficultyToLocalizedString(cd) end

---Returns the current day of the month in the range `1`-`31`.
---@return int value
function DayOfMonth() end

---Returns the current day of the year in the range `0`-`365`.
---@return int value
function DayOfYear() end

---[02 Serialize] Recursively deep-copy a table.
---@param from table
---@param to table
---@param already_copied table
---@return table value
function DeepCopy(from,to,already_copied) end

---`dofile` is normally a core function of Lua's basic library.  StepMania overrides this in
---[01 base.lua] to use , which itself has been overridden.
---@param sFilePath string
---@return chunk value
function dofile(sFilePath) end

---[03 Gameplay.lua]
---@return bool value
function EvalUsesCheckpointsWithJudgments() end

---[03 Gameplay.lua]
---@return int value
function FailCombo() end

---[02 Utilities.lua] Old name for approach.
---@param val float
---@param other_val float
---@param to_move float
---@return float value
function fapproach(val,other_val,to_move) end

---This function creates files in the theme's Languages folder listing all the strings that have no translation and all the strings that are unused.
---Strings that do not have an entry in the master language are considered unused.
---`master_lang_name` is the name of the ini file that contains the language with all strings used by the theme.
---Example:  find_missing_strings_in_theme_translations( "my_best_theme", "en.ini" )
---@param theme_name string
---@param master_lang_name string
function find_missing_strings_in_theme_translations(theme_name,master_lang_name) end

---[02 Utilities.lua] Return the index of a true value in `list`.
---@param list table
---@return int value
function FindSelection(list) end

---[02 Utilities.lua] Find a key in `tab` with the given `value`.
---@param tab table
---@param value various
---@return string value
function FindValue(tab,value) end

---`f` takes a key and a value.
---@param t table
---@param f function
---@return void value
function foreach_ordered(t,f) end

---@return float value
function force_to_range() end

---Returns the number passed to the function followed by its suffix ("th", "nd", and so on).
---@param num int
---@return string value
function FormatNumberAndSuffix(num) end

---[02 Other.lua] Concatenates `num` with " songs played" and returns the resulting string.
---@param num int
---@return string value
function FormatNumSongsPlayed(num) end

---Returns `fPercentDancePoints` formatted as a percentage.
---@param fPercentDancePoints float
---@return string value
function FormatPercentScore(fPercentDancePoints) end

---[03 Gameplay.lua] Returns a list of valid styles for the current gametype.
---@return string value
function GameCompatibleModes() end

---[03 Gameplay.lua]
---@return string value
function GetCodeForGame() end

---[02 Other.lua] Returns the value of the `CoursesToShowRanking` preference if it is not an empty string.
---Otherwise, returns a comma-delimited set of paths to the .crs files included with StepMania as a string.  This string is hardcoded and does not accurately reflect whether those crs files exist in the filesystem.
---@return string value
function GetCoursesToShowRanking() end

---Returns the corresponding CustomDifficulty string for a StepsType/Difficulty (/optional CourseType) combination.
---@param st StepsType
---@param d Difficulty
---@param ct CourseType
---@return string value
function GetCustomDifficulty(st,d,ct) end

---[04 Scoring.lua] "Get the radar values directly. The individual steps aren't used much."
---@param pn PlayerNumber
---@return RadarValues value
function GetDirectRadar(pn) end

---[02 Other.lua] Returns a string with the Edit Mode SubScreens.
---@return string value
function GetEditModeSubScreens() end

---[03 EnvUtils2.lua] Returns the value of `name` from the Env table.
---@param name string
---@return various value
function getenv(name) end

---[03 Gameplay.lua] Returns the number at which the Extra color should be used.
---@return int value
function GetExtraColorThreshold() end

---Returns a corresponding `ENUM:Grade` for the given percentage.
---@param fPercent float
---@param bMerciful bool
---@return Grade value
function GetGradeFromPercent(fPercent,bMerciful) end

---Returns the current Life difficulty in the range of `1`-`7`
---@return int value
function GetLifeDifficulty() end

---Returns the length of the music file found at `path` in seconds.
---If the file has already been loaded into an ActorSound, use `ActorSound:get` to get its `RageSound`, and then use `RageSound:get_length` to avoid loading the file twice.
---@param path string
---@return float value
function get_music_file_length(path) end

---Returns a table of the names of the sound drivers available.  If the SoundDriver preference is set to something that is not in this list, StepMania will not start up.  Changes to the SoundDriver preference do not take effect until the next time StepMania starts up.
---@return table value
function get_sound_driver_list() end

---[02 Utilities.lua] "This returns a profile, preferably a player one. If there isn't one, [it falls] back on the machine profile."
---@param pn PlayerNumber
---@return Profile value
function GetPlayerOrMachineProfile(pn) end

---[03 ThemePrefs.lua] Returns `true` if player `pn` is using the  UserPref (`GLOBAL:GetUserPref`).
---@param pn PlayerNumber
---@return bool value
function GetProTiming(pn) end

---[02 Utilities.lua] Returns a path to a random song background.
---@return string value
function GetRandomSongBackground() end

---[02 Actor.lua]
---@return float value
function GetReal() end

---[02 Actor.lua]
---@return float value
function GetRealInverse() end

---Returns the screen display aspect ratio (i.e. the `DisplayAspectRatio` preference).
---@return float value
function GetScreenAspectRatio() end

---[Deprecated] Always returns `""`.
---@return string value
function GetServerName() end

---[02 Utilities.lua] Returns a path to the current songs background.
---@return string value
function GetSongBackground() end

---[03 Gameplay.lua]
---@return float value
function GetSpeedModeAndValueFromPoptions() end

---[03 CustomSpeedMods.lua]
---@param pn PlayerNumber
---@return int, string value
function GetTapPosition(pn) end

---Returns the theme's aspect ratio.
---Specifically, this is the result of dividing `ScreenWidth` by `ScreenHeight` as each is defined under the theme's `[Common]` metric.
---@return float value
function GetThemeAspectRatio() end

---[03 ThemePrefs.lua] Alias for `ThemePrefs:Get`.
---@param pref string
---@return various value
function GetThemePref(pref) end

---Returns the current Timing difficulty in the range of `1`-`9`.
---@return int value
function GetTimingDifficulty() end

---Returns the current time since the program was started.  Includes time that was spent loading songs.
---@return float value
function GetTimeSinceStart() end

---[01 alias.lua]
---@param fPercent float
---@return float value
function GetTitleSafeH(fPercent) end

---[01 alias.lua]
---@param fPercent float
---@return float value
function GetTitleSafeV(fPercent) end

---[04 Scoring.lua] "Retrieve the amount of taps/holds/rolls involved." Used in some scoring formulas.
---@param radars RadarValues
---@return float value
function GetTotalItems(radars) end

---[03 UserPreferences2.lua] Themer-facing function for getting a user preference.
---@param name string
---@return string value
function GetUserPref(name) end

---[03 UserPreferences2.lua] Themer-facing function for getting a user preference as a boolean.
---@param name string
---@return bool value
function GetUserPrefB(name) end

---[03 UserPreferences2.lua] Themer-facing function for getting a user preference as a color.
---@param name string
---@return color value
function GetUserPrefC(name) end

---[03 UserPreferences2.lua] Themer-facing function for getting a user preference as a number.
---@param name string
---@return float value
function GetUserPrefN(name) end

---[02 Colors.lua] Returns the color's alpha if it has any, otherwise returns 1.
---@param c color
---@return float value
function HasAlpha(c) end

---[03 Gameplay.lua] Returns the value to start showing the combo at.
---@return int value
function HitCombo() end

---[03 Gameplay.lua] Returns `true` if you need to step on hold heads to activate them.
---@return bool value
function HoldHeadStep() end

---[03 Gameplay.lua] Returns 0 when the current  is pump.  Returns the `TimingWindowSecondsHold` preference value in other games.
---@return float value
function HoldTiming() end

---Returns the current hour.
---@return int value
function Hour() end

---[02 Colors.lua] Converts a color from HSV values to something StepMania can understand.
---`hue` is from `0`-`360`
---`saturation` and `value` are `0`..`1`
---@param hue float
---@param saturation float
---@param value float
---@return color value
function HSV(hue,saturation,value) end

---[02 Colors.lua] Converts a color from HSV values with alpha to something StepMania can understand.
---hue is from `0`-`360`
---`saturation`, `value`, and `alpha` are `0`..`1`
---@param hue float
---@param saturation float
---@param value float
---@param alpha float
---@return color value
function HSVA(hue,saturation,value,alpha) end

---[02 Colors.lua] Converts a table of HSV values to a color.
---The `hsv` table should use indexes `Hue`, `Sat`, `Value`, `Alpha`.
---@param hsv table
---@return color value
function HSVToColor(hsv) end

---[02 Colors.lua] Accepts a table of HSV values and returns the hex representation.
---The `hsv` table should use indexes `Hue`, `Sat`, `Value`, `Alpha`.
---@param hsv table
---@return string value
function HSVToHex(hsv) end

---[02 Colors.lua] Changes the hue of the input color.
---@param c color
---@param newHue int
---@return color value
function Hue(c,newHue) end

---[03 ThemePrefs.lua] Initializes various user preferences.
---@return void value
function InitUserPrefs() end

---Returns three values: an iterator function, the table `t`, and `0`,
---so that the construction `for i,v in ipairs(t) do body end`
---will iterate over the pairs (1,t[1]), (2,t[2]), ···, up to the first integer key absent from the table.
---`ipairs` is a core function of Lua's basic library; see the Lua manual for more details.
---@param t table
---@return function, table, int value
function ipairs(t) end

---[02 Utilities.lua] Returns `true` if the coin mode is not set to CoinMode_Home (`ENUM:CoinMode`).
---@return bool value
function IsArcade() end

---Returns `true` if the current `ENUM:PlayMode` is Nonstop, Oni, or Endless.
---This is effectively the same as `GameState:IsCourseMode`.
---@return bool value
function IsCourse() end

---[02 Utilities.lua] Returns `true` if  and the coin mode is CoinMode_Free (`ENUM:CoinMode`).
---@return bool value
function IsFreePlay() end

---[03 Gameplay.lua] Returns `true` if the current game is `sGame`.
---@param sGame string
---@return bool value
function IsGame(sGame) end

---[02 Utilities.lua] Returns `true` if the coin mode is set to CoinMode_Home (`ENUM:CoinMode`).
---@return bool value
function IsHome() end

---[Deprecated] Always returns `false`.
---@return bool value
function IsNetConnected() end

---[Deprecated] Always returns `false`.
---@return bool value
function IsNetSMOnline() end

---[Deprecated] Always returns `false`.
---@param pn PlayerNumber
---@return bool value
function IsSMOnlineLoggedIn(pn) end

---[04 Scoring.lua] Returns `true` if W1 is allowed (and `tns == 'TapNoteScore_W2'`)
---@param tns TapNoteScore
---@return bool value
function IsW1Allowed(tns) end

---[02 Branches.lua] Returns `true` if Routine mode is being played.
---@return bool value
function IsRoutine() end

---[04 WidescreenHelpers.lua] Returns `true` if the aspect ratio is 16:10 (`1.6`) or higher.
---@return bool value
function IsUsingWideScreen() end

---[01 base.lua] "Like ipairs(), but returns only values."
---@param t table
---@return table value # {various}
function ivalues(t) end

---[02 Utilities.lua] Joins a table, splitting each item with `delimiter`, returning a string of the results.
---@param delimiter string
---@param list table
---@return string value
function join(delimiter,list) end

---Decodes JSON encoded `data` and returns the result.
---@param data string
---@return various value
function JsonDecode(data) end

---Returns `data` as JSON. Empty tables are represented as arrays in the output.
---`minify` is optional and defaults to `false`. If `true`, all unnecessary whitespace is omitted from the output.
---@param data various
---@param minify bool
---@return string value
function JsonEncode(data,minify) end

---[02 Colors.lua]
---@param jl JudgmentLine
---@return color value
function JudgmentLineToColor(jl) end

---Returns `ENUM:JudgmentLine` `jl` localized for the current language using strings defined under `[JudgmentLine]`.
---@param jl JudgmentLine
---@return string value
function JudgmentLineToLocalizedString(jl) end

---[02 Colors.lua]
---@param jl JudgmentLine
---@return color value
function JudgmentLineToStrokeColor(jl) end

---Returns an Actor definition for the actor at `sPath`. If `sPath` points to a Lua file, any additional arguments will be passed to that script.
---@param sPath string
---@param ... 
---@return ActorDef value
function LoadActor(sPath,...) end

---[02 ActorDef.lua] Loads an actor template. This is the actual core of LoadActor.
---@param path string
---@param level int
---@return ActorDef value
function LoadActorFunc(path,level) end

---[02 ActorDef.lua] Loads an actor with params.
---@param path string
---@param params table
---@param ... 
---@return void value
function LoadActorWithParams(path,params,...) end

---`loadfile` is normally a core function of Lua's basic library.  StepMania overrides this in
---[01 base.lua] to use .
---@param sFilePath string
---@return chunk value
function loadfile(sFilePath) end

---[02 ActorDef.lua] Load the fallback BGA for the element that is currently being loaded.
---@return ActorDef value
function LoadFallbackB() end

---[02 ActorDef.lua] Loads a font.
---@param a string
---@param b string
---@return ActorDef value
function LoadFont(a,b) end

---[02 Sprite.lua] Returns a Sprite with the current song's background.
---@return Sprite value
function LoadSongBackground() end

---Iterates over all functions exposed to Lua in `class`, creating CamelCase aliases for each function.  Not intended to be used by themers.
---@param class Actor
function make_camel_aliases(class) end

---Returns the length of the multi-byte character string `sString`.
---@param sString string
---@return int value
function mbstrlen(sString) end

---Returns the current Minute.
---@return int value
function Minute() end

---[03 Gameplay.lua] Returns the value to start showing the miss combo at.
---@return int value
function MissCombo() end

---Returns the current month of the year in the range `0`-`11`.
---@return int value
function MonthOfYear() end

---Returns `ENUM:Month` `m` localized for the current language using strings defined under `[Month]`.
---@param m Month
---@return string value
function MonthToLocalizedString(m) end

---Returns `ENUM:Month` `m` as a non-localized string.
---@param m Month
---@return string value
function MonthToString(m) end

---Similar to approach, but operates on tables of values instead of single values.  This will modify the contents of `currents` in place, as well as returning `currents`.
---`currents`, `goals`, and `speeds` must all be the same size and contain only numbers.
---`multiplier` is optional.  The speeds in the speeds table will be multiplied by `multiplier`.  This makes it more convenient to use multiapproach in a per-frame update: pass in the frame delta and the speeds will be scaled to the time that passed.
---Note:  When you see the error "approach: speed 1 is negative." it means that a speed value passed was negative.  The 1 tells you which entry in the table was invalid.
---@param currents table
---@param goals table
---@param speeds table
---@param multiplier float
---@return table value
function multiapproach(currents,goals,speeds,multiplier) end

---Allows a program to traverse all fields of a table. Its first argument is a
---table and its second argument is an index in this table.
---`next` returns the next index of the table and its associated value.
---`next` is a core function of Lua's basic library; see the Lua manual for more details.
---@param t table
---@param index int
---@return void value
function next(t,index) end

---Converts a string such as 'oni' or 'expert' or 'trick' to the appropriate difficulty.
---@param dc string
---@return Difficulty value
function OldStyleStringToDifficulty(dc) end

---[03 ThemePrefs.lua] Returns a Lua option row for ProTiming.
---@return LuaOptionRow value
function OptionRowProTiming() end

---@return OptionRow value
function OptionRowScreenFilter() end

---Returns three values: the `GLOBAL:next` function, the table `t`, and `nil`,
---so that the construction `for k,v in pairs(t) do body end`
---will iterate over all key–value pairs of table `t`.
---`pairs` is a core function of Lua's basic library; see the Lua manual for more details.
---@param t table
---@return function value
function pairs(t) end

---[02 Colors.lua]
---@param pn PlayerNumber
---@return color value
function PlayerColor(pn) end

---[02 Colors.lua]
---@param pn PlayerNumber
---@return color value
function PlayerScoreColor(pn) end

---Returns `ENUM:PeakComboAward` `pma` localized for the current language using strings defined under `[PeakComboAward]`.
---@param pma PeakComboAward
---@return string value
function PeakComboAwardToLocalizedString(pma) end

---Returns `ENUM:PlayMode` `pm` localized for the current language using strings defined under `[PlayMode]`.
---@param pm PlayMode
---@return string value
function PlayModeToLocalizedString(pm) end

---Returns `ENUM:PlayerNumber` `pn` localized for the current language using strings defined under `[PlayerNumber]`.
---@param pn PlayerNumber
---@return string value
function PlayerNumberToLocalizedString(pn) end

---[02 Utilities.lua] Converts a PlayerNumber into a short string (e.g. "P1", "P2").
---@param pn PlayerNumber
---@return string value
function pname(pn) end

---[02 Actor.lua] Returns either `p1val` or `p2val` depending on `pn`.
---@param pn PlayerNumber
---@param p1val float
---@param p2val float
---@return float value
function PositionPerPlayer(pn,p1val,p2val) end

---Returns a formatted percent with the specified `num`erator and `den`ominator.
---@param num float
---@param den float
---@return string value
function PrettyPercent(num,den) end

---[00 init.lua] Alias for `GLOBAL:Trace`.
---@param s string
---@return void value
function print(s) end

---[03 ThemePrefs.lua] Prints a table's contents to log.txt using .
---@param t table
---@return void value
function PrintTable(t) end

---Returns the product family. (e.g. "StepMania")
---@return string value
function ProductFamily() end

---Returns the product ID. (e.g. "ITGmania")
---@return string value
function ProductID() end

---Returns the product version. (e.g. "5.0.11" or "5.1.0" or "5.2-git-96f9771")
---@return string value
function ProductVersion() end

---Returns `ENUM:RadarCategory` `cat` localized for the current language using strings defined under `[RadarCategory]`.
---@param cat RadarCategory
---@return string value
function RadarCategoryToLocalizedString(cat) end

---Checks whether `v1` is equal to `v2`, without invoking any metamethod.
---`rawequal` is a core function of Lua's basic library; see the Lua manual for more details.
---@param v1 various
---@param v2 various
---@return bool value
function rawequal(v1,v2) end

---Gets the real value of `t[index]`, without invoking any metamethod.
---`rawget` is a core function of Lua's basic library; see the Lua manual for more details.
---@param t table
---@param index various
---@return various value
function rawget(t,index) end

---Sets the real value of `t[index]` to `value`, without invoking any metamethod.
---The modified `t` is then returned.
---`rawset` is a core function of Lua's basic library; see the Lua manual for more details.
---@param t table
---@param index int
---@param value various
---@return table value
function rawset(t,index,value) end

---[02 ActorDef.lua] Used internally by LoadActor to resolve a path.  If `optional` is true, then a nil path is returned instead of emitting an error if no file is found.
---@param path string
---@param level int
---@param optional bool
---@return string value
function ResolveRelativePath(path,level,optional) end

---[04 FileUtils.lua] Reads the file at `path` and returns its contents.
---@param path string
---@return string value
function ReadFile(path) end

---[03 UserPreferences2.lua] (internal) Reads the specified user preference from its config file.
---@param prefName string
---@return string value
function ReadPrefFromFile(prefName) end

---[02 Utilities.lua] Recursively prints all the children of the actor frame to the log file.  This can be useful for finding out what actors are on a screen or just seeing what the structure of the actor tree looks like.
---`indent` is an optional argument that will be prepended to every line.
---@param a ActorFrame
---@param indent string
function rec_print_children(a,indent) end

---[02 Utilities.lua] Recursively prints all values in the table to the log file in the form "(key_type) key: (value_type) value" so that you know the type of the key and the value.  Useful if you're not sure exactly what is in a table passed as a parameter.
---`indent` is an optional argument that will be prepended to every line.
---@param t table
---@param indent string
function rec_print_table(t,indent) end

---[Deprecated] Always returns `false`.
---@return void value
function ReportStyle() end

---[02 Utilities.lua] Round a number.
---@param val float
---@param decimal int
---@return int value
function round(val,decimal) end

---[03 Gameplay.lua] Returns the routine noteskin for player .
---@return string value
function RoutineSkinP1() end

---[03 Gameplay.lua] Returns the routine noteskin for player 2.
---@return string value
function RoutineSkinP2() end

---[02 Colors.lua] Modifies the saturation of the specified color
---@param c color
---@param percent float
---@return color value
function Saturation(c,percent) end

---Saves a screenshot.  If pn is nil, saves to the machine's Screenshots dir, otherwise saves to the profile's Screenshots dir.  Saves as jpg if compress is true, or png if compress is false.  The screenshot is signed if sign is true.  prefix and suffix are optional strings to add to the beginning and end of the filename.
---Returns success and full path of the resulting screenshot.
---@param pn PlayerNumber
---@param compress bool
---@param sign bool
---@param prefix string
---@param suffix string
---@return bool, string value
function SaveScreenshot(pn,compress,sign,prefix,suffix) end

---Scales `x`, originally within `low1` and `high1`, to fall between `low2` and `high2`.
---@param x float
---@param low1 float
---@param high1 float
---@param low2 float
---@param high2 float
---@return float value
function scale(x,low1,high1,low2,high2) end

---@param a Actor
---@param width float
---@param height float
function scale_to_fit(a,width,height) end

---[03 Gameplay.lua] Returns the primary ScoreKeeper class to use.
---@return string value
function ScoreKeeperClass() end

---[02 Colors.lua]
---@param screen string
---@return string value
function ScreenColor(screen) end

---[02 Other.lua] alias for `Screen:Metric`.
---@param s string
---@return string value
function ScreenMetric(s) end

---@param count int
---@return table value # {{float, float}}
function ScreenSelectStylePositions(count) end

---[02 Other.lua] alias for `Screen:String`.
---@param s string
---@return string value
function ScreenString(s) end

---Returns the current second.
---@return int value
function Second() end

---Converts `fSecs` to Hours:Minutes:Seconds format using two digits for each section.
---@param fSecs float
---@return string value
function SecondsToHHMMSS(fSecs) end

---Converts `fSecs` to Minutes:Seconds format using one digit for Minutes and two digits for Seconds.
---@param fSecs float
---@return string value
function SecondsToMSS(fSecs) end

---Converts `fSecs` to Minutes:Seconds format using two digits for both sections.
---@param fSecs float
---@return string value
function SecondsToMMSS(fSecs) end

---Converts `fSecs` to Minutes:Seconds.Milliseconds format using one digit for Minutes, two digits for Seconds, and two digits for Milliseconds.
---@param fSecs float
---@return string value
function SecondsToMSSMsMs(fSecs) end

---Converts `fSecs` to Minutes:Seconds.Milliseconds format using two digits for each section.
---@param fSecs float
---@return string value
function SecondsToMMSSMsMs(fSecs) end

---Converts `fSecs` to Minutes:Seconds.Milliseconds format using two digits for Minutes, two digits for Seconds, and three digits for Milliseconds.
---@param fSecs float
---@return string value
function SecondsToMMSSMsMsMs(fSecs) end

---"If `index` is a number, returns all arguments after argument
---number `index`. Otherwise, `index` must be the string
---`"#"`, and [it] returns the total number of extra arguments it received."
---@param index various
---@param ... 
---@return various value
function select(index,...) end

---[02 Branches.lua] Determines the correct music/course selection screen to use and returns it.
---@return string value
function SelectMusicOrCourse() end

---[03 Gameplay.lua] (soon to be deprecated) Returns a list of codes to use on ScreenSelectProfile.
---@return string value
function SelectProfileKeys() end

---[02 Serialize.lua] Serialize the table `t`.
---@param t table
---@return string value
function Serialize(t) end

---[03 EnvUtils2.lua] Sets the value of `name` to `value` in the Env table.
---@param name string
---@param value various
---@return various value
function setenv(name,value) end

---[03 UserPreferences2.lua] Themer-facing function for setting a user preference.
---@param name string
---@param value string
---@return bool value
function SetUserPref(name,value) end

---[03 Gameplay.lua]
---@return bool value
function ShowHoldJudgments() end

---[02 ActorDef.lua] Returns `true` if a decoration should be shown on the current screen or not.
---@param sMetricsName string
---@return bool value
function ShowStandardDecoration(sMetricsName) end

---Returns `ENUM:SortOrder` `so` localized for the current language using strings defined under `[SortOrder]`.
---@param so SortOrder
---@return string value
function SortOrderToLocalizedString(so) end

---[03 CustomSpeedMods.lua] Returns a Lua option row with the custom speed mods defined in SpeedMods.txt.
---@return LuaOptionRow value
function SpeedMods() end

---[02 Utilities.lua] Splits a string at every occurence of `delimiter`, returning a table of the results.
---@param delimiter string
---@param text string
---@return table value
function split(delimiter,text) end

---Returns `ENUM:StageAward` `sa` localized for the current language using strings defined under `[StageAward]`.
---@param sa StageAward
---@return string value
function StageAwardToLocalizedString(sa) end

---[02 Colors.lua]
---@param s Stage
---@return color value
function StageToColor(s) end

---Returns `ENUM:Stage` `i` localized for the current language using strings defined under `[Stage]`.
---@param i Stage
---@return string value
function StageToLocalizedString(i) end

---[02 Colors.lua]
---@param s Stage
---@return color value
function StageToStrokeColor(s) end

---[02 ActorDef.lua]
---@param sMetricsName string
---@param t table
---@return Actor value
function StandardDecorationFromTable(sMetricsName,t) end

---[02 ActorDef.lua]
---@param sMetricsName string
---@param sFileName string
---@return Actor value
function StandardDecorationFromFile(sMetricsName,sFileName) end

---[02 ActorDef.lua]
---@param sMetricsName string
---@param sFileName string
---@return Actor value
function StandardDecorationFromFileOptional(sMetricsName,sFileName) end

---[01 Alias.lua] Given the short form of a `ENUM:BlendMode` string, returns the full version of the string.
---Returns `nil` if the string passed in does not match any valid BlendModes.
---@param s string
---@return string value
function StringToBlend(s) end

---[02 Utilities.lua] Returns a shuffled version of `t`.
---@param t table
---@return table value
function tableshuffle(t) end

---[02 Utilities.lua] Returns a slice of the specified table of size `num`.
---@param t table
---@param num int
---@return table value
function tableslice(t,num) end

---[02 Utilities.lua] Look up each value in a table, returning a table with the resulting strings.
---@param t table
---@param group string
---@return table value
function TableStringLookup(t,group) end

---Returns `ENUM:TapNoteScore` `tns` localized for the current language using strings defined under `[TapNoteScore]`.
---@param tns TapNoteScore
---@return string value
function TapNoteScoreToLocalizedString(tns) end

---[02 TextBanner.lua] Defines how the  is laid out.
---@return void value
function TextBannerAfterSet() end

---[04 Other.lua]
---@param OnEval bool
---@return string value
function thified_curstage_index(OnEval) end

---[02 Utilities.lua] Converts a string or number to a bool.
---@param v various
---@return bool value
function tobool(v) end

---Tries to convert `e` to a number. Returns `nil` if it can't convert the input to a number. (`base` is optional.)
---`tonumber` is a core function of Lua's basic library; see the Lua manual for more details.
---@param e various
---@param base int
---@return float value
function tonumber(e,base) end

---Converts `e` to a string.
---`tostring` is a core function of Lua's basic library; see the Lua manual for more details.
---@param e various
---@return string value
function tostring(e) end

---[02 Enum.lua] Returns a string representing an enum starting from '_'. For example, passing PlayerNumber_P1 (`ENUM:PlayerNumber`) to this function will return "P1".
---@param e enum
---@return string value
function ToEnumShortString(e) end

---[00 init.lua] Alias for `lua:Trace`.
---@param sString string
---@return void value
function Trace(sString) end

---Returns the type of the object as a string.  There are eight basic types in Lua:
---, , , , , , , and .
---See the Lua manual for more details.
---@param v various
---@return string value
function type(v) end

---Returns `ENUM:UnlockRewardType` `i` localized for the current language using strings defined under `[UnlockRewardType]`.
---@param i UnlockRewardType
---@return string value
function UnlockRewardTypeToLocalizedString(i) end

---Returns the elements from table `list`.	This function is equivalent to `return list[i], list[i+1], ···, list[j]`.
---`i` and `j` are optional; by default, `i` is `1` and `j` is the length of the list.
---`unpack` is a core function of Lua's basic library; see the Lua manual for more details.
---@param list table
---@param i int
---@param j int
---@return various value
function unpack(list,i,j) end

---Returns a string with characters escaped for URLs. (e.g. a space becomes '%20')
---@param sInput string
---@return string value
function URLEncode(sInput) end

---This tells StepMania to update the screen position for any changes to these preferences: CenterImageAddWidth, CenterImageAddHeight, CenterImageTranslateX, CenterImageTranslateY.
---This way, a theme can implement a custom interactive screen for adjusting those preferences.
function update_centering() end

---[01 base.lua] Alias for .
---@return ThreadVariable value
function Var() end

---Returns the current version's build date, formatted as YYYYMMDD.
---@return string value
function VersionDate() end

---Returns the current version's build time, formatted as HH:MM:SS.
---@return string value
function VersionTime() end

---[00 init.lua] Alias for `lua:Warn`.
---@param sString string
---@return void value
function Warn(sString) end

---Returns the current weekday in the range of `0`-`6`, where Sunday is `0`.
---@return int value
function Weekday() end

---[04 WidescreenHelpers.lua] Depending on the screen width, scales between `ar43` (4:3; 640px) and `ar169` (16:9; 854px).
---@param ar43 float
---@param ar169 float
---@return float value
function WideScale(ar43,ar169) end

---[02 Utilities.lua]
---@param val float
---@param n float
---@return float value
function wrap(val,n) end

---[02 Utilities.lua]
---@param text BitmapText
---@param limit float
---@param natural_zoom float
function width_limit_text(text,limit,natural_zoom) end

---[02 Utilities.lua]
---@param text BitmapText
---@param limit float
function width_clip_text(text,limit) end

---[02 Utilities.lua]
---@param text BitmapText
---@param limit float
---@param natural_zoom float
function width_clip_limit_text(text,limit,natural_zoom) end

---[02 ActorDef.lua] Wraps the children in an ActorFrame.
---@param children table
---@return ActorFrame value
function WrapInActorFrame(children) end

---[04 FileUtils.lua] Writes `buf` to the file at `path`.
---@param path string
---@param buf string
---@return bool value
function WriteFile(path,buf) end

---[03 GamePreferences.lua]
---@param name string
---@return bool value
function WriteGamePrefToFile(name) end

---[03 UserPreferences2.lua] (internal) Writes user preference `prefName` to its config file with `value` being `tostring`'d.
---@param prefName string
---@param value various
---@return bool value
function WritePrefToFile(prefName,value) end

---Returns the current year.
---@return int value
function Year() end

---@class Actor

---This adds a wrapper state around the Actor, which is like wrapping the Actor in an ActorFrame, except that you can use it on any actor, and add or remove wrapper states in response to things that happen while the screen is being used. (wrapping an Actor in an ActorFrame normally requires setting it up before the screen starts)
---The ActorFrame that is returned is the wrapper state, for convenience.
---An Actor can have any number of wrapper states.  Use GetWrapperState to access wrapper states for the actor.
---@return ActorFrame value
function Actor:AddWrapperState() end

---Returns the number of wrapper states the actor has.
---@return ActorFrame value
function Actor:GetNumWrapperStates() end

---Returns the wrapper state at index i.  Think of wrapper states with a higher index as being "further out".  Actor is inside Wrapper 1, Wrapper 1 is inside Wrapper 2, Wrapper 2 is inside Wrapper 3, and so on.
---@param i int
---@return ActorFrame value
function Actor:GetWrapperState(i) end

---Removes the wrapper state at index i.
---@param i int
function Actor:RemoveWrapperState(i) end

---Returns the Actor's parent, or `nil` if it doesn't have one.
---@return Actor value
function Actor:GetParent() end

---Returns the Actor's fake parent, or `nil` if it doesn't have one.
---@return Actor value
function Actor:GetFakeParent() end

---Sets the Actor's fake parent to p, or clears it if p is nil.
---@param p Actor
function Actor:SetFakeParent(p) end

---Returns the Actor's visibility.
---@return bool value
function Actor:GetVisible() end

---Returns the Actor's x position.
---@return float value
function Actor:GetX() end

---Returns the Actor's y position.
---@return float value
function Actor:GetY() end

---Returns the Actor's z position.
---@return float value
function Actor:GetZ() end

---Returns what the Actor's x position will be when it reaches its destination tween state.
---@return float value
function Actor:GetDestX() end

---Returns what the Actor's y position will be when it reaches its destination tween state.
---@return float value
function Actor:GetDestY() end

---Returns what the Actor's z position will be when it reaches its destination tween state.
---@return float value
function Actor:GetDestZ() end

---Returns the Actor's zoom.
---@return float value
function Actor:GetZoom() end

---Returns the Actor's X zoom.
---@return float value
function Actor:GetZoomX() end

---Returns the Actor's Y zoom.
---@return float value
function Actor:GetZoomY() end

---Returns the Actor's Z zoom.
---@return float value
function Actor:GetZoomZ() end

---Sets Texture Filtering for an Actor to `b`.
---@param b bool
---@return void value
function Actor:SetTextureFiltering(b) end

---Plays the commands that follow at an accelerated rate (fRate²), where `fRate` is in seconds.
---`accelerate` is a basic tween command, along with , , , and .
---@param fRate float
---@return void value
function Actor:accelerate(fRate) end

---Adds a command to the Actor.
---@param sName string
---@param cmd ActorCommand
---@return void value
function Actor:addcommand(sName,cmd) end

---Adds `rot` degrees to the Actor's current X rotation.
---@param rot float
---@return void value
function Actor:addrotationx(rot) end

---Adds `rot` degrees to the Actor's current Y rotation.
---@param rot float
---@return void value
function Actor:addrotationy(rot) end

---Adds `rot` degrees to the Actor's current Z rotation.
---@param rot float
---@return void value
function Actor:addrotationz(rot) end

---Adds `xPos` to the Actor's current x position.
---@param xPos float
---@return void value
function Actor:addx(xPos) end

---Adds `yPos` to the Actor's current y position.
---@param yPos float
---@return void value
function Actor:addy(yPos) end

---Adds `zPos` to the Actor's current z position.
---@param zPos float
---@return void value
function Actor:addz(zPos) end

---[02 Actor.lua] Sets the alignment of an Actor, where `h` and `v` are in the range 0..1.
---@param h float
---@param v float
---@return void value
function Actor:align(h,v) end

---Sets whether or not the Actor should animate.
---@param b bool
---@return void value
function Actor:animate(b) end

---Sets the Actor's aux value. (This can be a solution for coupling data with an Actor.)
---@param fAux float
---@return void value
function Actor:aux(fAux) end

---If `true`, cull the Actor's back faces. See also: `Actor:cullmode`.
---@param b bool
---@return void value
function Actor:backfacecull(b) end

---Sets the Actor's base alpha to `fAlpha`, where `fAlpha` is in the range 0..1.
---@param fAlpha float
---@return void value
function Actor:basealpha(fAlpha) end

---Sets the Actor's base X rotation to `rot` degrees.
---@param rot float
---@return void value
function Actor:baserotationx(rot) end

---Sets the Actor's base Y rotation to `rot` degrees.
---@param rot float
---@return void value
function Actor:baserotationy(rot) end

---Sets the Actor's base Z rotation to `rot` degrees.
---@param rot float
---@return void value
function Actor:baserotationz(rot) end

---Sets the Actor's base zoom to `zoom`.
---@param zoom float
---@return void value
function Actor:basezoom(zoom) end

---Sets the Actor's base X zoom to `zoom`.
---@param zoom float
---@return void value
function Actor:basezoomx(zoom) end

---Sets the Actor's base Y zoom to `zoom`.
---@param zoom float
---@return void value
function Actor:basezoomy(zoom) end

---Sets the Actor's base Z zoom to `zoom`.
---@param zoom float
---@return void value
function Actor:basezoomz(zoom) end

---Sets the Actor to use the specified `ENUM:BlendMode`.
---@param mode BlendMode
---@return void value
function Actor:blend(mode) end

---Makes the Actor bob up and down. Can use  to define different bobbing behavior.
---@return void value
function Actor:bob() end

---Makes the Actor bounce, similar to bob but with one point acting as the ground. Can use  to define different bouncing behavior (with effectmagnitude values relating to x, y, and z movement).
---@return void value
function Actor:bounce() end

---[02 Actor.lua]
---@param time float
---@return void value
function Actor:bouncebegin(time) end

---[02 Actor.lua]
---@param time float
---@return void value
function Actor:bounceend(time) end

---[02 Actor.lua] Centers an Actor on the screen.
---`self:Center()` is equivalent to `self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y)`
---@return void value
function Actor:Center() end

---[02 Actor.lua] Centers an Actor on the X axis.
---`self:CenterX()` is equivalent to `self:x(SCREEN_CENTER_X)`
---@return void value
function Actor:CenterX() end

---[02 Actor.lua] Centers an Actor on the y axis.
---`self:CenterY()` is equivalent to `self:y(SCREEN_CENTER_Y)`
---@return void value
function Actor:CenterY() end

---Determines if the z-buffer should be cleared or not.
---@param bClear bool
---@return void value
function Actor:clearzbuffer(bClear) end

---[02 Actor.lua] Combines multiple interpolators for complex tweens. `tweens`
---can either be a string like `"linear,0.25,accelerate,0.75"` or
---a table with tween information `{ {Type="linear", Percent=0.25, Bezier=nil}, {Type="accelerate", Percent=0.75, Bezier=nil} }`
---@param length float
---@param tweens string
---@return void value
function Actor:compound(length,tweens) end

---Crops `percent` of the Actor from the bottom, where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:cropbottom(percent) end

---Crops `percent` of the Actor from the left, where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:cropleft(percent) end

---Crops `percent` of the Actor from the right, where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:cropright(percent) end

---Crops `percent` of the Actor from the top, where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:croptop(percent) end

---Sets the Actor's `ENUM:CullMode` to `mode`.
---@param mode CullMode
---@return void value
function Actor:cullmode(mode) end

---Plays the commands that follow at an decelerated rate (`1 - (1-fRate) * (1-fRate)`), where `fRate` is in seconds.
---`decelerate` is a basic tween command, along with , , , and .
---@param fRate float
---@return void value
function Actor:decelerate(fRate) end

---Set the Actor's diffuse color to `c`.
---@param c color
---@return void value
function Actor:diffuse(c) end

---Sets the Actor's alpha level to `fAlpha`, where `fAlpha` is in the range 0..1.
---@param fAlpha float
---@return void value
function Actor:diffusealpha(fAlpha) end

---Makes the Actor switch between two colors immediately.
---See
---for an example.
---@return void value
function Actor:diffuseblink() end

---Sets the Actor's bottom edge color to `c`.
---@param c color
---@return void value
function Actor:diffusebottomedge(c) end

---Set the Actor's diffuse color to `c`, ignoring any alpha value in `c`.
---@param c color
---@return void value
function Actor:diffusecolor(c) end

---Sets the Actor's left edge color to `c`.
---@param c color
---@return void value
function Actor:diffuseleftedge(c) end

---Sets the Actor's lower left corner color to `c`.
---@param c color
---@return void value
function Actor:diffuselowerleft(c) end

---Sets the Actor's lower right corner color to `c`.
---@param c color
---@return void value
function Actor:diffuselowerright(c) end

---Makes the Actor switch between two colors, jumping back to the first after reaching the second.
---See
---for an example.
---@return void value
function Actor:diffuseramp() end

---Sets the Actor's right edge color to `c`.
---@param c color
---@return void value
function Actor:diffuserightedge(c) end

---Makes the Actor shift between two colors smoothly.
---See
---for an example.
---@return void value
function Actor:diffuseshift() end

---Sets the Actor's top edge color to `c`.
---@param c color
---@return void value
function Actor:diffusetopedge(c) end

---Sets the Actor's upper left corner color to `c`.
---@param c color
---@return void value
function Actor:diffuseupperleft(c) end

---Sets the Actor's upper right corner color to `c`.
---@param c color
---@return void value
function Actor:diffuseupperright(c) end

---Tells the Actor to draw itself.
---@return void value
function Actor:Draw() end

---Sets the Actor's draworder to `iOrder`, where larger values display first.
---@param iOrder int
---@return void value
function Actor:draworder(iOrder) end

---[02 Actor.lua] (Added in sm-ssc)
---@param time float
---@return void value
function Actor:drop(time) end

---[02 Actor.lua]
---@param time float
---@param fEase float
---@return void value
function Actor:ease(time,fEase) end

---Set the Actor's effect clock to `s`.
---@param s string
---@return void value
function Actor:effectclock(s) end

---Sets the first effect color to `c`.
---@param c color
---@return void value
function Actor:effectcolor1(c) end

---Sets the second effect color to `c`.
---@param c color
---@return void value
function Actor:effectcolor2(c) end

---Set the Actor's effect magnitude in each direction to the given values.
---@param fX float
---@param fY float
---@param fZ float
---@return void value
function Actor:effectmagnitude(fX,fY,fZ) end

---Set the Actor's effect offset to `fTime`.  The offset is added to the time into the effect before calculating percent_through_effect.
---@param fTime float
---@return void value
function Actor:effectoffset(fTime) end

---Set the Actor's effect period to `fTime`.
---@param fTime float
---@return void value
function Actor:effectperiod(fTime) end

---Set the Actor's effect timing.  The effect timing controls how long it takes an effect to cycle and how long it spends in each phase.
---All effect timings must be greater than or equal to zero, at least one of them must be greater than zero.
---Depending on the effect clock, the actor's time into effect is updated every frame.  That time is then translated into a percent_through_effect using the parameters to this function.
---ramp_to_half is the amount of time for percent_through_effect to reach 0.5.
---hold_at_half is the amount of time percent_through_effect will stay at 0.5.
---ramp_to_full is the amount of time percent_through_effect will take to go from 0.5 to 1.0.
---hold_at_full is the amount of time percent_through_effect will stay at 1.0.
---After reaching the end of hold_at_full, percent_through_effect stays at 0 until hold_at_zero is over.
---
---The different effects use percent_through_effect in different ways.  Some use it to calculate percent_between_colors with this sine wave:  sin((percent_through_effect + 0.25f) * 2 * PI ) / 2 + 0.5f
---Some effects check the internal bool blink_on.  blink_on is true if percent_through_effect is greater than 0.5 and false if percent_through_effect is less than or equal to 0.5.
---Check the effect functions for individual explanations:  , , , , , , , , , , , .
---@param ramp_to_half float
---@param hold_at_half float
---@param ramp_to_full float
---@param hold_at_zero float
---@param hold_at_full float
---@return void value
function Actor:effecttiming(ramp_to_half,hold_at_half,ramp_to_full,hold_at_zero,hold_at_full) end

---Set the hold_at_full part of the effect timing while leaving the others unchanged.
---@param hold_at_full float
---@return void value
function Actor:effect_hold_at_full(hold_at_full) end

---Fades `percent` of the Actor from the bottom where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:fadebottom(percent) end

---Fades `percent` of the Actor from the left where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:fadeleft(percent) end

---Fades `percent` of the Actor from the right where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:faderight(percent) end

---Fades `percent` of the Actor from the top where `percent` is in the range 0..1.
---@param percent float
---@return void value
function Actor:fadetop(percent) end

---Finishes up an Actor's tween immediately.
---@return void value
function Actor:finishtweening() end

---[02 Actor.lua] Stretches an Actor to fill the entire screen.
---@return void value
function Actor:FullScreen() end

---Returns the Actor's aux value.
---@return float value
function Actor:getaux() end

---Returns the Actor's base X zoom value.
---@return float value
function Actor:GetBaseZoomX() end

---Returns the Actor's base Y zoom value.
---@return float value
function Actor:GetBaseZoomY() end

---Returns the Actor's base Z zoom value.
---@return float value
function Actor:GetBaseZoomZ() end

---Returns `true` if the Actor has a command named `sCmdName`.
---@param sCmdName string
---@return bool value
function Actor:GetCommand(sCmdName) end

---Returns the Actor's current diffuse color.
---@return color value
function Actor:GetDiffuse() end

---Returns the Actor's current diffusealpha.
---@return float value
function Actor:GetDiffuseAlpha() end

---Returns the Actor's current effect delta.
---@return float value
function Actor:GetEffectDelta() end

---Returns the Actor's current effect magnitude as three floats.
---@return float, float, float value
function Actor:geteffectmagnitude() end

---Returns the Actor's current glow color.
---@return color value
function Actor:GetGlow() end

---Returns the Actor's horizontal alignment as a number in the range 0..1.
---@return float value
function Actor:GetHAlign() end

---Returns the Actor's name.
---@return string value
function Actor:GetName() end

---Returns the number of states the Actor has.
---@return int value
function Actor:GetNumStates() end

---Returns the Actor's current height.
---@return float value
function Actor:GetHeight() end

---Returns the Actor's current X, Y, and Z rotation in degrees as three separate floats.
---@return float, float, float value
function Actor:getrotation() end

---Returns the Actor's current X rotation in degrees.
---@return float value
function Actor:GetRotationX() end

---Returns the Actor's current Y rotation in degrees.
---@return float value
function Actor:GetRotationY() end

---Returns the Actor's current Z rotation in degrees.
---@return float value
function Actor:GetRotationZ() end

---Returns the number of seconds into the currently running effect (e.g. diffuseshift, bob).
---@return float value
function Actor:GetSecsIntoEffect() end

---Returns how much time is remaining for the current tween.
---@return float value
function Actor:GetTweenTimeLeft() end

---Returns the Actor's vertical alignment as a number in the range 0..1.
---@return float value
function Actor:GetVAlign() end

---Returns the Actor's current width.
---@return float value
function Actor:GetWidth() end

---Returns the zoomed height of an Actor.
---@return float value
function Actor:GetZoomedHeight() end

---Returns the zoomed width of an Actor.
---@return float value
function Actor:GetZoomedWidth() end

---Returns true if this actor is currently set to use the effect delta for tweening.
---@return bool value
function Actor:get_tween_uses_effect_delta() end

---Sets the Actor's glow color.
---@param c color
---@return void value
function Actor:glow(c) end

---Makes the Actor glow between two colors immediately.
---See
---for an example.
---@return void value
function Actor:glowblink() end

---Makes the Actor glow between two colors smoothly, jumping back to the first at the end.
---See
---for an example.
---@return void value
function Actor:glowramp() end

---Makes the Actor glow between two colors smoothly.
---See
---for an example.
---@return void value
function Actor:glowshift() end

---Set the fractional horizontal alignment of the Actor according to `fAlign` which should be a float in the range 0..1. An alignment of 0 is left-aligned while an alignment of 1 is right-aligned.
---Use  for the common case.
---@param fAlign float
---@return void value
function Actor:halign(fAlign) end

---Sets the heading of this Actor to `fHeading`.
---@param fHeading float
---@return void value
function Actor:heading(fHeading) end

---Hides the Actor for the specified amount of time.
---@param fTime float
---@return void value
function Actor:hibernate(fTime) end

---[Deprecated] Compatibility alias for the hidden command, which was removed in sm-ssc. Use  instead.
---@param b bool
---@return void value
function Actor:hidden(b) end

---[02 Actor.lua] "Hide if `b` is `true`, but don't unhide if `b` is `false`."
---@param b bool
---@return void value
function Actor:hide_if(b) end

---Set the  of the Actor according to `align`.
---
---Use  for fractional alignment.
---@param align HorizAlign
---@return void value
function Actor:horizalign(align) end

---Hurries up an Actor's tweening by `factor`.
---@param factor float
---@return void value
function Actor:hurrytweening(factor) end

---Plays the commands that follow at a normal (linear) rate, where `fRate` is in seconds.
---`linear` is a basic tween command, along with , , , and .
---@param fRate float
---@return void value
function Actor:linear(fRate) end

---[02 Lyrics.lua] Plays the lyric command for the specified `side` (`"Back"` or `"Front"`).
---@param side string
---@return void value
function Actor:LyricCommand(side) end

---Sets the Actor's name to `sName`.
---@param sName string
---@return void value
function Actor:name(sName) end

---Stops the Actor's movement. (Usually used for Sprites or Models.)
---@return void value
function Actor:pause() end

---Sets the pitch of this Actor to `fPitch`.
---@param fPitch float
---@return void value
function Actor:pitch(fPitch) end

---Starts the Actor's movement. (Usually used for Sprites or Models.)
---@return void value
function Actor:play() end

---Plays a command named `sCommandName`.  `params` is passed to the command as an argument if it is a table.
---@param sCommandName string
---@param params table
---@return void value
function Actor:playcommand(sCommandName,params) end

---[02 Actor.lua] Sets the visibility of the Actor based on `p` being a human player.
---@param p PlayerNumber
---@return void value
function Actor:player(p) end

---Makes the Actor grow and shrink. Can use  to define different pulsing behavior.
---@return void value
function Actor:pulse() end

---Queues a command named `sCommandName` to be played.
---@param sCommandName string
---@return void value
function Actor:queuecommand(sCommandName) end

---Basically creates a command named `!sMessageName` (Note the ! at the beginning. The source code says this: "Hack: use "!" as a marker to broadcast a command, instead of playing a command, so we don't have to add yet another element to every tween state for this rarely-used command.")
---@param sMessageName string
---@return void value
function Actor:queuemessage(sMessageName) end

---Makes the Actor change colors continually using colors of the rainbow.  Each channel follows a cosine wave, red starts at 0, green starts at 2pi/3, and blue starts at 4pi/3.
---@return void value
function Actor:rainbow() end

---Sets the roll of this Actor to `fRoll`.
---@param fRoll float
---@return void value
function Actor:roll(fRoll) end

---Set the Actor's rotation on the X axis to `fRotation` degrees.
---@param fRotation float
---@return void value
function Actor:rotationx(fRotation) end

---Set the Actor's rotation on the Y axis to `fRotation` degrees.
---@param fRotation float
---@return void value
function Actor:rotationy(fRotation) end

---Set the Actor's rotation on the Z axis to `fRotation` degrees.
---@param fRotation float
---@return void value
function Actor:rotationz(fRotation) end

---Recursively runs the commands in `cmds` on the Actor's children, as well as the Actor itself.
---Since `RunCommandsRecursively` belongs to StepMania's base `Actor` class, it is available to all specialized actors.  Calling it from an ActorFrame or ActorFrameTexture can be helpful, as those specialized actors can contain children actors.
---See `ActorFrame:RunCommandsOnChildren` and `ActorFrame:runcommandsonleaves` for related needs.
---Example:
---@param cmds LuaReference
---@return void value
function Actor:RunCommandsRecursively(cmds) end

---[02 Actor.lua] An alternative version of .
---@return void value
function Actor:scale_or_crop_alternative() end

---[02 Actor.lua]
---@return void value
function Actor:scale_or_crop_background() end

---Scales the Actor to cover a rectangle defined by the four float arguments.
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
---@return void value
function Actor:scaletocover(fLeft,fTop,fRight,fBottom) end

---Scales the Actor to fit inside a rectangle defined by the four float arguments.
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
---@return void value
function Actor:scaletofit(fLeft,fTop,fRight,fBottom) end

---Sets the height of the Actor.
---@param height float
---@return void value
function Actor:SetHeight(height) end

---Sets the size of the Actor.
---@param width float
---@param height float
---@return void value
function Actor:setsize(width,height) end

---[01 alias.lua] Alias for setsize.
---@param width float
---@param height float
---@return void value
function Actor:SetSize(width,height) end

---Sets a multi-framed Actor's state to `iNewState`.
---@param iNewState int
---@return void value
function Actor:setstate(iNewState) end

---Sets the width of the Actor.
---@param width float
---@return void value
function Actor:SetWidth(width) end

---Use this to make the actor use the effect clock to tween instead of using the global frame delta.
---@param var bool
function Actor:set_tween_uses_effect_delta(var) end

---Sets the shadow's color to `c`.
---@param c color
---@return void value
function Actor:shadowcolor(c) end

---Sets the Actor's shadow length to `fLength`.
---@param fLength float
---@return void value
function Actor:shadowlength(fLength) end

---Sets the Actor's horizontal shadow length to `fLength`.
---@param fLength float
---@return void value
function Actor:shadowlengthx(fLength) end

---Sets the Actor's vertical shadow length to `fLength`.
---@param fLength float
---@return void value
function Actor:shadowlengthy(fLength) end

---Skews the Actor on the x axis by `fAmount`.
---@param fAmount float
---@return void value
function Actor:skewx(fAmount) end

---Skews the Actor on the y axis by `fAmount`.
---@param fAmount float
---@return void value
function Actor:skewy(fAmount) end

---Waits `fSeconds` before executing the next command.
---@param fSeconds float
---@return void value
function Actor:sleep(fSeconds) end

---[02 Actor.lua]
---@param time float
---@return void value
function Actor:smooth(time) end

---Tells the Actor to spin. Can use  to define different spinning behavior.
---@return void value
function Actor:spin() end

---`spring` is a basic tween command, along with , , , and .
function Actor:spring() end

---Stops any effect the Actor has.
---@return void value
function Actor:stopeffect() end

---Stops any tweening.
---@return void value
function Actor:stoptweening() end

---Stretches the Actor to a rectangle of a specific size.
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return void value
function Actor:stretchto(x1,y1,x2,y2) end

---Translates the texture of the actor by x and y.
---@param x float
---@param y float
---@return void value
function Actor:texturetranslate(x,y) end

---Determines if the Actor should use texture wrapping or not.
---@param bWrap bool
---@return void value
function Actor:texturewrapping(bWrap) end

---Generic method for tweening an actor.
---`time` is in seconds.  `type` is a `ENUM:TweenType`
---If the type is `TweenType_Bezier`, then the `params` table must have 4 or 8 numbers.  4 numbers creates a 1 dimensional bezier curve, 8 numbers creates a 2 dimensional bezier curve.
---If the type is not `TweenType_Bezier`, the `params` table is ignored.
---It's usually more convenient to use , , , or  rather than using Actor:tween() directly.
---@param time float
---@param type TweenType
---@param params table
function Actor:tween(time,type,params) end

---Set the fractional vertical alignment of the Actor according to `fAlign` which should be a float in the range 0..1. An alignment of 0 is top-aligned while an alignment of 1 is bottom-aligned.
---Use  for the common case.
---@param fAlign float
---@return void value
function Actor:valign(fAlign) end

---Set the `ENUM:VertAlign` of the Actor according to `align`.
---
---Use  for fractional alignment.
---@param align VertAlign
---@return void value
function Actor:vertalign(align) end

---Makes the Actor vibrate violently. Can use  to define different vibration behavior.
---@return void value
function Actor:vibrate() end

---Sets an Actor's visibility to b.
---@param b bool
---@return void value
function Actor:visible(b) end

---Makes the Actor wag. Use  to define different wag behavior.
---@return void value
function Actor:wag() end

---Set the x position of the Actor to `xPos`.
---@param xPos float
---@return void value
function Actor:x(xPos) end

---Set the y position of the Actor to `yPos`.
---@param yPos float
---@return void value
function Actor:y(yPos) end

---Set the z position of the Actor to `zPos`.
---@param zPos float
---@return void value
function Actor:z(zPos) end

---Sets the z bias to `fBias`.
---@param fBias float
---@return void value
function Actor:zbias(fBias) end

---Enables/disables z-buffer depending on `bUse`.
---@param bUse bool
---@return void value
function Actor:zbuffer(bUse) end

---Zooms the Actor to `zoom` scale.
---@param zoom float
---@return void value
function Actor:zoom(zoom) end

---Zooms the Actor on both the X and Y axis using `zoomX` and `zoomY`.
---@param zoomX float
---@param zoomY float
---@return void value
function Actor:zoomto(zoomX,zoomY) end

---Zooms the Actor to `zoom` height. See also: .
---@param zoom float
---@return void value
function Actor:zoomtoheight(zoom) end

---Zooms the Actor to `zoom` width. See also: .
---@param zoom float
---@return void value
function Actor:zoomtowidth(zoom) end

---Zooms the Actor to `zoom` scale on the X axis.
---@param zoom float
---@return void value
function Actor:zoomx(zoom) end

---Zooms the Actor to `zoom` scale on the Y axis.
---@param zoom float
---@return void value
function Actor:zoomy(zoom) end

---Zooms the Actor to `zoom` scale on the Z axis.
---@param zoom float
---@return void value
function Actor:zoomz(zoom) end

---Sets the z testing mode to write on pass if `true`, turns it off if `false`
---@param bTest bool
---@return void value
function Actor:ztest(bTest) end

---Sets the z testing mode to `testMode`.
---@param testMode ZTestMode
---@return void value
function Actor:ztestmode(testMode) end

---Sets z writing to `true` or `false` based on `bWrite`.
---@param bWrite bool
---@return void value
function Actor:zwrite(bWrite) end

---[02 Actor.lua] Plays the commands that follow using a bezier curve to determine the rate.  The curve must have 4 or 8 elements.  This is a convenience wrapper around calling Actor:tween with TweenType_Bezier.
---@param time float
---@param curve table
function Actor:bezier(time,curve) end

---[02 Actor.lua] Stretches an Actor to cover the screen. (equivalent to `stretchto,0,0,SCREEN_WIDTH,SCREEN_HEIGHT`)
---@return void value
function Actor:FullScreen() end

---[02 Actor.lua] A customized version of pulse that is more appealing for on-beat effects.
---@param fEffectPeriod float
---@return void value
function Actor:heartbeat(fEffectPeriod) end

---[02 Actor.lua] Sets and Actor as a mask destination.
---@return void value
function Actor:MaskDest() end

---[02 Actor.lua] Sets an Actor as a mask source. (Also clears zbuffer; other mask sources need to not clear the zbuffer)
---@return void value
function Actor:MaskSource() end

---[02 Actor.lua] Make graphics their true size at any resolution.
---@param f float
---@return void value
function Actor:Real(f) end

---[02 Actor.lua] Scale things back up after they have already been scaled down.
---@param f float
---@return void value
function Actor:RealInverse(f) end

---[02 Actor.lua] A customized version of pulse that is more appealing for on-beat effects.
---@param fEffectPeriod float
---@return void value
function Actor:thump(fEffectPeriod) end

---Sets the x and y location of the Actor in one command.
---@param actorX float
---@param actorY float
---@return void value
function Actor:xy(actorX,actorY) end

---@class ActorFrame: Actor

---Adds a child to the ActorFrame from the specified path.
---@param sPath string
---@return bool value
function ActorFrame:AddChildFromPath(sPath) end

---Sets the field of view for the ActorFrame.
---@param fFOV float
---@return void value
function ActorFrame:fov(fFOV) end

---Returns the child with a name of `sName`.
---If there are multiple children with that name, returns an array of those children.
---The table also acts as a pass through layer, function calls pass through to the last child of that name.
---@param sName string
---@return Actor value
function ActorFrame:GetChild(sName) end

---Returns a table of all the children in the ActorFrame.
---The table is indexed by the names of the children.
---If there are multiple children with the same name, the entry for that name is an array of those children.
---The table also acts as a pass through layer, function calls pass through to the last child of that name.
---@return table value # {Actor}
function ActorFrame:GetChildren() end

---Gets the ActorFrame's Draw function.
---@return LuaReference value
function ActorFrame:GetDrawFunction() end

---Returns the number of children in the ActorFrame.
---@return int value
function ActorFrame:GetNumChildren() end

---Gets the update function's rate.
---@return float value
function ActorFrame:GetUpdateRate() end

---Plays the `sCommandName` command on the ActorFrame's children.
---@param sCommandName string
---@return void value
function ActorFrame:playcommandonchildren(sCommandName) end

---Plays the `sCommandName` command on the ActorFrame's leaves.
---@param sCommandName string
---@return void value
function ActorFrame:playcommandonleaves(sCommandName) end

---Sets if the Actorframe should propagate commands to its children.
---@param bPropagate bool
---@return void value
function ActorFrame:propagate(bPropagate) end

---[02 Actor.lua] Propagates a command to the ActorFrame's children.
---@param cmd LuaReference
---@return void value
function ActorFrame:propagatecommand(cmd) end

---Removes all the children from the ActorFrame.
---@return void value
function ActorFrame:RemoveAllChildren() end

---Removes the specified child from the ActorFrame.
---@param sChild string
---@return void value
function ActorFrame:RemoveChild(sChild) end

---Runs the commands in `cmds` on the ActorFrame's immediate children.
---See `Actor:RunCommandsRecursively` and  for related needs.
---Example:
---@param cmds LuaReference
---@return void value
function ActorFrame:RunCommandsOnChildren(cmds) end

---Runs the commands in `cmds` on the ActorFrame's leaves.  Leaves are nodes in the ActorFrame tree that have no further child nodes.
---See  and `Actor:RunCommandsRecursively` for related needs.
---Example:
---@param cmds LuaReference
---@return void value
function ActorFrame:runcommandsonleaves(cmds) end

---Sets the ActorFrame's ambient light color to `c`.
---@param c Color
---@return void value
function ActorFrame:SetAmbientLightColor(c) end

---Sets the ActorFrame's diffuse light color to `c`.
---@param c Color
---@return void value
function ActorFrame:SetDiffuseLightColor(c) end

---Sets if the ActorFrame should draw by Z position.
---@param b bool
---@return void value
function ActorFrame:SetDrawByZPosition(b) end

---Sets the ActorFrame's Draw function to the specified Lua function.
---@param DrawFunction LuaReference
---@return void value
function ActorFrame:SetDrawFunction(DrawFunction) end

---Sets the field of view for the ActorFrame.
---@param fFOV float
---@return void value
function ActorFrame:SetFOV(fFOV) end

---Currently unimplemented since it does not handle errors correctly. Arguments must be passed in as a table.
---@param x float
---@param y float
---@param z float
---@return void value
function ActorFrame:SetLightDirection(x,y,z) end

---Sets the ActorFrame's specular light color to `c`.
---@param c Color
---@return void value
function ActorFrame:SetSpecularLightColor(c) end

---Sets the ActorFrame's update function to the specified Lua function.
---@param UpdateFunction LuaReference
---@return void value
function ActorFrame:SetUpdateFunction(UpdateFunction) end

---Sets the update function's rate to `fRate`.
---@param fRate float
---@return void value
function ActorFrame:SetUpdateRate(fRate) end

---Tells the ActorFrame to sort by draw order.
---@return void value
function ActorFrame:SortByDrawOrder() end

---Sets the vanishing point for the ActorFrame.
---@param fX float
---@param fY float
---@return void value
function ActorFrame:vanishpoint(fX,fY) end

---@class ActorFrameTexture: Actor

---Creates the ActorFrameTexture.
---@return void value
function ActorFrameTexture:Create() end

---Enables/disables the Alpha Buffer.
---@param bEnable bool
---@return void value
function ActorFrameTexture:EnableAlphaBuffer(bEnable) end

---Enables/disables the Depth Buffer.
---@param bEnable bool
---@return void value
function ActorFrameTexture:EnableDepthBuffer(bEnable) end

---Enables/disables
---@param bEnable bool
---@return void value
function ActorFrameTexture:EnableFloat(bEnable) end

---Enables/disables the Preserve Texture option.
---@param bEnable bool
---@return void value
function ActorFrameTexture:EnablePreserveTexture(bEnable) end

---Returns the texture.
---@return RageTexture value
function ActorFrameTexture:GetTexture() end

---Sets the Texture's name to `sName`.
---@param sName string
---@return void value
function ActorFrameTexture:SetTextureName(sName) end

---@class ActorMultiTexture: Actor

---Adds a texture to the ActorMultiTexture. Returns the number of texture units.
---@param tex RageTexture
---@return int value
function ActorMultiTexture:AddTexture(tex) end

---Clears all the textures from the ActorMultiTexture.
---@return void value
function ActorMultiTexture:ClearTextures() end

---Sets the `ENUM:EffectMode` on the ActorMultiTexture.
---@param em EffectMode
---@return void value
function ActorMultiTexture:SetEffectMode(em) end

---Sets the size of the ActorMultiTexture from the specified texture.
---@param tex RageTexture
---@return void value
function ActorMultiTexture:SetSizeFromTexture(tex) end

---Sets the coordinates of the ActorMultiTexture.
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return void value
function ActorMultiTexture:SetTextureCoords(x1,y1,x2,y2) end

---Sets a `ENUM:TextureMode` on the specified index.
---@param iIndex int
---@param tm TextureMode
---@return void value
function ActorMultiTexture:SetTextureMode(iIndex,tm) end

---@class ActorMultiVertex: Actor

---The list of quad states is used to determine which animation state is used for each quad.  The offset is added to the AMV's current state, and the resulting state is used.
---@param offset int
function ActorMultiVertex:AddQuadState(offset) end

---Adds an animation state to the ActorMultiVertex.  The state_data table must be like this:
---{{left, top, right, bottom}, delay}
---left, top, right, and bottom are pixel coordinates, starting at 0.  If delay is 0 or negative, the state will last forever.
---@param state_data table
function ActorMultiVertex:AddState(state_data) end

---Forces the AMV to update the texture coordinates on all its quads, even if the current state has not changed.
function ActorMultiVertex:ForceStateUpdate() end

---Returns whether the AMV uses the animation state.
---@return bool value
function ActorMultiVertex:GetUseAnimationState() end

---Sets whether the AMV uses the animation state.
---This works best when using DrawMode_Quads.
---AMV's can have animated textures like sprites.  Each state tells the AMV what part of the texture to use, and how long the state lasts.
---Use AddState to add a state onto the end, or SetStateProperties to set all the states at once, or SetState to set a single state.
---Each quad has its own offset that is added to the current state.  Use AddQuadState to add to the list of quad states, or SetQuadState to set an existing quad state.
---@param use bool
function ActorMultiVertex:SetUseAnimationState(use) end

---Returns the number of states the AMV has.
---@return int value
function ActorMultiVertex:GetNumStates() end

---Returns the number of quad states in the destination tween state for the AMV.
---@return int value
function ActorMultiVertex:GetNumQuadStates() end

---Returns the id of the current state.
---@return int value
function ActorMultiVertex:GetState() end

---Gets whether the AMV should call the decode function for its texture during updates.
---@return bool value
function ActorMultiVertex:GetDecodeMovie() end

---Sets whether the AMV should call the decode function for its texture during updates.
---@param decode bool
function ActorMultiVertex:SetDecodeMovie(decode) end

---Sets the current state.
---@param id int
function ActorMultiVertex:SetState(id) end

---Returns the offset of the requested quad state.
---@param id int
---@return int value
function ActorMultiVertex:GetQuadState(id) end

---Sets the offset of the requested quad state.
---@param id int
---@param offset int
function ActorMultiVertex:SetQuadState(id,offset) end

---Returns a table containing the data for the requested state.
---@param id int
---@return table value
function ActorMultiVertex:GetStateData(id) end

---Sets the requested state to the data in state_data.  Similar to AddState, but SetStateData only works on states that have already been added.
---@param id int
---@param state_data table
function ActorMultiVertex:SetStateData(id,state_data) end

---Removes the requested state from the state list.
---@param id int
function ActorMultiVertex:RemoveState(id) end

---Removes the requested quad state from the quad state list.
---@param id int
function ActorMultiVertex:RemoveQuadState(id) end

---Sets the delay for every state to delay.
---@param delay float
function ActorMultiVertex:SetAllStateDelays(delay) end

---Sets how far into its animation the AMV is.
---@param seconds float
function ActorMultiVertex:SetSecondsIntoAnimation(seconds) end

---Sets multiple vertices at once. The elements of `vertices` should themselves be tables, of the form provided to SetVertex (`ActorMultiVertex:SetVertex`). If `vertices` is the first argument it will start from vertex 1. If an integer is provided before `vertices` it will start from that vertex. It will add vertices as necessary.
---Example: self:SetVertices( { { { x1, y1, z1 } , { r1,g1,b1,a1 } , { tcx1,tcy1 } }; { { x2, y2, z2 } , { r2,g2,b2,a2 } , { tcx2,tcy2 } } } )
---@param first int
---@param vertices table
---@return void value
function ActorMultiVertex:SetVertices(first,vertices) end

---Sets all the drawn verts of the ActorMultiVertex by evaluating the splines.
---("all the drawn verts" means all the verts between FirstToDraw and NumToDraw, the verts that are set to draw in the current tween state.)
---The parts of the ActorMultiVertex are evenly spaced along the spline in terms of t value.
---The exact behavior depends on the draw mode.
---DrawMode_Quads uses all 4 splines, one for each corner.
---DrawMode_QuadStrip and DrawMode_Strip use 2 splines, one for each edge of the strip.
---DrawMode_Fan uses one spline, for the edge verts of the fan.  The first vert is not touched because it is the center.
---DrawMode_Triangles uses 3 splines, one for each corner.
---DrawMode_SymmetricQuadStrip uses 3 splines, one on each edge and one in the center.
---DrawMode_LineStrip uses 1 spline.
function ActorMultiVertex:SetVertsFromSplines() end

---Returns the requested spline.  Spline indices range from 1 to 4.
---ActorMultiVertex splines are not inside the tween state, and will not change the verts until you call SetVertsFromSplines.
---@param i int
---@return CubicSplineN value
function ActorMultiVertex:GetSpline(i) end

---Sets the number of vertices.
---@param num int
---@return void value
function ActorMultiVertex:SetNumVertices(num) end

---Returns the number of vertices
---@param var void
---@return void value
function ActorMultiVertex:GetNumVertices(var) end

---Get the DrawMode (`ENUM:DrawMode`) of the destination tween state.
---@param var void
---@return DrawMode value
function ActorMultiVertex:GetDestDrawMode(var) end

---Get the FirstToDraw of the destination tween state.
---@param var void
---@return int value
function ActorMultiVertex:GetDestFirstToDraw(var) end

---Get the NumToDraw of the destination tween state.
---@param var void
---@return int value
function ActorMultiVertex:GetDestNumToDraw(var) end

---Get the DrawMode (`ENUM:DrawMode`) of the current tween state.
---@param var void
---@return DrawMode value
function ActorMultiVertex:GetCurrDrawMode(var) end

---Get the FirstToDraw of the current tween state.
---@param var void
---@return int value
function ActorMultiVertex:GetCurrFirstToDraw(var) end

---Get the NumToDraw of the current tween state.
---@param var void
---@return int value
function ActorMultiVertex:GetCurrNumToDraw(var) end

---Returns the ActorMultiVertex's texture.
---@return RageTexture value
function ActorMultiVertex:GetTexture() end

---Sets the `ENUM:EffectMode` of the ActorMultiVertex.
---@param em EffectMode
---@return void value
function ActorMultiVertex:SetEffectMode(em) end

---Sets the `ENUM:TextureMode` of the ActorMultiVertex.
---@param tm TextureMode
---@return void value
function ActorMultiVertex:SetTextureMode(tm) end

---Sets the width of the line for DrawMode_LineStrip.
---@param width float
---@return void value
function ActorMultiVertex:SetLineWidth(width) end

---Sets the texture to `texture`
---@param texture RageTexture
---@return void value
function ActorMultiVertex:SetTexture(texture) end

---Sets the texture at from the file path `path`.
---@param path string
---@return void value
function ActorMultiVertex:LoadTexture(path) end

---@class ActorProxy: Actor

---Returns the target of the ActorProxy.
---@return Actor value
function ActorProxy:GetTarget() end

---Sets the ActorProxy target to `a`.
---@param a Actor
---@return void value
function ActorProxy:SetTarget(a) end

---@class ActorScroller: Actor

---Returns the scroller's current item.
---@return float value
function ActorScroller:GetCurrentItem() end

---Returns the item the scroller's going to.
---@return float value
function ActorScroller:GetDestinationItem() end

---Returns how long it will take for the scroller to completely scroll through all its items.
---@return float value
function ActorScroller:GetFullScrollLengthSeconds() end

---Returns the number of items in the ActorScroller.
---@return int value
function ActorScroller:GetNumItems() end

---Returns the number of seconds the scroller pauses between items.
---@return float value
function ActorScroller:GetSecondsPauseBetweenItems() end

---Returns the number of seconds until the scroller reaches its destination.
---@return float value
function ActorScroller:GetSecondsToDestination() end

---Compatibility alias for .
---@return float value
function ActorScroller:getsecondtodestination() end

---Positions the scroller items.
---@return void value
function ActorScroller:PositionItems() end

---Scrolls through all the items in the scroller.
---@return void value
function ActorScroller:ScrollThroughAllItems() end

---Compatibility alias for .
---@return void value
function ActorScroller:scrollthroughallitems() end

---Scrolls through all the items in the scroller with padding at the beginning and end.
---@param fItemPaddingStart float
---@param fItemPaddingEnd float
---@return void value
function ActorScroller:ScrollWithPadding(fItemPaddingStart,fItemPaddingEnd) end

---Compatibility alias for .
---@param fItemPaddingStart float
---@param fItemPaddingEnd float
---@return void value
function ActorScroller:scrollwithpadding(fItemPaddingStart,fItemPaddingEnd) end

---Sets the item the scroller should scroll to next and makes it the current item.
---@param fItemIndex float
---@return void value
function ActorScroller:SetCurrentAndDestinationItem(fItemIndex) end

---Sets the item the scroller should scroll to next.
---@param fItemIndex float
---@return void value
function ActorScroller:SetDestinationItem(fItemIndex) end

---Sets if the scroller should catch up fast.
---@param bOn bool
---@return void value
function ActorScroller:SetFastCatchup(bOn) end

---Compatibility alias for .
---@param bOn bool
---@return void value
function ActorScroller:setfastcatchup(bOn) end

---Specifies if the scroller should loop or not.
---@param bLoop bool
---@return void value
function ActorScroller:SetLoop(bLoop) end

---Sets the scroller's mask to a Quad that is `fWidth` by `fHeight` pixels.
---@param fWidth float
---@param fHeight float
---@return void value
function ActorScroller:SetMask(fWidth,fHeight) end

---Sets the scroller to draw `fNumItems` items.
---@param fNumItems float
---@return void value
function ActorScroller:SetNumItemsToDraw(fNumItems) end

---Sets the number of subdivisions in the scroller.
---@param iNumSubdivisions int
---@return void value
function ActorScroller:SetNumSubdivisions(iNumSubdivisions) end

---Compatibility alias for .
---@param iNumSubdivisions int
---@return void value
function ActorScroller:setnumsubdivisions(iNumSubdivisions) end

---Sets the scroller's pause countdown to `fSecs`.
---@param fSecs float
---@return void value
function ActorScroller:SetPauseCountdownSeconds(fSecs) end

---Sets the scroller's pause between items to `fSeconds`.
---@param fSeconds float
---@return void value
function ActorScroller:SetSecondsPauseBetweenItems(fSeconds) end

---Sets how many seconds the scroller should spend on each item.
---A value of `0` means the scroller will not scroll.
---@param fSeconds float
---@return void value
function ActorScroller:SetSecondsPerItem(fSeconds) end

---Compatibility alias for .
---@param fSeconds float
---@return void value
function ActorScroller:setsecondsperitem(fSeconds) end

---Sets the scroller's transform function to the specified Lua function.
---@param ScrollerFunction LuaReference
---@return void value
function ActorScroller:SetTransformFromFunction(ScrollerFunction) end

---Sets the scroller's transform function from `fItemHeight`.
---@param fItemHeight float
---@return void value
function ActorScroller:SetTransformFromHeight(fItemHeight) end

---Sets the scroller's transform function from `fItemWidth`.
---@param fItemWidth float
---@return void value
function ActorScroller:SetTransformFromWidth(fItemWidth) end

---@class ActorSound: Actor

---Returns the  that can be played by this Actor.
---@return RageSound value
function ActorSound:get() end

---Returns whether the sound is an action.
---@return bool value
function ActorSound:get_is_action() end

---Loads the sound at `sPath`.
---@param sPath string
---@return void value
function ActorSound:load(sPath) end

---Pauses or unpauses the sound based on `bPause`.
---@param bPause bool
---@return void value
function ActorSound:pause(bPause) end

---Plays the sound.
---@return void value
function ActorSound:play() end

---[02 Sound.lua] Plays the sound on the given player's side. You must set `SupportPan = true` on load.
---@param pn PlayerNumber
---@return void value
function ActorSound:playforplayer(pn) end

---Sets whether the sound is an action.
---@param is_action bool
function ActorSound:set_is_action(is_action) end

---Stops the sound.
---@return void value
function ActorSound:stop() end

---@class AnnouncerManager

---Returns true if Announcer `sAnnouncer` exists.
---@param sAnnonucer string
---@return bool value
function AnnouncerManager:DoesAnnouncerExist(sAnnonucer) end

---Returns a table of installed announcers.
---@return table value # {string}
function AnnouncerManager:GetAnnouncerNames() end

---Returns the current announcer's name.
---@return string value
function AnnouncerManager:GetCurrentAnnouncer() end

---Sets the announcer to `sNewAnnouncer`.
---@param sNewAnnouncer string
---@return void value
function AnnouncerManager:SetCurrentAnnouncer(sNewAnnouncer) end

---@class ArchHooks

---Returns `true` if the application presently has focus.
---@return bool value
function ArchHooks:AppHasFocus() end

---Returns the name of the architecture in use.
---@return table value # {string}
function ArchHooks:GetArchName() end

---@class Banner: Actor

---Returns `true` if the Banner is currently scrolling.
---@return bool value
function Banner:GetScrolling() end

---@return float value
function Banner:GetPercentScrolling() end

---Loads the background from an UnlockEntry.
---@param ue UnlockEntry
---@return void value
function Banner:LoadBackgroundFromUnlockEntry(ue) end

---Loads the banner from an UnlockEntry.
---@param ue UnlockEntry
---@return void value
function Banner:LoadBannerFromUnlockEntry(ue) end

---Loads the card image from the specified Character.
---@param pCharacter Character
---@return void value
function Banner:LoadCardFromCharacter(pCharacter) end

---Loads the banner from the cache based on `sPath` (typically `Song:GetBannerPath` or `Course:GetBannerPath`).
---@param sPath string
---@return void value
function Banner:LoadFromCachedBanner(sPath) end

---Loads a Banner from a specified Course.
---@param c Course
---@return void value
function Banner:LoadFromCourse(c) end

---Loads a Banner from a specified Song.
---@param s Song
---@return void value
function Banner:LoadFromSong(s) end

---Loads a Banner from a specified Song Group.
---@param s string
---@return void value
function Banner:LoadFromSongGroup(s) end

---Loads a Banner from a specified SortOrder.
---@param so SortOrder
---@return void value
function Banner:LoadFromSortOrder(so) end

---Loads an icon from the specified Character.
---@param pCharacter Character
---@return void value
function Banner:LoadIconFromCharacter(pCharacter) end

---See `Sprite:scaletoclipped`.
---@param fWidth float
---@param fHeight float
---@return void value
function Banner:scaletoclipped(fWidth,fHeight) end

---See `Sprite:scaletoclipped`.
---@param fWidth float
---@param fHeight float
---@return void value
function Banner:ScaleToClipped(fWidth,fHeight) end

---@param bScroll bool
---@return void value
function Banner:SetScrolling(bScroll) end

---@class BitmapText: Actor

---Add the attribute `attr` to the string at position
---`iPos`.
---The attribute is a table that must contain `Length`
---which specifies how many (multi-byte) characters the attribute
---is to apply. If `Length=-1`, then the attribute applies
---until another attribute overrides it.
---If the table contains `Diffuse`, then the color value
---is applied to the range of text.
---If the table contains `Diffuses`, then it should be
---an array of 4 colors which specify the diffuse color for the
---top left, top right, bottom left, and bottom right.
---If the table contains `Glow`, then the color value
---is applied as a glow to the range of text.
---Example:
---`attr = { Length = 10; Diffuse = color("#AABBCC"); }`
---@param iPos int
---@param attr Attribute
---@return void value
function BitmapText:AddAttribute(iPos,attr) end

---Clear all attributes associated with the BitmapText.
---@return void value
function BitmapText:ClearAttributes() end

---[02 Actor.lua] Sets the diffuse and stroke color of text in one command.
---@param diffuseColor color
---@param strokeColor color
---@return void value
function BitmapText:DiffuseAndStroke(diffuseColor,strokeColor) end

---Returns the text that is currently set.
---@return string value
function BitmapText:GetText() end

---Causes each character of text to be randomly distorted by
---distortion_percentage of its size when the text is set.  The distortion
---only changes when the text changes.
---@param distortion_percentage float
---@return void value
function BitmapText:distort(distortion_percentage) end

---Turns off distortion.
---@return void value
function BitmapText:undistort() end

---Returns whether the diffuse colors in the attributes are multiplied by the general diffuse colors of the BitmapText.
---@return bool value
function BitmapText:get_mult_attrs_with_diffuse() end

---If mult_attrs_with_diffuse is set to true, then the diffuse colors in the attributes are multiplied by the general diffuse colors of the BitmapText.
---@param mult bool
function BitmapText:set_mult_attrs_with_diffuse(mult) end

---If `bJitter` is `true`, move each character of the string around by a small random amount.
---@param bJitter bool
---@return void value
function BitmapText:jitter(bJitter) end

---If use_zoom is true, this BitmapText will use the zoom that has been applied to it when calculating to change its base zoom from maxheight or maxwidth.
---@param use_zoom bool
---@return void value
function BitmapText:max_dimension_use_zoom(use_zoom) end

---Set the maximum height of the unzoomed text to `fHeight`. If `fHeight` is `0`, then there is no maximum height.
---@param fHeight float
---@return void value
function BitmapText:maxheight(fHeight) end

---Set the maximum width of the unzoomed text to `fWidth`. If `fWidth` is `0`, then there is no maximum width.
---@param hWidth float
---@return void value
function BitmapText:maxwidth(hWidth) end

---[02 Actor.lua] Remove any stroke color.
---@return void value
function BitmapText:NoStroke() end

---[02 Actor.lua] Alias for setting `Actor:SetTextureFiltering` to `false`.
---@return void value
function BitmapText:PixelFont() end

---If `true`, set each character of the text in turn to the rainbow colors in the metrics `BitmapText::RainbowColor#`.
---@param bRainbowScroll bool
---@return void value
function BitmapText:rainbowscroll(bRainbowScroll) end

---Set the text to `sText`. This clears all attributes.
---@param sText string
---@return void value
function BitmapText:settext(sText) end

---[02 Actor.lua] Sets text using `string.format(sFormat, ...)`.
---@param sFormat string
---@param ... 
---@return void value
function BitmapText:settextf(sFormat,...) end

---[02 Actor.lua] Alias for .
---@param c color
---@return void value
function BitmapText:Stroke(c) end

---Sets the stroke color to `c`.
---@param c color
---@return void value
function BitmapText:strokecolor(c) end

---If the text is glowing, specify if just the stroke layer, just the inner layer, or both are affected by the glow.
---@param tgm TextGlowMode
---@return void value
function BitmapText:textglowmode(tgm) end

---If `true`, make all text uppercase.
---@param b bool
---@return void value
function BitmapText:uppercase(b) end

---Add `iSpacing` pixels of padding between lines of text.
---@param iSpacing int
---@return void value
function BitmapText:vertspacing(iSpacing) end

---Wrap the unzoomed text at `iWidth` pixels. If you `Actor:zoom` or `Actor:zoomx` by `x` and you want the text wrapped at `width`, then you should use `wrapwidthpixels(width/x)`.
---@param iWidth int
---@return void value
function BitmapText:wrapwidthpixels(iWidth) end

---@class BPMDisplay: Actor

---Returns the text that is currently set at the exact moment you call it. This is likely only going to be useful in an Update command.
---@return string value
function BPMDisplay:GetText() end

---Sets the BPMDisplay from the specified Course.
---@param c Course
---@return void value
function BPMDisplay:SetFromCourse(c) end

---Sets the BPMDisplay from the GameState.
---@return void value
function BPMDisplay:SetFromGameState() end

---Sets the BPMDisplay from the specified Song.
---@param s Song
---@return void value
function BPMDisplay:SetFromSong(s) end

---Sets the BPMDisplay from the specified Steps.
---@param s Steps
---@return void value
function BPMDisplay:SetFromSteps(s) end

---@class Character

---Returns the path to the character's card graphic.
---@return string value
function Character:GetCardPath() end

---Returns this character's directory.
---@return string value
function Character:GetCharacterDir() end

---Returns this character's ID.
---@return string value
function Character:GetCharacterID() end

---Returns the path of the dancing animation of this character.
---@return string value
function Character:GetDanceAnimationPath() end

---Returns the character's display name.
---@return string value
function Character:GetDisplayName() end

---Returns the path to the character's icon.
---@return string value
function Character:GetIconPath() end

---Returns the path of the model of this character.
---@return string value
function Character:GetModelPath() end

---Returns the path of the rest animation of this character.
---@return string value
function Character:GetRestAnimationPath() end

---Returns the path to the character's ScreenSelectMode icon.
---@return string value
function Character:GetSongSelectIconPath() end

---Returns the path to the character's ScreenStage icon.
---@return string value
function Character:GetStageIconPath() end

---Returns the path of the warm-up animation of this character.
---@return string value
function Character:GetWarmUpAnimationPath() end

---@class CharacterManager

---Returns a table of all characters installed.
---@return table value # {Character}
function CharacterManager:GetAllCharacters() end

---Return the  corresponding to `sID`.
---@param sID string
---@return Character value
function CharacterManager:GetCharacter(sID) end

---Returns a random character.
---@return Character value
function CharacterManager:GetRandomCharacter() end

---Returns the number of characters available.
---@return int value
function CharacterManager:GetCharacterCount() end

---@class ComboGraph: Actor

---Loads the ComboGraph commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
---@return void value
function ComboGraph:Load(sMetricsGroup) end

---Sets the values of the ComboGraph using the specified StageStats and PlayerStageStats.
---@param s StageStats
---@param pss PlayerStageStats
---@return void value
function ComboGraph:Set(s,pss) end

---@class ControllerStateDisplay: Actor

---Loads the ControllerStateDisplay from the specified GameController.
---@param sType string
---@param gc GameController
---@return void value
function ControllerStateDisplay:LoadGameController(sType,gc) end

---Loads the ControllerStateDisplay from the specified MultiPlayer.
---@param sType string
---@param mp MultiPlayer
---@return void value
function ControllerStateDisplay:LoadMultiPlayer(sType,mp) end

---@class Course

---Returns `true` if all of the songs in the course have been defined (as opposed to random songs).
---@return bool value
function Course:AllSongsAreFixed() end

---Returns a table of all the Trails in the Course.
---@return table value # {Trail}
function Course:GetAllTrails() end

---Returns the path to the Course's background.
---@return string value
function Course:GetBackgroundPath() end

---Returns the path to the Course's banner.
---@return string value
function Course:GetBannerPath() end

---Returns the path to the crs file for this Course, for example "/Courses/Default/MostPlayed_01_04.crs".
---@return string value
function Course:GetCourseDir() end

---Returns a table of CourseEntry items.
---@return table value # {CourseEntry}
function Course:GetCourseEntries() end

---Gets the CourseEntry at `iIndex` from the Course.
---@param iIndex int
---@return CourseEntry value
function Course:GetCourseEntry(iIndex) end

---Returns the Course's `ENUM:CourseType`.
---@return CourseType value
function Course:GetCourseType() end

---Returns the description for this Course.
---@return string value
function Course:GetDescription() end

---Returns the full display title of the Course.
---@return string value
function Course:GetDisplayFullTitle() end

---Returns the estimated number of stages for the Course.
---@return int value
function Course:GetEstimatedNumStages() end

---Returns the goal seconds for the Course.
---@return float value
function Course:GetGoalSeconds() end

---Returns the Course's group name.
---@return string value
function Course:GetGroupName() end

---Returns the Course's `ENUM:PlayMode`.
---@return PlayMode value
function Course:GetPlayMode() end

---Returns the name of the person who scripted the Course.
---@return string value
function Course:GetScripter() end

---Returns the total length of the Course in seconds.
---@param st StepsType
---@return float value
function Course:GetTotalSeconds(st) end

---Returns the full transliterated title of the Course.
---@return string value
function Course:GetTranslitFullTitle() end

---Returns `true` if the Course has a background.
---@return bool value
function Course:HasBackground() end

---Returns `true` if the Course has a banner.
---@return bool value
function Course:HasBanner() end

---Returns `true` if the Course has modifiers.
---@return bool value
function Course:HasMods() end

---Returns `true` if the Course has timed modifiers.
---@return bool value
function Course:HasTimedMods() end

---Returns `true` if the Course is an edit.
---@return bool value
function Course:IsAnEdit() end

---Returns `true` if the Course was automatically generated.
---@return bool value
function Course:IsAutogen() end

---Returns `true` if the Course is Endless.
---@return bool value
function Course:IsEndless() end

---Returns `true` if the Course is Nonstop.
---@return bool value
function Course:IsNonstop() end

---Returns `true` if the Course is Oni.
---@return bool value
function Course:IsOni() end

---Returns `true` if the Course is playable in StepsType `st`.
---@param st StepsType
---@return bool value
function Course:IsPlayableIn(st) end

---Returns `true` if the Course is a ranking course.
---@return bool value
function Course:IsRanking() end

---@class CourseContentsList: Actor

---Sets the CourseContentsList from the GameState.
---@return void value
function CourseContentsList:SetFromGameState() end

---@class CourseEntry

---Returns the Song that this CourseEntry corresponds to.
---@return Song value
function CourseEntry:GetSong() end

---Returns the number of lives gained after completing the song.
---@return int value
function CourseEntry:GetGainLives() end

---Returns the number of seconds gained after completing the song.
---@return float value
function CourseEntry:GetGainSeconds() end

---Returns any stage (non-timed) modifiers.
---@return string value
function CourseEntry:GetNormalModifiers() end

---Returns the number of modifier changes in this CourseEntry.
---@return int value
function CourseEntry:GetNumModChanges() end

---Returns a comma-delimited string representing various facts about the CourseEntry.
---@return string value
function CourseEntry:GetTextDescription() end

---Returns `true` if this CourseEntry is a fixed song.
---@return bool value
function CourseEntry:IsFixedSong() end

---Returns `true` if this CourseEntry is secret.
---@return bool value
function CourseEntry:IsSecret() end

---@class CryptManager

---Generates a random UUID (version 4).
---@return string value
function CryptManager:GenerateRandomUUID() end

---Returns the MD5 hash for the file at `sPath`.
---@param sPath string
---@return string value
function CryptManager:MD5File(sPath) end

---Returns the MD5 hash for `s`.
---@param s string
---@return string value
function CryptManager:MD5String(s) end

---Returns the SHA-1 hash for the file at `sPath`.
---@param sPath string
---@return string value
function CryptManager:SHA1File(sPath) end

---Returns the SHA-1 hash for `s`.
---@param s string
---@return string value
function CryptManager:SHA1String(s) end

---Returns the SHA-256 hash for the file at `sPath` as a binary formatted string.
---You can use `GLOBAL:BinaryToHex` to convert to hexadecimal format.
---@param sPath string
---@return string value
function CryptManager:SHA256File(sPath) end

---Returns the SHA-256 hash for `s` as a binary formatted string.
---You can use `GLOBAL:BinaryToHex` to convert to hexadecimal format.
---@param s string
---@return string value
function CryptManager:SHA256String(s) end

---@class CubicSplineN

---Solves the spline, setting the coefficients.
function CubicSplineN:solve() end

---Evaluates the spline at the given t value, returning a table of the results for each dimension of the spline.
---t can range from 0 to the value returned by get_max_t().
---A normal spline will return its starting point for any t value less than 0 and its end point for any t value greater than the max.
---A looped spline adjust the t value to be within the its range by adding or subtracting the max t as needed. (so if the max t is 4 and you evaluate at 5, it will return the same as if you evaluated at 1.)
---@param t float
---@return table value # {float}
function CubicSplineN:evaluate(t) end

---Evaluates the derivative at t.
---@param t float
---@return table value # {float}
function CubicSplineN:evaluate_derivative(t) end

---Evaluates the second derivative at t.
---@param t float
---@return table value # {float}
function CubicSplineN:evaluate_second_derivative(t) end

---Evaluates the third derivative at t.
---Second and third derivative functions exist because they're possible, not because they're expected to be useful.  The fourth derivative would be 0 because the equation for evaluating the spline is "a + (b*t) + (c*t^2) + (d*t^3)".
---@param t float
---@return table value # {float}
function CubicSplineN:evaluate_third_derivative(t) end

---Sets point i of the spline to the position specified by the table p.
---@param i int
---@param p {float}
function CubicSplineN:set_point(i,p) end

---Sets the coefficients of the spline at point i.
---Each table must contain a value for each dimension of the spline.
---Solving the spline normally should cover all normal usage, this is for people that want a spline with an abnormal behavior, so if you set the coefficients  directly, expect to end up with an unsmooth shape.
---@param i int
---@param b {float}
---@param c {float}
---@param d {float}
function CubicSplineN:set_coefficients(i,b,c,d) end

---Returns a table containing the tables of coefficients for the point i.
---@param i int
---@return table value # {{float}, {float}, {float}}
function CubicSplineN:get_coefficients(i) end

---Sets the spatial extent of dimension d of the spline to e.
---The spatial extent exists to handle numbers that exist in a finite looped space, instead of the flat infinite space.
---To put it more concretely, spatial extent exists to allow a spline to control rotation with wrapping behavior at 0.0 and 2pi, instead of suddenly jerking from 2pi to 0.0.
---@param d int
---@param e float
function CubicSplineN:set_spatial_extent(d,e) end

---Returns the spatial extent of dimension d of the spline.
---@param d int
---@return float value
function CubicSplineN:get_spatial_extent(d) end

---Returns the max t value the spline extends to.  For a normal spline, this will be size()-1.  For a looped spline, this will be size().
---@return float value
function CubicSplineN:get_max_t() end

---Sets the number of points in the spline.  You must set the number of points before trying to set the position of any point.
---@param s int
function CubicSplineN:set_size(s) end

---Returns the number of points in the spline.
---@return int s value
function CubicSplineN:get_size() end

---Sets the number of dimensions the spline has.
---Splines that are owned by actors (the ones inside ActorMultiVertex and NCSplineHandler) cannot have their number of dimensions changed because the actors require them to have 3 dimensions.
---@param d int
function CubicSplineN:set_dimension(d) end

---Returns the number of dimensions the spline has.
---@return int value
function CubicSplineN:get_dimension() end

---Returns true of the spline has zero points, or false if it has more than zero points.
---@return bool value
function CubicSplineN:empty() end

---Sets whether the spline is looped.  A looped spline is one where the end point is connected to the start point.
---@param var bool
function CubicSplineN:set_loop(var) end

---Returns whether the spline is looped.
---@return bool value
function CubicSplineN:get_loop() end

---Sets whether the spline is polygonal.  If the spline is polygonal, then it will have straight lines between the points instead of curves.
---@param var bool
function CubicSplineN:set_polygonal(var) end

---Returns whether the spline is polygonal.
---@return bool value
function CubicSplineN:get_polygonal() end

---Sets whether the spline is dirty.  A dirty spline is one that has been changed in some way that affects its shape.  When solve() is called, the spline will only be solved if it is dirty.  The dirty flag is automatically set by everything, so you should never have to call this function.
---@param var bool
function CubicSplineN:set_dirty(var) end

---Returns whether the spline is currently dirty.
---@return bool value
function CubicSplineN:get_dirty() end

---Destroys the spline, freeing the memory allocated for it.  This can only be called on splines created with .
function CubicSplineN:destroy() end

---@class DeviceList: Actor

---@class DifficultyIcon: Actor

---Sets the DifficultyIcon's state from the difficulty passed in.
---@param dc Difficulty
---@return void value
function DifficultyIcon:SetFromDifficulty(dc) end

---Sets the DifficultyIcon's Player to `pn`,
---then sets the DifficultyIcon's state from the difficulty of Steps `pSteps`
---@param pSteps Steps
---@return void value
function DifficultyIcon:SetFromSteps(pSteps) end

---Sets the DifficultyIcon's Player to `pn`,
---then sets the DifficultyIcon's state from the difficulty of Trail `pTrail`
---@param pn PlayerNumber
---@param pTrail Trail
---@return void value
function DifficultyIcon:SetFromTrail(pn,pTrail) end

---Sets the DifficultyIcon's Player to `pn`.
---@param pn PlayerNumber
---@return void value
function DifficultyIcon:SetPlayer(pn) end

---Blanks the DifficultyIcon.
---@return void value
function DifficultyIcon:Unset() end

---@class DisplayMode

---Return the width of the display in this mode.
---@return int value
function DisplayMode:GetWidth() end

---Return the height of the display in this mode.
---@return int value
function DisplayMode:GetWidth() end

---Return the refresh rate of the display in this mode.
---@return float value
function DisplayMode:GetRefreshRate() end

---@class DisplaySpec

---Return the unique identifier of the display.
---@return string value
function DisplaySpec:GetId() end

---Return the "human-readable" display name.
---@return string value
function DisplaySpec:GetName() end

---Return the s supported by this device.
---@return table value # {DisplayMode}
function DisplaySpec:GetSupportedModes() end

---Return the currently active  for this display,
---or `nil` if there is no such mode.
---@return DisplayMode value
function DisplaySpec:GetCurrentMode() end

---Return `true` if this `DisplaySpec` is describing the
---"logical display" like an X screen or the Win32 "Virtual screen", or
---`false` otherwise (if this describes a physical display).
---@return bool value
function DisplaySpec:IsVirtual() end

---@class DisplaySpecs

---Return the number of  instances in the array.
---@return int value
function DisplaySpecs:__len() end

---Return the  instance at index `i`
---@param i int
---@return DisplaySpec value
function DisplaySpecs:__index(i) end

---@return string value
function DisplaySpecs:__tostring() end

---@class FadingBanner: Actor

---Returns the index of the last banner loaded.
---@return int value
function FadingBanner:GetLatestIndex() end

---Loads the fallback course banner.
---@return void value
function FadingBanner:LoadCourseFallback() end

---Loads the fallback banner.
---@return void value
function FadingBanner:LoadFallback() end

---Loads the card image from the specified Character.
---@param pCharacter Character
---@return void value
function FadingBanner:LoadCardFromCharacter(pCharacter) end

---Loads a Banner from a specified Course.
---@param c Course
---@return void value
function FadingBanner:LoadFromCourse(c) end

---Loads a Banner from a specified Song.
---@param s Song
---@return void value
function FadingBanner:LoadFromSong(s) end

---Loads a Banner from a specified Song Group.
---@param s string
---@return void value
function FadingBanner:LoadFromSongGroup(s) end

---Loads a Banner from a specified SortOrder.
---@param so SortOrder
---@return void value
function FadingBanner:LoadFromSortOrder(so) end

---Loads an icon from the specified Character.
---@param pCharacter Character
---@return void value
function FadingBanner:LoadIconFromCharacter(pCharacter) end

---Loads the Random banner.
---@return void value
function FadingBanner:LoadRandom() end

---Loads the Roulette banner.
---@return void value
function FadingBanner:LoadRoulette() end

---See `Sprite:scaletoclipped`.
---@param fWidth float
---@param fHeight float
---@return void value
function FadingBanner:scaletoclipped(fWidth,fHeight) end

---See `Sprite:scaletoclipped`.
---@param fWidth float
---@param fHeight float
---@return void value
function FadingBanner:ScaleToClipped(fWidth,fHeight) end

---@class StepsDisplayList: Actor

---Sets the StepsDisplayList from the GameState.
---@return void value
function StepsDisplayList:setfromgamestate() end

---@class Game

---Returns `true` if notes are counted separately in this game.
---@return bool value
function Game:CountNotesSeparately() end

---Returns the mapped judgment for `tns`.
---@param tns TapNoteScore
---@return TapNoteScore value
function Game:GetMapJudgmentTo(tns) end

---Returns the name of the game such as "dance" or "pump".
---@return string value
function Game:GetName() end

---Returns whether this game allows the players to have separate styles.
---@return bool value
function Game:GetSeparateStyles() end

---@class GameCommand

---Returns any announcer that may have been set.
---@return string value
function GameCommand:GetAnnouncer() end

---Returns any Character associated with this item (or `nil` if there isn't one).
---@return Character value
function GameCommand:GetCharacter() end

---Returns any Course that may have been set.
---@return Course value
function GameCommand:GetCourse() end

---Returns a course difficulty, if one is set in the GameCommand.
---@return Difficulty value
function GameCommand:GetCourseDifficulty() end

---Returns a difficulty, if one is set in the GameCommand.
---@return Difficulty value
function GameCommand:GetDifficulty() end

---Returns the index of this item.
---@return int value
function GameCommand:GetIndex() end

---Returns any MultiPlayer that may have been set.
---@return MultiPlayer value
function GameCommand:GetMultiPlayer() end

---Returns the choice name.
---@return string value
function GameCommand:GetName() end

---Returns the PlayMode associated with this GameCommand.
---@return PlayMode value
function GameCommand:GetPlayMode() end

---Returns any preferred modifiers that may have been set.
---@return string value
function GameCommand:GetPreferredModifiers() end

---Returns any Profile ID that may have been set.
---@return string value
function GameCommand:GetProfileID() end

---Returns any screen that may have been set as a string.
---@return string value
function GameCommand:GetScreen() end

---Returns any Song that may have been set.
---@return Song value
function GameCommand:GetSong() end

---Returns the name of any song group that may have been set.
---@return string value
function GameCommand:GetSongGroup() end

---Returns the sort order, if the GameCommand has set one.
---@return SortOrder value
function GameCommand:GetSortOrder() end

---Returns any stage modifiers that may have been set.
---@return string value
function GameCommand:GetStageModifiers() end

---Returns any Steps that may have been set.
---@return Steps value
function GameCommand:GetSteps() end

---Returns any Style that may have been set.
---@return Style value
function GameCommand:GetStyle() end

---Returns the display text.
---@return string value
function GameCommand:GetText() end

---Returns any Trail that may have been set.
---@return Trail value
function GameCommand:GetTrail() end

---Returns any Url that may have been set.
---@return string value
function GameCommand:GetUrl() end

---@class GameManager

---Return the first  for the specified `game`.
---@param game Game
---@return StepsType value
function GameManager:GetFirstStepsTypeForGame(game) end

---Returns `true` if any noteskins exist for the specified Game `s`.
---@param s string
---@return bool value
function GameManager:IsGameEnabled(s) end

---Return the localized string representation of `st`.
---@param st StepsType
---@return string value
function GameManager:StepsTypeToLocalizedString(st) end

---Returns a table of all selectable games.
---@return table value # {string}
function GameManager:GetEnabledGames() end

---Returns a table of all the styles for the that exist for `game`.
---@param game string
---@return table value # {style}
function GameManager:GetStylesForGame(game) end

---Sets the current game to `Game`. The second argument is optional, and if provided will determine which theme is loaded when the game changes.  If the second argument is not provided, the default theme from the preferences for the new game type will be loaded.
---If only the game changes, the screen specified by the Common::AfterGameChangeScreen metric will be loaded.
---If the game and the theme both change, the screen specified by the Common::AfterGameAndThemeChangeScreen metric will be loaded.
---The Common::InitialScreen metric will be used if the appropriate metric for the change is blank or invalid.
---@param Game string
---@param Theme string
---@return void value
function GameManager:SetGame(Game,Theme) end

---@class GameSoundManager

---Set the music volume to `fVolume` for `fDuration` seconds.
---@param fVolume float
---@param fDuration float
---@return void value
function GameSoundManager:DimMusic(fVolume,fDuration) end

---Return the sound balance for `pn`.
---@param pn PlayerNumber
---@return float value
function GameSoundManager:GetPlayerBalance(pn) end

---Plays a sound from the current announcer.
---@param sPath string
---@return void value
function GameSoundManager:PlayAnnouncer(sPath) end

---Play the sound at `musicPath` starting from `musicStart` for
---`musicLength` seconds one time. Both `fadeIn` and
---`fadeOut` can be customized as required.  `loop`
---tells the sound manager to loop the music part.  `applyRate`
---tells the sound manager to apply the current music rate. If `alignBeat`
---is true or nil, the length is automatically adjusted to cover an integer number of beats.
---@param musicPath string
---@param musicStart float
---@param musicLength float
---@param fadeIn float
---@param fadeOut float
---@param loop bool
---@param applyRate bool
---@param alignBeat bool
---@return void value
function GameSoundManager:PlayMusicPart(musicPath,musicStart,musicLength,fadeIn,fadeOut,loop,applyRate,alignBeat) end

---Play the sound at `sPath` one time.  `is_action` is optional, if it is true, the sound is an action sound, and will be muted if the MuteActions preference is turned on.
---@param sPath string
---@param is_action bool
---@return void value
function GameSoundManager:PlayOnce(sPath,is_action) end

---Stops the music.
---@param var void
---@return void value
function GameSoundManager:StopMusic(var) end

---When music is requested to change, the new music does not start immediately due to latency and buffering. This will return true if the newest music has not yet actually begun.
---@param var void
---@return void value
function GameSoundManager:IsTimingDelayed(var) end

---@class GameState

---Adds another stage to the specifed player.
---@param pn PlayerNumber
---@return void value
function GameState:AddStageToPlayer(pn) end

---Applies the specified modifiers for the specified player's preferred modifier set.
---@param pn PlayerNumber
---@param mods string
---@return void value
function GameState:ApplyPreferredModifiers(pn,mods) end

---Applies the song options of ModsLevel_Preferred to the other ModsLevels.
---@return void value
function GameState:ApplyPreferredSongOptionsToOtherLevels() end

---Applies the specified modifiers for the specified player for the current stage.
---@param pn PlayerNumber
---@param mods string
---@return void value
function GameState:ApplyStageModifiers(pn,mods) end

---Returns `true` if any player has performed a feat worthy of ranking.
---@return bool value
function GameState:AnyPlayerHasRankingFeats() end

---The second argument is optional. Apply the GameCommand represented by `sCommand`
---for `pn`, if given. See .
---@param sCommand string
---@param pn PlayerNumber
---@return void value
function GameState:ApplyGameCommand(sCommand,pn) end

---Checks various things to determine whether the game will crash when gameplay starts.  Returns `false` and an error string if gameplay cannot be entered safely.
---Might not work in all cases, but will catch things like a player not having
---steps set or no current song or style.  Mainly exists for people with a custom ScreenSelectMusic replacement.
---Example:
---@return bool, string value
function GameState:CanSafelyEnterGameplay() end

---Removes any stage modifiers that are illegal for course play.
---@return void value
function GameState:ClearStageModifiersIllegalForCourse() end

---Returns `true` if `pn`'s options will disqualify them for ranking.
---@param pn PlayerNumber
---@return bool value
function GameState:CurrentOptionsDisqualifyPlayer(pn) end

---Returns `true` if enough credits have been inserted to join.
---@return bool value
function GameState:EnoughCreditsToJoin() end

---fishpolk.mid; See also: Rise of the Triad
---@return bool value
function GameState:Dopefish() end

---Returns the environment table. See .
---@return table value
function GameState:Env() end

---Returns the current  for the specified `ENUM:PlayerNumber`.
---@param pn PlayerNumber
---@return Character value
function GameState:GetCharacter(pn) end

---Returns the current `ENUM:CoinMode`.
---@return CoinMode value
function GameState:GetCoinMode() end

---Return the number of inserted but unused coins. This number is
---decremented when players join.
---@return int value
function GameState:GetCoins() end

---Return the number of coins needed to join based on the current coin and premium modes
---as well as the number of people joined, if that matters for the premium mode. See
---and .
---@return int value
function GameState:GetCoinsNeededToJoin() end

---The s in a  are numbered sequentially
---starting from 0. Return the number of the current .
---@return int value
function GameState:GetCourseSongIndex() end

---Return the current number of seconds that have passed in the current song. This value can be negative.
---@return float value
function GameState:GetCurMusicSeconds() end

---Return the current .
---@return Course value
function GameState:GetCurrentCourse() end

---Return the current .
---@return Game value
function GameState:GetCurrentGame() end

---Return the current .
---@return Song value
function GameState:GetCurrentSong() end

---Return the current .
---@return Stage value
function GameState:GetCurrentStage() end

---Returns the current stage index (starts at 0).
---@return int value
function GameState:GetCurrentStageIndex() end

---Return the current  for the specified Player.
---@param pn PlayerNumber
---@return Steps value
function GameState:GetCurrentSteps(pn) end

---Return a variable number of arguments based on the  being
---played by all players. For each distinct  being played by
---the players, in increasing `ENUM:PlayerNumber` order,
---the difficulty and description of the  is returned as strings.
---For example,
---`local credits = {GAMESTATE:GetCurrentStepsCredits()};`
---will make a table of the difficulties and descriptions.
---@return multiple value
function GameState:GetCurrentStepsCredits() end

---Return the current .
---@return Style value
function GameState:GetCurrentStyle() end

---Return the current  for the specified player.
---@param pn PlayerNumber
---@return Trail value
function GameState:GetCurrentTrail(pn) end

---Return a string representation of the default song options.
---@return string value
function GameState:GetDefaultSongOptions() end

---Returns the `ENUM:EarnedExtraStage` value.
---@return EarnedExtraStage value
function GameState:GetEarnedExtraStage() end

---Return the easiest `ENUM:Difficulty` of the
---currently selected steps by all players. For example, if player 1 has
---selected Hard steps and player 2 has selected Medium steps, Medium will
---be returned.
---@return Difficulty value
function GameState:GetEasiestStepsDifficulty() end

---@return int value
function GameState:GetEditCourseEntryIndex() end

---Return the Edit Local  (during Profile editing)
---or `nil` if it does not exist.
---@return Profile value
function GameState:GetEditLocalProfile() end

---Returns the ID of the Edit Local  (during Profile editing).
---@return string value
function GameState:GetEditLocalProfileID() end

---Return the source  for the editor or `nil`
---if it does not exist.
---@return Steps value
function GameState:GetEditSourceSteps() end

---Returns a table of enabled players.
---@return table value # {PlayerNumber}
function GameState:GetEnabledPlayers() end

---Returns the name of the currently expanded section.
---@return string value
function GameState:GetExpandedSectionName() end

---Return the random seed for the game.
---@return int value
function GameState:GetGameSeed() end

---Return `true` if the gameplay lead in is enabled. If
---`false`, gameplay begins immediately.
---@return bool value
function GameState:GetGameplayLeadIn() end

---Return the hardest `ENUM:Difficulty` of the
---currently selected steps by all players. For example, if player 1 has
---selected Hard steps and player 2 has selected Medium steps, Hard will
---be returned.
---@return Difficulty value
function GameState:GetHardestStepsDifficulty() end

---Returns an array of s corresponding to Human players.
---@return table value # {PlayerNumber}
function GameState:GetHumanPlayers() end

---Returns the index of the next song in the course.
---@return int value
function GameState:GetLoadingCourseSongIndex() end

---Returns the master player number.
---@return PlayerNumber value
function GameState:GetMasterPlayerNumber() end

---Returns `true` if the game is Multiplayer.
---@return bool value
function GameState:GetMultiplayer() end

---Returns the PlayerState for the specified MultiPlayer.
---@param mp MultiPlayer
---@return PlayerState value
function GameState:GetMultiPlayerState(mp) end

---Returns the number of active multiplayer NoteFields.
---@return int value
function GameState:GetNumMultiplayerNoteFields() end

---Returns the number of players enabled.
---@return int value
function GameState:GetNumPlayersEnabled() end

---Returns the number of sides joined.
---@return int value
function GameState:GetNumSidesJoined() end

---Returns the number of stages for the current Song and its Steps or the current Course.
---@return int value
function GameState:GetNumStagesForCurrentSongAndStepsOrCourse() end

---Returns the number of stages left for player `pn`.
---@param pn PlayerNumber
---@return int value
function GameState:GetNumStagesLeft(pn) end

---Returns the display name for player `pn`.
---@param pn PlayerNumber
---@return string value
function GameState:GetPlayerDisplayName(pn) end

---Returns the PlayerState for player `pn`.
---@param pn PlayerNumber
---@return PlayerState value
function GameState:GetPlayerState(pn) end

---Returns the current PlayMode.
---@return PlayMode value
function GameState:GetPlayMode() end

---Returns the preferred difficulty for player `pn`.
---@param pn PlayerNumber
---@return Difficulty value
function GameState:GetPreferredDifficulty(pn) end

---Returns the preferred song.
---@return Song value
function GameState:GetPreferredSong() end

---Returns the preferred song group.
---@return string value
function GameState:GetPreferredSongGroup() end

---Returns the current Premium.
---@return Premium value
function GameState:GetPremium() end

---Returns the smallest number of stages left for any human player.
---@return int value
function GameState:GetSmallestNumStagesLeftForAnyHumanPlayer() end

---[01 alias.lua] Returns the current beat of the song.
---@return float value
function GameState:GetSongBeat() end

---[01 alias.lua] Returns the current beat of the song without an offset.
---@return float value
function GameState:GetSongBeatNoOffset() end

---Returns the current visible beat of the song.
---@return float value
function GameState:GetSongBeatVisible() end

---[01 alias.lua] Returns the song's current beats per second.
---@return float value
function GameState:GetSongBPS() end

---[01 alias.lua] Returns `true` if a delay is active in the song.
---@return bool value
function GameState:GetSongDelay() end

---[01 alias.lua] Returns `true` if the song is currently in a freeze.
---@return bool value
function GameState:GetSongFreeze() end

---Returns the song options for the specified ModsLevel as a string.
---@param ml ModsLevel
---@return string value
function GameState:GetSongOptions(ml) end

---Returns the song options as a string.
---@return string value
function GameState:GetSongOptionsString() end

---Returns the song options for the specified ModsLevel as an object.
---@param ml ModsLevel
---@return SongOptions value
function GameState:GetSongOptionsObject(ml) end

---Returns how much of the song is through at beat `fBeat`.
---@param fBeat float
---@return float value
function GameState:GetSongPercent(fBeat) end

---Returns the current SongPosition.
---@return SongPosition value
function GameState:GetSongPosition() end

---Returns the current SortOrder.
---@return SortOrder value
function GameState:GetSortOrder() end

---Returns the StageResult for player `pn`.
---@param pn PlayerNumber
---@return StageResult value
function GameState:GetStageResult(pn) end

---Returns the current stage index.
---@return int value
function GameState:GetStageIndex() end

---Returns the current StepsSeconds, which is the time value used to set the samples in a player's life record.
---@return float value
function GameState:GetStepsSeconds() end

---Return the random seed for the current stage.
---@return int value
function GameState:GetStageSeed() end

---Returns `true` if the workout goal is complete.
---@return bool value
function GameState:GetWorkoutGoalComplete() end

---Returns `true` if an extra stage was earned.
---@return bool value
function GameState:HasEarnedExtraStage() end

---Returns `true` if either player does not have a profile loaded, and there is a loadable profile.
---@return bool value
function GameState:HaveProfileToLoad() end

---Returns `true` if either player has a profile loaded.
---@return bool value
function GameState:HaveProfileToSave() end

---Returns `true` if we are specifically in the Step Editor's
---editing portion. If in recording or playing mode, this will return
---`false`.
---@return bool value
function GameState:InStepEditor() end

---Inserts `iCoins` number of coins.  `iCoins` can be negative or positive.
---@param iCoins int
---@return void value
function GameState:InsertCoin(iCoins) end

---Inserts one credit.  To deduct a credit, pass a negative integer representing the number
---of coins per credit to InsertCoin (`GameState:InsertCoin`).
---@return void value
function GameState:InsertCredit() end

---Returns `true` if this is an extra stage.
---@return bool value
function GameState:IsAnExtraStage() end

---Returns `true` if any human player is using a memory card.
---@return bool value
function GameState:IsAnyHumanPlayerUsingMemoryCard() end

---Returns `true` if playing in Battle mode.
---@return bool value
function GameState:IsBattleMode() end

---Returns `true` if playing in a Course mode.
---@return bool value
function GameState:IsCourseMode() end

---Returns `true` if in Demonstration mode.
---@return bool value
function GameState:IsDemonstration() end

---Returns `true` if the match was a draw.
---@return bool value
function GameState:IsDraw() end

---Returns `true` if Event Mode is on, temporary (`GameState:SetTemporaryEventMode`) or otherwise.
---@return bool value
function GameState:IsEventMode() end

---Returns `true` if this is the first extra stage.
---@return bool value
function GameState:IsExtraStage() end

---Returns `true` if this is the second extra stage.
---@return bool value
function GameState:IsExtraStage2() end

---Returns `true` if player `pn` has completed the current Goal.
---@param pn PlayerNumber
---@return bool value
function GameState:IsGoalComplete(pn) end

---Returns `true` if player `pn` is human.
---@param pn PlayerNumber
---@return bool value
function GameState:IsHumanPlayer(pn) end

---Returns `true` if player `pn` is enabled.
---@param pn PlayerNumber
---@return bool value
function GameState:IsPlayerEnabled(pn) end

---Returns `true` if player `pn` has joined the game.
---@param pn PlayerNumber
---@return bool value
function GameState:IsSideJoined(pn) end

---Returns `true` if player `pn` is the winner.
---@param pn PlayerNumber
---@return bool value
function GameState:IsWinner(pn) end

---Joins player `pn`.  Does not deduct coins.
---@param pn PlayerNumber
---@return void value
function GameState:JoinPlayer(pn) end

---Similar to JoinPlayer, but checks whether the player is allowed to join and returns false if the player is not allowed to join.  Also deducts coins for joining.  A player can't join if PlayersCanJoin() returns false, or that side is already joined (is true for both sides when in a style that is OnePlayerTwoSides), or there are not enough coins.
---@param pn PlayerNumber
---@return bool value
function GameState:JoinInput(pn) end

---If profiles are not loaded, this will load the profiles for each player. It will load from memory cards if they are present, and local profiles otherwise. It will load edits if `LoadEdits` is true, or by default if the argument is omitted.
---@param LoadEdits bool
---@return void value
function GameState:LoadProfiles(LoadEdits) end

---Returns `true` if player `pn` is using modifier `sModifier`.
---@param pn PlayerNumber
---@param sModifier string
---@return bool value
function GameState:PlayerIsUsingModifier(pn,sModifier) end

---Returns `true` if players can join the game.
---@return bool value
function GameState:PlayersCanJoin() end

---Refreshes the NoteSkin data for the current game.
---@return void value
function GameState:RefreshNoteSkinData() end

---Resets the GameState.
---@return void value
function GameState:Reset() end

---Resets the specific Player's mods to the default settings.
---@param pn PlayerNumber
---@return void value
function GameState:ResetPlayerOptions(pn) end

---Saves the bookkeeping and machine profile data.
---@return void value
function GameState:SaveLocalData() end

---Save profiles.
---@return void value
function GameState:SaveProfiles() end

---Sets the current  for the specified `ENUM:PlayerNumber`.
---@param pn PlayerNumber
---@param sCharID string
---@return void value
function GameState:SetCharacter(pn,sCharID) end

---Sets the current Course to `course`.
---@param course Course
---@return void value
function GameState:SetCurrentCourse(course) end

---Sets the current PlayMode to `pm`.
---@param pm PlayMode
---@return void value
function GameState:SetCurrentPlayMode(pm) end

---Sets the current Song to `song`.
---@param song Song
---@return void value
function GameState:SetCurrentSong(song) end

---Sets Player `pn`'s current Steps to `steps`.
---@param pn PlayerNumber
---@param steps Steps
---@return void value
function GameState:SetCurrentSteps(pn,steps) end

---Sets current Style to the provided style. Either a style object or a style string can be provided. If current steps for either player are not valid in the new style, they will be cleared.
---@param sStyle string
---@return void value
function GameState:SetCurrentStyle(sStyle) end

---Sets the current Trail to `trail`.
---@param trail Trail
---@return void value
function GameState:SetCurrentTrail(trail) end

---Tells the engine that the theme explicitly set the fail type for the players so that it won't override it with the easier settings for beginner or easy.
---@return void value
function GameState:SetFailTypeExplicitlySet() end

---Sets if the Jukebox should use modifiers.
---@param bUseMods bool
---@return void value
function GameState:SetJukeboxUsesModifiers(bUseMods) end

---@param b bool
---@return void value
function GameState:SetMultiplayer(b) end

---Sets the number of multiplayer notefields to `iFields`
---@param iFields int
---@return void value
function GameState:SetNumMultiplayerNoteFields(iFields) end

---Sets the preferred difficulty of Player `pn` to Difficulty `dc`.
---@param pn PlayerNumber
---@param dc Difficulty
---@return void value
function GameState:SetPreferredDifficulty(pn,dc) end

---Sets the preferred Song to `song`.
---@param song Song
---@return void value
function GameState:SetPreferredSong(song) end

---Sets the preferred song group to `sGroup`.
---@param sGroup String
---@return void value
function GameState:SetPreferredSongGroup(sGroup) end

---Sets the Song Options from `so` using ModsLevel `m`.
---@param m ModsLevel
---@param so string
---@return void value
function GameState:SetSongOptions(m,so) end

---Turns temporary Event Mode on or off, depending on `bOn`.
---@param bOn bool
---@return void value
function GameState:SetTemporaryEventMode(bOn) end

---Stores the ranking name for the player.  Use this at the end of a round, on a name entry screen or similar, to set the name for the high scores the player has earned.
---@param pn PlayerNumber
---@param name string
---@return void value
function GameState:StoreRankingName(pn,name) end

---Determines if Judgment W1 should be shown based on `bOn`.
---@param bOn bool
---@return void value
function GameState:ShowW1(bOn) end

---Unjoins player `pn`.
---@param pn PlayerNumber
---@return void value
function GameState:UnjoinPlayer(pn) end

---@class GradeDisplay: Actor

---Loads the GradeDisplay commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
---@return void value
function GradeDisplay:Load(sMetricsGroup) end

---Sets the GradeDisplay to show Grade `g`.
---@param g Grade
---@return void value
function GradeDisplay:SetGrade(g) end

---@class GraphDisplay: Actor

---Loads the GraphDisplay commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
---@return void value
function GraphDisplay:Load(sMetricsGroup) end

---Sets the values of the GraphDisplay using the specified StageStats and PlayerStageStats.
---@param s StageStats
---@param pss PlayerStageStats
---@return void value
function GraphDisplay:Set(s,pss) end

---@class GrooveRadar: Actor

---Sets the GrooveRadar values for Player `pn` to empty.
---@param pn PlayerNumber
---@return void value
function GrooveRadar:SetEmpty(pn) end

---Sets the GrooveRadar values for Player `pn` from RadarValues `rv`
---@param pn PlayerNumber
---@param rv RadarValues
---@return void value
function GrooveRadar:SetFromRadarValues(pn,rv) end

---Sets the GrooveRadar values for Player `pn` to the specified (floating point) values in the table.
---@param pn PlayerNumber
---@param vals table
---@return void value
function GrooveRadar:SetFromValues(pn,vals) end

---@class HelpDisplay: Actor

---Returns two tables representing the tips and alternate tips in the HelpDisplay.
---@return table value # {string}
function HelpDisplay:gettips() end

---[02 HelpDisplay.lua] Sets the tips from a Song or Course.
---@return void value
function HelpDisplay:setfromsongorcourse() end

---Sets the seconds between switches of tips to `fSeconds`.
---@param fSeconds float
---@return void value
function HelpDisplay:SetSecsBetweenSwitches(fSeconds) end

---Sets the HelpDisplay's tips using `tips` (and optionally `altTips`).
---@param tips string
---@param altTips string
---@return void value
function HelpDisplay:settips(tips,altTips) end

---Sets the HelpDisplay's text from `sTips` using colons to separate new sections.
---@param sTips string
---@return void value
function HelpDisplay:SetTipsColonSeparated(sTips) end

---@class HighScore

---Returns the date and time the high score was achieved.
---@return DateTime value
function HighScore:GetDate() end

---Returns the Grade of this high score.
---@return Grade value
function HighScore:GetGrade() end

---Return the number of HoldNoteScores that match `hns`.
---@param hns HoldNoteScore
---@return int value
function HighScore:GetHoldNoteScore(hns) end

---Returns the Max Combo of this high score.
---@return int value
function HighScore:GetMaxCombo() end

---Returns the modifiers used for this HighScore.
---@return string value
function HighScore:GetModifiers() end

---Returns the name associated with the high score.
---@return string value
function HighScore:GetName() end

---Returns the Peak Combo Award for this high score.
---@return PeakComboAward value
function HighScore:GetPeakComboAward() end

---Returns the percentage of dance points associated with the high score.
---@return float value
function HighScore:GetPercentDP() end

---Returns the RadarValues for this HighScore.
---@return RadarValues value
function HighScore:GetRadarValues() end

---Returns the score associated with the high score.
---@return int value
function HighScore:GetScore() end

---Retrns the Stage Award for this high score.
---@return StageAward value
function HighScore:GetStageAward() end

---Returns the number of seconds survived associated with the high score.
---@return float value
function HighScore:GetSurvivalSeconds() end

---Return the number of TapNoteScores that match `tns`.
---@param tns TapNoteScore
---@return int value
function HighScore:GetTapNoteScore(tns) end

---Returns `true` if this high score's name uses a fill-in marker.
---@return bool value
function HighScore:IsFillInMarker() end

---@class HighScoreList

---Returns a table of the high scores.
---@return table value # {HighScore}
function HighScoreList:GetHighScores() end

---Returns the highest score for name in the list.  Returns nil if there is no score for name in the list.
---@param name string
---@return HighScore value
function HighScoreList:GetHighestScoreOfName(name) end

---Returns the rank of the highest score for name in the list.  Returns 0 if there is no score for name in the list.  (returns 1 if name has the top score, 2 if name has the second place score, and so on)
---@param name string
---@return int value
function HighScoreList:GetRankOfName(name) end

---@class HoldJudgment: Actor

---Loads the HoldJudgment for the specified MultiPlayer.
---@param mp MultiPlayer
---@return void value
function HoldJudgment:LoadFromMultiPlayer(mp) end

---@class InputFilter

---Returns the mouse wheel value.
---@return float value
function InputFilter:GetMouseWheel() end

---Returns the X position of the mouse.
---@return float value
function InputFilter:GetMouseX() end

---Returns the Y position of the mouse.
---@return float value
function InputFilter:GetMouseY() end

---@class InputList: Actor

---@class LifeMeter

---Returns the amount of life left in the LifeMeter as a float in the range 0..1.
---@return float value
function LifeMeter:GetLife() end

---Returns `true` if failing.
---@return bool value
function LifeMeter:IsFailing() end

---Returns `true` if the LifeMeter is "hot".
---@return bool value
function LifeMeter:IsHot() end

---Returns `true` if in danger.
---@return bool value
function LifeMeter:IsInDanger() end

---@class LifeMeterBattery

---Changes the player's life by `iNumLives`. (Negative values subtract lives.)
---@param iNumLives int
---@return void value
function LifeMeterBattery:ChangeLives(iNumLives) end

---Returns the number of lives remaining.
---@return int value
function LifeMeterBattery:GetLivesLeft() end

---Returns the number of total lives.
---@return int value
function LifeMeterBattery:GetTotalLives() end

---@class MemoryCardManager

---Returns `true` if player `pn`'s card is locked.
---@param pn PlayerNumber
---@return bool value
function MemoryCardManager:GetCardLocked(pn) end

---Return the state for player `pn`.
---@param pn PlayerNumber
---@return MemoryCardState value
function MemoryCardManager:GetCardState(pn) end

---Returns the name of the storage device.
---@param pn PlayerNumber
---@return string value
function MemoryCardManager:GetName(pn) end

---Returns `true` if player `pn`'s name is available.
---@param pn PlayerNumber
---@return bool value
function MemoryCardManager:IsNameAvailable(pn) end

---@class MenuTimer

---Stops the MenuTimer by setting it to 99.99 and pausing.
---@return void value
function MenuTimer:disable() end

---Returns the current MenuTimer's value.
---@return float value
function MenuTimer:GetSeconds() end

---Pauses the MenuTimer, stopping it from counting down.
---@return void value
function MenuTimer:pause() end

---Compatibility alias for SetSeconds.
---@param fSeconds float
---@return void value
function MenuTimer:setseconds(fSeconds) end

---Sets the MenuTimer's value to `fSeconds`.
---@param fSeconds float
---@return void value
function MenuTimer:SetSeconds(fSeconds) end

---Sets the MenuTimer's silent setting to `bSilent`.
---@param bSilent bool
---@return void value
function MenuTimer:silent(bSilent) end

---Starts up the timer.
---@return void value
function MenuTimer:start() end

---Sets the MenuTimer's stealth setting to `bStealth`. If
---`true`, the timer will be invisible and silent.
---@param bStealth bool
---@return void value
function MenuTimer:stealth(bStealth) end

---Stops the MenuTimer by setting it to 0 and pausing.
---@return void value
function MenuTimer:stop() end

---@class MessageManager

---Broadcast the message to all listeners subscribed to `sMessage`. The
---second argument is an optional table of parameters. It may be omitted or explicitly
---set to `nil`.
---@param sMessage string
---@param paramTable table
---@return void value
function MessageManager:Broadcast(sMessage,paramTable) end

---Sets whether logging of messages is enabled.  If log is true, all messages that pass through Broadcast (from the engine for from the theme or from anywhere else), will be logged with Trace.
---@param log bool
---@return void value
function MessageManager:SetLogging(log) end

---@class MeterDisplay: Actor

---Sets the width of the MeterDisplay to `fWidth`.
---@param fWidth float
---@return void value
function MeterDisplay:SetStreamWidth(fWidth) end

---@class Model: Actor

---Returns the model's default animation.
---@return string value
function Model:GetDefaultAnimation() end

---Controls if the model should loop or not.
---@param bLoop bool
---@return void value
function Model:loop(bLoop) end

---Plays animation `sAniName` at `fPlayRate` speed (default 1.0).
---@param sAniName string
---@param fPlayRate float
---@return void value
function Model:playanimation(sAniName,fPlayRate) end

---Sets how far into the animation the model is.
---@param fSeconds float
---@return void value
function Model:position(fSeconds) end

---Sets the current animation's playback rate to `fRate`.
---@param fRate float
---@return void value
function Model:rate(fRate) end

---Sets the model's default animation to `sAnimation` at `fPlayRate` speed (default 1.0).
---@param sAnimation string
---@param fPlayRate float
---@return void value
function Model:SetDefaultAnimation(sAnimation,fPlayRate) end

---Returns the number of states the Model has.
---@return int value
function Model:GetNumStates() end

---@class ModIconRow: Actor

---Loads the ModIconRow of Player `pn` from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
---@param pn PlayerNumber
---@return void value
function ModIconRow:Load(sMetricsGroup,pn) end

---@class MusicWheel

---Changes the sort order of the wheel.  Returns `true` if the order was changed.
---@param so SortOrder
---@return bool value
function MusicWheel:ChangeSort(so) end

---Returns a string array of the currently displayed sections in the MusicWheel.
---@return table value # {string}
function MusicWheel:GetCurrentSections() end

---Returns the name of the currently selected section.
---@return string value
function MusicWheel:GetSelectedSection() end

---Returns `true` if the MusicWheel is currently handling Roulette selection.
---@return bool value
function MusicWheel:IsRouletting() end

---Moves the wheel by `n`.
---@param n int
---@return void value
function MusicWheel:Move(n) end

---Selects a course. Returns `false` on failure.
---@param cCourse Course
---@return bool value
function MusicWheel:SelectCourse(cCourse) end

---Selects a song. Returns `false` on failure.
---@param sSong Song
---@return bool value
function MusicWheel:SelectSong(sSong) end

---@class NetworkManager

---Returns true if access to `url` is allowed.
---@param url string
---@return bool value
function NetworkManager:IsUrlAllowed(url) end

---Performs an HTTP request.
---Usage example:
---
---Everything but `url` is optional. Supported methods are `GET`, `POST`, `PUT`, `PATCH`, `DELETE` and `HEAD`.
---A response looks like this:
---
---In case of an error the callback is called with a structure like this:
---
---If the `downloadFile` parameter is set, the response body is not accumulated in memory, but written to `/Downloads/${downloadFile}`.
---The file is available in the `onResponse` callback where it can be unzipped/copied to another location using `FILEMAN:Unzip()`/`FILEMAN:Copy()` respectively.
---The file is deleted once the callback returns.
---@param params table
---@return HttpRequestFuture value
function NetworkManager:HttpRequest(params) end

---Open a WebSocket connection.
---Usage example:
---
---Everything but `url` is optional.
---Messages look like this:
---@param params table
---@return WebSocketHandle value
function NetworkManager:WebSocket(params) end

---Returns the URL encoded representation of `value`.
---@param value string
---@return string value
function NetworkManager:UrlEncode(value) end

---Returns the `query` encoded as a query string. Keys and values are automatically URL encoded.
---@param query table
---@return string value
function NetworkManager:EncodeQueryParameters(query) end

---@class NoteSkinManager

---Returns a string from the specified element and value.
---@param sElement string
---@param sValue string
---@return string value
function NoteSkinManager:GetMetric(sElement,sValue) end

---Returns a string from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return string value
function NoteSkinManager:GetMetricForNoteSkin(sElement,sValue,sNoteSkin) end

---Returns a command from the specified element and value.
---@param sElement string
---@param sValue string
---@return ActorCommand value
function NoteSkinManager:GetMetricA(sElement,sValue) end

---Returns a command from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return ActorCommand value
function NoteSkinManager:GetMetricAForNoteSkin(sElement,sValue,sNoteSkin) end

---Returns a bool from the specified element and value.
---@param sElement string
---@param sValue string
---@return bool value
function NoteSkinManager:GetMetricB(sElement,sValue) end

---Returns a bool from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return bool value
function NoteSkinManager:GetMetricBForNoteSkin(sElement,sValue,sNoteSkin) end

---Returns a float from the specified element and value.
---@param sElement string
---@param sValue string
---@return float value
function NoteSkinManager:GetMetricF(sElement,sValue) end

---Returns a float from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return float value
function NoteSkinManager:GetMetricFForNoteSkin(sElement,sValue,sNoteSkin) end

---Returns a integer from the specified element and value.
---@param sElement string
---@param sValue string
---@return int value
function NoteSkinManager:GetMetricI(sElement,sValue) end

---Returns a integer from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return int value
function NoteSkinManager:GetMetricIForNoteSkin(sElement,sValue,sNoteSkin) end

---Returns the path for the specified `sButton sElement`.
---@param sButton string
---@param sElement string
---@return string value
function NoteSkinManager:GetPath(sButton,sElement) end

---Returns the path for the specified `sButton sElement` using NoteSkin `sNoteSkin`.
---@param sButton string
---@param sElement string
---@param sNoteSkin string
---@return string value
function NoteSkinManager:GetPathForNoteSkin(sButton,sElement,sNoteSkin) end

---Returns the actor for the specified `sButton sElement`.
---@param sButton string
---@param sElement string
---@return Actor value
function NoteSkinManager:LoadActor(sButton,sElement) end

---Returns the actor for the specified `sButton sElement` using NoteSkin `sNoteSkin`.
---@param sButton string
---@param sElement string
---@param sNoteSkin string
---@return Actor value
function NoteSkinManager:LoadActorForNoteSkin(sButton,sElement,sNoteSkin) end

---Returns `true` if the `strName` noteskin exists in the current gametype.
---@param strName string
---@return bool value
function NoteSkinManager:DoesNoteSkinExist(strName) end

---Returns a table of noteskin names for the current gametype.
---@return table value # {string}
function NoteSkinManager:GetNoteSkinNames() end

---@class NCSplineHandler

---Returns the spline for this handler.
---@return CubicSplineN value
function NCSplineHandler:get_spline() end

---Returns the beats per t value of the spline.  If the beats_per_t is 4, then a note must be on screen for 4 beats to traverse from one point on the spline to the next.
---@return float value
function NCSplineHandler:get_beats_per_t() end

---Sets the beats per t value for the spline.
---@param per float
function NCSplineHandler:set_beats_per_t(per) end

---Returns the t value that receptors are evaluated at.
---@return float value
function NCSplineHandler:get_receptor_t() end

---the t value that receptors are evaluated at.
---@param t float
function NCSplineHandler:set_receptor_t(t) end

---Returns the mode the spline is set to.
---"NoteColumnSplineMode_Disabled" means the spline will not affect the notes or receptors at all.
---"NoteColumnSplineMode_Offset" means the spline will added to the effects from the mods.
---"NoteColumnSplineMode_Position" means only the spline affect the notes and mods will be ignored. (but only mods that affect the same aspect of the note as the spline will be disabled.  So a rotation spline won't disable Mini or Tiny, but a zoom spline will, and a zoom spline won't disable Dizzy, Twirl, or Roll, but a rotation spline will.)
---@return NoteColumnSplineMode value
function NCSplineHandler:get_spline_mode() end

---Sets the current spline mode for this handler.
---@param mode NoteColumnSplineMode
function NCSplineHandler:set_spline_mode(mode) end

---Returns whether the current song beat is subtracted from a note's beat when calculating the t value to use on the spline.
---@return bool value
function NCSplineHandler:get_subtract_song_beat() end

---Sets whether the current song beat is subtracted from a note's beat when calculating the t value to use on the spline.
---@param s bool
function NCSplineHandler:set_subtract_song_beat(s) end

---@class NoteColumnRenderer

---Returns the handler for the position spline.
---@return NCSplineHandler value
function NoteColumnRenderer:get_pos_handler() end

---Returns the handler for the rotation spline.
---The rotation applied by the rotation spline is in radians.
---For convenience, the spatial extent of the rotation spline defaults to 2pi.
---@return NCSplineHandler value
function NoteColumnRenderer:get_rot_handler() end

---Returns the handler for the zoom spline.
---@return NCSplineHandler value
function NoteColumnRenderer:get_zoom_handler() end

---@class NoteField

---Makes the NoteField act as if a hold note was hit in the column, with the given score and bright setting.
---The callback for did_hold_note will not be called.
---@param column int
---@param tns TapNoteScore
---@param bright bool
function NoteField:did_hold_note(column,tns,bright) end

---Makes the NoteField act as if a tap note was hit in the column, with the given score and bright setting.
---The callback for did_tap_note will not be called.
---@param column int
---@param tns TapNoteScore
---@param bright bool
function NoteField:did_tap_note(column,tns,bright) end

---Returns a table of the actors for the columns.  This means that each column is an actor, so you can move it around or animate it like an actor.  See the NoteColumnRenderer class for a list of special functions for the column's actor.
---@return table value # {NoteColumnRenderer}
function NoteField:get_column_actors() end

---Same as SetDidTapNoteCallback, but for hold notes.  Uses HoldNoteScore instead of TapNoteScore.
---@param callback function
function NoteField:set_did_hold_note_callback(callback) end

---Sets the function that the NoteField will call whenever a tap note is hit.
---The callback function is passed the column, the TapNoteScore, and whether the explosion will be bright.
---The callback function can return changed values for the NoteField to use instead of the ones that were passed.
---Pass nil instead of a function to clear the callback.
---@param callback function
function NoteField:set_did_tap_note_callback(callback) end

---Makes the NoteField act as if a press occurred in the column.
---The callback for set_pressed will not be called.
---@param column int
function NoteField:set_pressed(column) end

---Sets the function that the NoteField will call whenever a press occurs.
---The callback function is passed the column for the press.
---The callback function can return changed values for the NoteField to use instead of the ones that were passed.
---Pass nil instead of a function to clear the callback.
---@param callback function
function NoteField:set_set_pressed_callback(callback) end

---Sets the function that the NoteField will call whenever a step occurs.
---The callback function is passed the column and the TapNoteScore for the step.
---The callback function can return changed values for the NoteField to use instead of the ones that were passed.
---Pass nil instead of a function to clear the callback.
---@param callback function
function NoteField:set_step_callback(callback) end

---Makes the NoteField act as if a step occurred in the column with the given score.
---The callback for Step will not be called.
---@param column int
---@param tns TapNoteScore
function NoteField:step(column,tns) end

---@class OptionRow

---Returns `true` if the first item in the row goes down.
---@return bool value
function OptionRow:FirstItemGoesDown() end

---Returns an index of the choice in the row that player `pn` is on.
---@param pn PlayerNumber
---@return int value
function OptionRow:GetChoiceInRowWithFocus(pn) end

---Returns the OptionRow's layout type.
---@return LayoutType value
function OptionRow:GetLayoutType() end

---Returns the name of the OptionRow.
---@return string value
function OptionRow:GetName() end

---Returns the number of choices in this OptionRow.
---@return int value
function OptionRow:GetNumChoices() end

---Returns the row title string.
---@return string value
function OptionRow:GetRowTitle() end

---Returns the OptionRow's select type.
---@return SelectType value
function OptionRow:GetSelectType() end

---Returns `true` if this row is focused by player `pn`.
---@param pn PlayerNumber
---@return bool value
function OptionRow:HasFocus(pn) end

---Returns `true` if this row forces one choice on all players.
---@return bool value
function OptionRow:OneChoiceForAllPlayers() end

---@class PaneDisplay: Actor

---Sets the PaneDisplay from the GameState.
---@return void value
function PaneDisplay:SetFromGameState() end

---@class PercentageDisplay: Actor

---Sets the PercentageDisplay from the specified PlayerState and PlayerStageStats.
---@param pPlayerState PlayerState
---@param pPlayerStageStats PlayerStageStats
---@return void value
function PercentageDisplay:LoadFromStats(pPlayerState,pPlayerStageStats) end

---@class Player

---Changes the life value by delta.  This will broadcast a LifeChangedMessageCommand, to allow custom life bars to update to the new value.  Do not call ChangeLife from within LifeChangedMessageCommand.
---@param delta float
function Player:ChangeLife(delta) end

---Sets the life to value.  This will broadcast a LifeChangedMessageCommand, to allow custom life bars to update to the new value.  Do not call SetLife from within LifeChangedMessageCommand.
---@param value float
function Player:SetLife(value) end

---Returns the current TimingData for this player.
---@return TimingData value
function Player:GetPlayerTimingData() end

---Sets Actor with Combo position.
---@param a Actor
---@return void value
function Player:SetActorWithComboPosition(a) end

---Sets Actor with Judgment position.
---@param a Actor
---@return void value
function Player:SetActorWithJudgmentPosition(a) end

---@class PlayerInfo

---Returns the  of player `pn`.
---@param pn PlayerNumber
---@return LifeMeter value
function PlayerInfo:GetLifeMeter(pn) end

---Returns the Steps located at `index` in the current steps queue.
---@param index int
---@return Steps value
function PlayerInfo:GetStepsQueueWrapped(index) end

---@class PlayerOptions

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Alternate(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:AttackMines(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:AttenuateX(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:AttenuateY(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:AttenuateZ(value,approach_speed) end

---@param num int
---@return int value
function PlayerOptions:BatteryLives(num) end

---@param value bool
---@return bool value
function PlayerOptions:Backwards(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Beat(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatMult(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatY(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatYMult(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatYOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatYPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatZ(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatZMult(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatZOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BeatZPeriod(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Big(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Blink(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Blind(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:BMRize(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Boomerang(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Boost(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Bounce(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BouncePeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BounceOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BounceZ(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BounceZPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BounceZOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Brake(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Bumpy(value,approach_speed) end

---Use 1-16 in place of 'n' to apply Bumpy on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Bumpyn(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BumpyOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BumpyPeriod(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BumpyX(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BumpyXOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:BumpyXPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Centered(value,approach_speed) end

---If the player has a CMod set, returns the value of that CMod and its associated approach speed.  Returns nil otherwise.
---If the optional first argument is passed, sets the CMod to the value and disables any XMod or MMod that is set.
---If the optional second argument is passed, sets the speed at which the transition occurs.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:CMod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Confusion(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionOffset(value,approach_speed) end

---Use 1-16 in place of 'n' to apply ConfusionOffset on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionOffsetn(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionX(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionXOffset(value,approach_speed) end

---Use 1-16 in place of 'n' to apply ConfusionXOffset on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionXOffsetn(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionY(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionYOffset(value,approach_speed) end

---Use 1-16 in place of 'n' to apply ConfusionYOffset on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ConfusionYOffsetn(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Cosecant(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Cover(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Cross(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Dark(value,approach_speed) end

---Use 1-16 in place of 'n' to apply Dark on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Darkn(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Digital(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalPeriod(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalSteps(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalZ(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalZOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalZPeriod(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DigitalZSteps(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Dizzy(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:DizzyHolds(value) end

---Selectively disable specific timing windows for a player.
---Valid values are `W1` to `W5` as defined in the `ENUM:TimingWindow` enum.
---@param tw TimingWindow
function PlayerOptions:DisableTimingWindow(tw) end

---If the player is using Distant (zero skew and positive tilt), returns the value of tilt and its approach_speed.
---Returns nil otherwise.
---If the optional first argument is passed, sets tilt to value and skew to zero.
---If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Distant(value,approach_speed) end

---@param type DrainType
---@return DrainType value
function PlayerOptions:DrainSetting(type) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrawSize(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrawSizeBack(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Drunk(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkPeriod(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkSpeed(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkZ(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkZOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkZPeriod(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:DrunkZSpeed(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Echo(value) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Expand(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ExpandPeriod(value,approach_speed) end

---Sets the `ENUM:FailType` for the player, if the optional argument is provided.  Returns the `ENUM:FailType` that was previously set.
---@param var FailType
---@return FailType value
function PlayerOptions:FailSetting(var) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Flip(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Floored(value) end

---Returns a table of the currently disabled `ENUM:TimingWindow`s for the player.
---@return table value # {TimingWindow}
function PlayerOptions:GetDisabledTimingWindows() end

---Returns true if step attacks or random attacks are enabled.
---@return bool value
function PlayerOptions:GetStepAttacks() end

---Returns `true` if the current PlayerOptions makes the current Course/Trail easier.
---@param c Course
---@param t Trail
---@return bool value
function PlayerOptions:IsEasierForCourseAndTrail(c,t) end

---Returns `true` if the current PlayerOptions makes the current Song/Steps easier.
---@param so Song
---@param st Steps
---@return bool value
function PlayerOptions:IsEasierForSongAndSteps(so,st) end

---If the player is using Hallway (zero skew and negative tilt), returns the value of tilt and its approach_speed.
---Returns nil otherwise.
---If the optional first argument is passed, sets tilt to negative value and skew to zero.
---Pass in a positive value for the familiar meaning of Hallway.
---If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Hallway(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Hidden(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:HiddenOffset(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:HoldRolls(value) end

---@param value bool
---@return bool value
function PlayerOptions:HyperShuffle(value) end

---If the player is using Incoming ((positive skew and negative tilt) or (negative skew and positive tilt)), returns the value of skew and its approach_speed.
---Returns nil otherwise.
---If the optional first argument is passed, sets tilt to negative value and skew to value.
---Pass in a positive value for the familiar meaning of Incoming.
---If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Incoming(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Invert(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Left(value) end

---@param type LifeType
---@return LifeType value
function PlayerOptions:LifeSetting(type) end

---@param value bool
---@return bool value
function PlayerOptions:Little(value) end

---Sets the effect clock of certain modifiers for the player, if the optional argument is provided.  Returns the `ENUM:ModTimerType` that was previously set.
---Can also be set through strings in PlayerOptions::FromString().
---String Examples: 'ModTimerSong', 'modtimerbeat', etc.
---@param type ModTimerType
---@return ModTimerType value
function PlayerOptions:ModTimerSetting(type) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ModTimerMult(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ModTimerOffset(value,approach_speed) end

---MaxScrollBPM is one of the variables for controlling the speed mod.
---Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
---It is the setting for the MMod.
---MMods are not tweenable or settable on ScreenGameplay.  Use XMods if you need such an effect.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:MaxScrollBPM(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Mines(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Mini(value,approach_speed) end

---Sets the min TapNoteScore required for the notes to disappear after being hit.
---@param tns TapNoteScore
---@return TapNoteScore value
function PlayerOptions:MinTNSToHideNotes(tns) end

---@param value bool
---@return bool value
function PlayerOptions:Mirror(value) end

---If the player has a MMod set, returns the value of that MMod and its associated approach speed.  Returns nil otherwise.
---If the optional first argument is passed, sets the MMod to the value and disables any CMod or XMod that is set.
---If the optional second argument is passed, sets the speed at which the transition occurs.
---MMods are not tweenable or settable on ScreenGameplay.  Use XMods if you need such an effect.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:MMod(value,approach_speed) end

---Use 1-16 in place of 'n' to move a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:MoveXn(value,approach_speed) end

---Use 1-16 in place of 'n' to move a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:MoveYn(value,approach_speed) end

---Use 1-16 in place of 'n' to move a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:MoveZn(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:MuteOnError(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:NoAttack(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:NoFakes(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoHolds(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoJumps(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoHands(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoLifts(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoQuads(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoStretch(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoMines(value) end

---@param value bool
---@return bool value
function PlayerOptions:NoRolls(value) end

---Sets the NoteSkin to the named noteskin, unless name is `nil` or the NoteSkin does not exist.  Returns the name of the previous NoteSkin and whether the set attempt succeeded.
---Changing the NoteSkin during gameplay is not supported.
---Example:
---@param name string
---@return string, bool value
function PlayerOptions:NoteSkin(name) end

---If the player is using Overhead (0 tilt, 0 skew), returns true.
---If true is passed, sets the tilt and skew to 0.
---@param var bool
---@return bool value
function PlayerOptions:Overhead(var) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ParabolaX(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ParabolaY(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ParabolaZ(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Passmark(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Planted(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:PlayerAutoPlay(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:PulseInner(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:PulseOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:PulseOuter(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:PulsePeriod(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Quick(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:RandAttack(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:RandomSpeed(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:RandomVanish(value,approach_speed) end

---Re-enable all `ENUM:TimingWindow`s that may have previously been disabled.
function PlayerOptions:ResetDisabledTimingWindows() end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Reverse(value,approach_speed) end

---Use 1-16 in place of 'n' to apply Reverse on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Reversen(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Right(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Roll(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Sawtooth(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SawtoothPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SawtoothZ(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SawtoothZPeriod(value,approach_speed) end

---ScrollBPM is one of the variables for controlling the speed mod.
---Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
---It is the setting for the CMod.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ScrollBPM(value,approach_speed) end

---ScrollSpeed is one of the variables for controlling the speed mod.
---Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
---It is the setting for the XMod.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ScrollSpeed(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ShrinkMult(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ShrinkLinear(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Shuffle(value) end

---Skew is one of the mods for controlling the perspective.  Use Overhead, Distant, Incoming, Space, Distant, or Hallway for controlling the perspective in the old way.
---Skew moves the vanishing point for the note field away from the center of the screen.
---Skew has no effect in single mode if Center1Player is true.
---Skew has no effect in double mode.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Skew(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Skippy(value) end

---@param value bool
---@return bool value
function PlayerOptions:SoftShuffle(value) end

---If the player is using Space ((positive skew and positive tilt) or (negative skew and negative tilt)), returns the value of skew and its approach_speed.
---Returns nil otherwise.
---If the optional first argument is passed, sets tilt to value and skew to value.
---If the optional second argument is passed, sets the approach_speed for skew and tilt to it.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Space(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Split(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Square(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SquareOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SquarePeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SquareZ(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SquareZOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SquareZPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Stealth(value,approach_speed) end

---Use 1-16 in place of 'n' to apply Stealth on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Stealthn(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:StealthPastReceptors(value) end

---@param value bool
---@return bool value
function PlayerOptions:StealthType(value) end

---@param value bool
---@return bool value
function PlayerOptions:Stomp(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Sudden(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:SuddenOffset(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:SuperShuffle(value) end

---TimeSpacing is one of the variables for controlling the speed mod.
---Use CMod, XMod, or MMod to set the speed mod unless you have a good reason not to.
---It controls whether the speed mod is in X mode or C mode.  It should only be set to 0 or 1, and is only a float value to allow tweening between the two states.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TimeSpacing(value,approach_speed) end

---Tilt is one of the mods for controlling the perspective.  Use Overhead, Distant, Incoming, Space, Distant, or Hallway for controlling the perspective in the old way.
---Tilt tilts the note field forward and back.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Tilt(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Tiny(value,approach_speed) end

---Use 1-16 in place of 'n' to apply Tiny on a specific column.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Tinyn(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Tipsy(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TipsyOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TipsySpeed(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Tornado(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TornadoOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TornadoPeriod(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TornadoZ(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TornadoZOffset(value,approach_speed) end

---Has a tangent variant that can be accessed by prepending 'Tan' to the function name.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:TornadoZPeriod(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:TurnNone(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Twirl(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Twister(value) end

---Returns `true` if the player is using reverse. (equivalent to `GetReverse() == 1.0`)
---@return bool value
function PlayerOptions:UsingReverse() end

---The time in seconds to adjust a player's visual delay by.
---Negative values will shift the arrows up, while positive values will push them down.
---Sub-millisecond visual delay values are not saved and are instead rounded to the closest millisecond.
---@param var float
function PlayerOptions:VisualDelay(var) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Wave(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:WavePeriod(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:Wide(value) end

---If the player has a XMod set, returns the value of that XMod and its associated approach speed.  Returns nil otherwise.
---If the optional first argument is passed, sets the XMod to the value and disables any CMod or MMod that is set.
---If the optional second argument is passed, sets the speed at which the transition occurs.
---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:XMod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Xmode(value,approach_speed) end

---@param value bool
---@return bool value
function PlayerOptions:ZBuffer(value) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:Zigzag(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ZigzagOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ZigzagPeriod(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ZigzagZ(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ZigzagZOffset(value,approach_speed) end

---@param value float
---@param approach_speed float
---@return float, float value
function PlayerOptions:ZigzagZPeriod(value,approach_speed) end

---@class PlayerStageStats

---Fails the player.
---@return bool value
function PlayerStageStats:FailPlayer() end

---Returns `true` if a full combo (TNS_W3 and up) was obtained.
---@return bool value
function PlayerStageStats:FullCombo() end

---Returns `true` if a full combo (`tns` and up) was obtained.
---@param tns TapNoteScore
---@return bool value
function PlayerStageStats:FullComboOfScore(tns) end

---Returns the number of Dance Points obtained by the player.
---@return int value
function PlayerStageStats:GetActualDancePoints() end

---Returns how long the player has been alive.
---@return float value
function PlayerStageStats:GetAliveSeconds() end

---Returns the best tap note score for a full combo.
---@return TapNoteScore value
function PlayerStageStats:GetBestFullComboTapNoteScore() end

---Returns the number of calories burned.
---@return float value
function PlayerStageStats:GetCaloriesBurned() end

---Returns a table of all the combos.  Each entry in the table is a table containing the StartSecond, SizeSeconds, Count, Rollover, StageCount, and IsZero information for that combo.
---@return table value # {combo}
function PlayerStageStats:GetComboList() end

---Returns the current possible maximum score.
---@return int value
function PlayerStageStats:GetCurMaxScore() end

---Returns the player's current combo.
---@return int value
function PlayerStageStats:GetCurrentCombo() end

---Returns the player's current life from 0..1.
---@return float value
function PlayerStageStats:GetCurrentLife() end

---Returns the player's current miss combo.
---@return int value
function PlayerStageStats:GetCurrentMissCombo() end

---Returns the number of Dance Points possible to be obtained by the player.
---@return int value
function PlayerStageStats:GetCurrentPossibleDancePoints() end

---Returns the player's current score multiplier.
---@return int value
function PlayerStageStats:GetCurrentScoreMultiplier() end

---Returns `true` if the player failed.
---@return bool value
function PlayerStageStats:GetFailed() end

---Returns the player's grade.
---@return Grade value
function PlayerStageStats:GetGrade() end

---Returns the HighScore for this PlayerStageStats.
---@return HighScore value
function PlayerStageStats:GetHighScore() end

---Returns the number of judgments for a specified HoldNoteScore.
---@param hns HoldNoteScore
---@return int value
function PlayerStageStats:GetHoldNoteScores(hns) end

---Returns the player's actual score on the lesson.
---@return int value
function PlayerStageStats:GetLessonScoreActual() end

---Returns the score needed to pass the lesson.
---@return int value
function PlayerStageStats:GetLessonScoreNeeded() end

---Returns table of samples of the life record from 0 to last_second.
---'samples' determines the size of the table.  'samples' defaults to 100
---if not specified.
---@param last_second float
---@param samples int
---@return table value # {float}
function PlayerStageStats:GetLifeRecord(last_second,samples) end

---Returns the player's life remaining seconds.
---@return float value
function PlayerStageStats:GetLifeRemainingSeconds() end

---Returns the machine high score index for this performance.
---@return int value
function PlayerStageStats:GetMachineHighScoreIndex() end

---Returns the number of controller steps.
---@return int value
function PlayerStageStats:GetNumControllerSteps() end

---Returns the peak combo award for this performance.
---@return PeakComboAward value
function PlayerStageStats:GetPeakComboAward() end

---Returns the personal high score index for this performance.
---@return int value
function PlayerStageStats:GetPersonalHighScoreIndex() end

---Returns a table of played steps.
---@return table value # {Steps}
function PlayerStageStats:GetPlayedSteps() end

---Gets the percentage of taps that were scored as `tns`.
---@param tns TapNoteScore
---@return float value
function PlayerStageStats:GetPercentageOfTaps(tns) end

---Returns the player's Dance Point percentage.
---@return float value
function PlayerStageStats:GetPercentDancePoints() end

---Returns the number of possible Dance Points.
---@return int value
function PlayerStageStats:GetPossibleDancePoints() end

---Returns a table of possible steps.
---@return table value # {Steps}
function PlayerStageStats:GetPossibleSteps() end

---Returns a RadarValues object representing the player's actual performance.
---@return RadarValues value
function PlayerStageStats:GetRadarActual() end

---Returns a RadarValues object representing the total values for the song.
---@return RadarValues value
function PlayerStageStats:GetRadarPossible() end

---Returns the score.
---@return int value
function PlayerStageStats:GetScore() end

---Returns the number of songs passed.
---@return int value
function PlayerStageStats:GetSongsPassed() end

---Returns the number of songs played.
---@return int value
function PlayerStageStats:GetSongsPlayed() end

---Returns the stage award for this performance.
---@return StageAward value
function PlayerStageStats:GetStageAward() end

---Returns how long the player survived in seconds.
---@return float value
function PlayerStageStats:GetSurvivalSeconds() end

---Returns the number of judgments for a specified TapNoteScore.
---@param tns TapNoteScore
---@return int value
function PlayerStageStats:GetTapNoteScores(tns) end

---Returns the max combo for this performance.
---@return int value
function PlayerStageStats:MaxCombo() end

---Returns `true` if the player was disqualified from ranking.
---@return bool value
function PlayerStageStats:IsDisqualified() end

---@param maxscore int
---@return void value
function PlayerStageStats:SetCurMaxScore(maxscore) end

---Sets the Dance Point limits of the stage.
---@param actual int
---@param possible int
---@return void value
function PlayerStageStats:SetDancePointLimits(actual,possible) end

---@param score int
---@return void value
function PlayerStageStats:SetScore(score) end

---@class PlayerState

---Applies the player options of ModsLevel_Preferred to the other ModsLevels.
---@return void value
function PlayerState:ApplyPreferredOptionsToOtherLevels() end

---Returns the current PlayerOptions for this PlayerState.
---@return PlayerOptions value
function PlayerState:GetCurrentPlayerOptions() end

---Returns the HealthState for this PlayerState.
---@return HealthState value
function PlayerState:GetHealthState() end

---Returns the multiplayer number for this PlayerState.
---@return MultiPlayer value
function PlayerState:GetMultiPlayerNumber() end

---Returns the PlayerController for this PlayerState.
---@return PlayerController value
function PlayerState:GetPlayerController() end

---Returns the player number for this PlayerState.
---@return PlayerNumber value
function PlayerState:GetPlayerNumber() end

---Returns a PlayerOptions object for the specified ModsLevel.
---@param ml ModsLevel
---@return PlayerOptions value
function PlayerState:GetPlayerOptions(ml) end

---Returns a string of player options for the specified ModsLevel. (was `GetPlayerOptions` before sm-ssc v1.2.3)
---@param ml ModsLevel
---@return string value
function PlayerState:GetPlayerOptionsString(ml) end

---Returns a table of strings, containing the player options for the specified ModsLevel.
---@param ml ModsLevel
---@return table value # {string}
function PlayerState:GetPlayerOptionsArray(ml) end

---Returns the SongPosition for this PlayerState.
---@return SongPosition value
function PlayerState:GetSongPosition() end

---Returns the current Super Meter level for this PlayerState.
---@return float value
function PlayerState:GetSuperMeterLevel() end

---Sets the player options to `sPlayerOptions` for the specified ModsLevel.
---@param ml ModsLevel
---@param sPlayerOptions string
---@return string value
function PlayerState:SetPlayerOptions(ml,sPlayerOptions) end

---@class PrefsManager

---Return the value of the preference `sPreference`.
---@param sPreference string
---@return various value
function PrefsManager:GetPreference(sPreference) end

---Return true if preference `sPreference` exists.
---@param sPreference string
---@return bool value
function PrefsManager:PreferenceExists(sPreference) end

---Set the value of the preference `sPreference` to `value`.
---@param sPreference string
---@param value various
---@return void value
function PrefsManager:SetPreference(sPreference,value) end

---Reset preference `sPreference` to the default value.
---@param sPreference string
---@return void value
function PrefsManager:SetPreferenceToDefault(sPreference) end

---Saves preferences to disk.
---@return void value
function PrefsManager:SavePreferences() end

---@class Profile

---Adds cals to the daily total.
---@param cals float
---@return void value
function Profile:AddCaloriesToDailyTotal(cals) end

---Adds a screenshot entry to the profile.  filename must be the full path of the screenshot, as returned by SaveScreenshot.
---@param hs HighScore
---@param filename string
---@return void value
function Profile:AddScreenshot(hs,filename) end

---Calculates the number of calories burned based on the heart rate (in beats per minute), the duration (in seconds), and data in the profile.
---@param heart_bpm float
---@param duration float
---@return float value
function Profile:CalculateCaloriesFromHeartRate(heart_bpm,duration) end

---Returns the age.
---@return int value
function Profile:GetAge() end

---Returns a table of all high score names that have been used on this profile.
---@param var void
---@return table value # {string}
function Profile:GetAllUsedHighScoreNames(var) end

---Returns the birth year.
---@return int value
function Profile:GetBirthYear() end

---Returns the number of calories burned during the current day.
---@return float value
function Profile:GetCaloriesBurnedToday() end

---Returns the profile's high scores for the specified ranking category.
---@param st StepsType
---@param rc RankingCategory
---@return HighScoreList value
function Profile:GetCategoryHighScoreList(st,rc) end

---Returns the Character being used by this profile.
---@return Character value
function Profile:GetCharacter() end

---Returns a composite of your high scores over courses with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return float value
function Profile:GetCoursesActual(st,d) end

---Returns the percentage of courses that you've completed with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return float value
function Profile:GetCoursesPercentComplete(st,d) end

---Returns the possible score of courses with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return float value
function Profile:GetCoursesPossible(st,d) end

---Returns the profile's display name.
---@return string value
function Profile:GetDisplayName() end

---Return the number of calories burned as a string.
---@return string value
function Profile:GetDisplayTotalCaloriesBurned() end

---Returns the number of calories needed to reach the goal.
---@return int value
function Profile:GetGoalCalories() end

---Returns the number of seconds needed to reach the goal.
---@return int value
function Profile:GetGoalSeconds() end

---Returns the current goal type.
---@return GoalType value
function Profile:GetGoalType() end

---Returns the GUID of this Profile.
---@return string value
function Profile:GetGUID() end

---Returns whether this profile ignores the step count based calorie calculation.
---@return bool value
function Profile:GetIgnoreStepCountCalories() end

---Returns whether this profile uses the male formula when CalculateCaloriesFromHeartRate is used.
---@return bool value
function Profile:GetIsMale() end

---Gets the profile's HighScoreList for a specified Song and Steps. (Alternate arguments for Courses: `Course c, Trail t`)
---@param s Song
---@param st Steps
---@return HighScoreList value
function Profile:GetHighScoreList(s,st) end

---Gets the profile's HighScoreList for a specified Song and Steps. (Alternate arguments for Courses: `Course c, Trail t`)
---If the profile does not have a HighScoreList for the Song and Steps, returns nil.  Use this to avoid increasing the memory footprint of the profile when checking the score lists for every song and steps.
---@param s Song
---@param st Steps
---@return HighScoreList value
function Profile:GetHighScoreListIfExists(s,st) end

---Returns the last played Course for this profile.
---@return Course value
function Profile:GetLastPlayedCourse() end

---Returns the last played Song for this profile.
---@return Song value
function Profile:GetLastPlayedSong() end

---Returns the last used high score name.
---@return string value
function Profile:GetLastUsedHighScoreName() end

---Returns the number of Toasties gotten using the specified profile.
---@return int value
function Profile:GetNumToasties() end

---Returns the profile's most popular course.
---@return Course value
function Profile:GetMostPopularCourse() end

---Returns the profile's most popular song.
---@return Song value
function Profile:GetMostPopularSong() end

---Returns the total number of songs played with the profile.
---@return int value
function Profile:GetNumTotalSongsPlayed() end

---Returns the position the profile should have in its category in the list.
---@return int value
function Profile:GetPriority() end

---Returns the number of times song `s` has been played with the profile.
---@param s Song
---@return int value
function Profile:GetSongNumTimesPlayed(s) end

---Returns a composite of your high scores over songs with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return float value
function Profile:GetSongsActual(st,d) end

---Returns the percent complete for all songs and courses for the specified StepsType `st`.
---@param st StepsType
---@return float value
function Profile:GetSongsAndCoursesPercentCompleteAllDifficulties(st) end

---Returns the percentage of songs that you've completed with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return float value
function Profile:GetSongsPercentComplete(st,d) end

---Returns the possible score of songs with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return float value
function Profile:GetSongsPossible(st,d) end

---Return the total number of calories burned.
---@return float value
function Profile:GetTotalCaloriesBurned() end

---Returns the number of dance points earned.
---@return int value
function Profile:GetTotalDancePoints() end

---Returns the number of Hands stepped on.
---@return int value
function Profile:GetTotalHands() end

---Returns the number of successful Holds.
---@return int value
function Profile:GetTotalHolds() end

---Returns the number of Jumps stepped on.
---@return int value
function Profile:GetTotalJumps() end

---Returns the number of successful Lifts.
---@return int value
function Profile:GetTotalLifts() end

---Returns the number of Mines stepped on.
---@return int value
function Profile:GetTotalMines() end

---Returns the total number of songs played with the profile.
---@return int value
function Profile:GetTotalNumSongsPlayed() end

---Returns the number of successful Rolls.
---@return int value
function Profile:GetTotalRolls() end

---Returns the number of steps with the specified StepsType and Difficulty that you've scored a certain Grade `g` on.
---@param st StepsType
---@param d Difficulty
---@param g Grade
---@return int value
function Profile:GetTotalStepsWithTopGrade(st,d,g) end

---Returns the number of Taps and successful Holds.
---@return int value
function Profile:GetTotalTapsAndHolds() end

---Returns the number of trails with the specified StepsType and Difficulty that you've scored a certain Grade `g` on.
---@param st StepsType
---@param d Difficulty
---@param g Grade
---@return int value
function Profile:GetTotalTrailsWithTopGrade(st,d,g) end

---Returns the type of the profile.  The StepMania engine uses ProfileType to sort the list of profiles, with `Guest` profiles appearing first, then `Normal`, then `Test`.
---Additional subsorting can be configured with `ENUM:ProfileSortOrder`.
---@return ProfileType value
function Profile:GetType() end

---Returns the user table for this Profile.
---@return table value
function Profile:GetUserTable() end

---Returns the VO2 max for this profile.
---@return float value
function Profile:GetVoomax() end

---Returns how much the player weighs.
---@return int value
function Profile:GetWeightPounds() end

---Returns `true` if the player has passed any steps in the specified Song `s`.
---@param s Song
---@return bool value
function Profile:HasPassedAnyStepsInSong(s) end

---Returns `true` if the specified code `sUnlockEntryID` is unlocked.
---@param sUnlockEntryID string
---@return bool value
function Profile:IsCodeUnlocked(sUnlockEntryID) end

---Sets the birth year of the profile.
---@param year int
---@return void value
function Profile:SetBirthYear(year) end

---Sets the current  for the Profile.
---@param sCharID string
---@return void value
function Profile:SetCharacter(sCharID) end

---Sets the display name of the profile to name.
---@param name string
---@return void value
function Profile:SetDisplayName(name) end

---Sets the goal to `iCals` calories.
---@param iCals int
---@return void value
function Profile:SetGoalCalories(iCals) end

---Sets the goal to `iSecs` seconds.
---@param iSecs int
---@return void value
function Profile:SetGoalSeconds(iSecs) end

---Sets the current goal type to `gt`.
---@param gt GoalType
---@return void value
function Profile:SetGoalType(gt) end

---Sets whether this profile ignores the step count based calorie counting.
---@param ignore bool
---@return void value
function Profile:SetIgnoreStepCountCalories(ignore) end

---Sets whether this profile uses the male formula when CalculateCaloriesFromHeartRate is used.
---@param male bool
---@return void value
function Profile:SetIsMale(male) end

---Sets last used high score name.
---@param name string
---@return void value
function Profile:SetLastUsedHighScoreName(name) end

---Sets the VO2 max for the profile.  0 is treated as unset.
---@param voo float
---@return void value
function Profile:SetVoomax(voo) end

---Sets how much the player weighs (in pounds) to `weightPounds`.
---@param weightPounds int
---@return void value
function Profile:SetWeightPounds(weightPounds) end

---Returns the amount of time this profile has spent in gameplay (in seconds).
---@return int value
function Profile:GetTotalGameplaySeconds() end

---Returns the number of sessions this profile has had.
---@return int value
function Profile:GetTotalSessions() end

---Returns the total session length (in seconds) of this profile.
---@return int value
function Profile:GetTotalSessionSeconds() end

---@class ProfileManager

---Returns the Profile for the specified profile ID.
---@param sProfileID string
---@return Profile value
function ProfileManager:GetLocalProfile(sProfileID) end

---Returns a table of the local profile display names.
---@return table value # {string}
function ProfileManager:GetLocalProfileDisplayNames() end

---@param iIndex int
---@return Profile value
function ProfileManager:GetLocalProfileFromIndex(iIndex) end

---@param iIndex int
---@return string value
function ProfileManager:GetLocalProfileIDFromIndex(iIndex) end

---Returns a table of the local profile IDs.
---@return table value # {string}
function ProfileManager:GetLocalProfileIDs() end

---@param sProfileID string
---@return int value
function ProfileManager:GetLocalProfileIndexFromID(sProfileID) end

---Retuns the machine profile.
---@return Profile value
function ProfileManager:GetMachineProfile() end

---Retuns the amount of local profiles.
---@return int value
function ProfileManager:GetNumLocalProfiles() end

---Returns the player name for player `pn`.
---@param pn PlayerNumber
---@return string value
function ProfileManager:GetPlayerName(pn) end

---Returns the profile for player `pn`.
---@param pn PlayerNumber
---@return Profile value
function ProfileManager:GetProfile(pn) end

---Returns the profile directory for the provided ProfileSlot (`ENUM:ProfileSlot`), formatted like `/Save/LocalProfiles/00000001/`.
---Returns an empty string if the provided ProfileSlot (`ENUM:ProfileSlot`) does not have a  loaded.
---@param slot ProfileSlot
---@return string value
function ProfileManager:GetProfileDir(slot) end

---Returns the number of times Song `s` has been played with the specified ProfileSlot (`ENUM:ProfileSlot`).
---@param s Song
---@param ps ProfileSlot
---@return int value
function ProfileManager:GetSongNumTimesPlayed(s,ps) end

---Returns the current stats prefix.
---@return string value
function ProfileManager:GetStatsPrefix() end

---Returns `true` if player `pn`'s profile is persistent.
---@param pn PlayerNumber
---@return bool value
function ProfileManager:IsPersistentProfile(pn) end

---Returns `true` if Song `s` has never been played before (according to the machine profile).
---@param s Song
---@return bool value
function ProfileManager:IsSongNew(s) end

function ProfileManager:LocalProfileIDToDir() end

---Returns `true` if the profile from the memory card is new.
---@return bool value
function ProfileManager:ProfileFromMemoryCardIsNew() end

---Returns `true` if `pn`'s Profile was loaded from a memory card.
---@param pn PlayerNumber
---@return bool value
function ProfileManager:ProfileWasLoadedFromMemoryCard(pn) end

---Returns `true` if the last load of player `pn`'s profile was a LastGood copy of the profile.
---@param pn PlayerNumber
---@return bool value
function ProfileManager:LastLoadWasFromLastGood(pn) end

---Returns `true` if the last load of player `pn`'s profile resulted in a tampered or corrupt profile.
---@param pn PlayerNumber
---@return bool value
function ProfileManager:LastLoadWasTamperedOrCorrupt(pn) end

---Saves the local profile with the specified ID.
---@param ID string
---@return bool value
function ProfileManager:SaveLocalProfile(ID) end

---Saves the machine profile.
---@return void value
function ProfileManager:SaveMachineProfile() end

---Saves the profile for player `pn`.
---@param pn PlayerNumber
---@return bool value
function ProfileManager:SaveProfile(pn) end

---Sets the current stats prefix.  The stats prefix is prepended to the Stats.xml file when loading or saving a profile.  SetStatsPrefix will reload all profiles from the Stats.xml that has the given prefix.  In general, score entries are the only thing not preserved when changing the stats prefix.  Profile::HandleStatsPrefixChange in Profile.cpp lists the fields that are preserved.
---@param var string
function ProfileManager:SetStatsPrefix(var) end

---@class Quad: Actor

---@class RadarValues

---Returns the value of `rc` from `Steps:GetRadarValues`.
---@param rc RadarCategory
---@return int value
function RadarValues:GetValue(rc) end

---@class RageBezier2D

---Destroys the RageBezier2D.  Do not attempt to use it after it has been destroyed.
function RageBezier2D:destroy() end

---Evaluates the bezier curve at the given t and returns the x and y values.  This is equivalent to using get_x and get_y to fetch the quadratic parts and calling evaluate on them directly.
---@param t float
---@return float,float value
function RageBezier2D:evaluate(t) end

---Takes the x given and converts it to a t value, then evaluates the y quadratic with the t value and returns the result.
---@param x float
---@return float value
function RageBezier2D:evaluate_y_from_x(x) end

---Returns the RageQuadratic used for the x component.
---@return RageQuadratic value
function RageBezier2D:get_x() end

---Returns the RageQuadratic used for the y component.
---@return RageQuadratic value
function RageBezier2D:get_y() end

---Sets the values used by the two quadratics.  This is equivalent to using get_x and get_y to get the quadratics and setting them directly.  Note that the components for the x quadratic and the y quadratic are interleaved.
---@param xa float
---@param ya float
---@param xb float
---@param yb float
---@param xc float
---@param yc float
---@param xd float
---@param yd float
function RageBezier2D:set_from_bezier(xa,ya,xb,yb,xc,yc,xd,yd) end

---@class RageDisplay

---Return the height of the display.
---@return int value
function RageDisplay:GetDisplayHeight() end

---Return the width of the display.
---@return int value
function RageDisplay:GetDisplayWidth() end

---Return the number of frames per second.
---@return int value
function RageDisplay:GetFPS() end

---Return the VPF.
---@return int value
function RageDisplay:GetVPF() end

---Return the cumulative FPS.
---@return int value
function RageDisplay:GetCumFPS() end

---Return an array-like `userdata` of type ,
---which describes the displays configured on the user's machine.
---@return DisplaySpecs value
function RageDisplay:GetDisplaySpecs() end

---Return `true` if the current renderer supports render-to-texture,
---`false` otherwise.
---@return bool value
function RageDisplay:SupportsRenderToTexture() end

---Return `true` if the current renderer/window implementation supports
---a fullscreen borderless-window mode, `false` otherwise.
---@return bool value
function RageDisplay:SupportsFullscreenBorderlessWindow() end

---@class RageFile

---Returns `true` if the current position within the file is the end. (EOF = End of File)
---@return bool value
function RageFile:AtEOF() end

---Clears the last error message.
---@return void value
function RageFile:ClearError() end

---Closes the file and releases it from memory.
---@return void value
function RageFile:Close() end

---Safely deletes the file handle.
---@return void value
function RageFile:destroy() end

---Flushes the buffer for the file handle, writing any pending output to disk.
function RageFile:Flush() end

---Gets the last error message and returns it.
---@return string value
function RageFile:GetError() end

---Gets a line and returns it.
---@return string value
function RageFile:GetLine() end

---Opens a file at `sPath` (relative to the StepMania root directory).
---`iAccessType` can be set to read (`1`), write (`2`), stream (`4`) or flush to disk on close (`8`).
---These can also be combined with addition. For example, to set up read and write, set `iAccessType` to `3` (1+2).
---@param sPath string
---@param iAccessType int
---@return bool value
function RageFile:Open(sPath,iAccessType) end

---Puts a new line in the file.
---@param s string
---@return int value
function RageFile:PutLine(s) end

---Returns a string containing the entire contents of the file.
---@return string value
function RageFile:Read() end

---Returns `length` bytes from the RageFile's current position.
---@param length int
---@return string value
function RageFile:ReadBytes(length) end

---Seeks to a position in the file and returns the new position.
---@return int value
function RageFile:Seek() end

---Returns the current position in the file.
---@return int value
function RageFile:Tell() end

---Writes a file with the contents of `str`.
---@param str string
---@return int value
function RageFile:Write(str) end

---@class RageFileManager

---Copies a file from `fromPath` to `toPath`.
---Returns `true` if the file was copied successfully.
---@param fromPath string
---@param toPath string
---@return bool value
function RageFileManager:Copy(fromPath,toPath) end

---Returns `true` if a file exists at `sPath`.
---@param sPath string
---@return bool value
function RageFileManager:DoesFileExist(sPath) end

---Returns a listing of files from `sPath`. The last two arguments are optional (and default to false).
---@param sPath string
---@param bOnlyDirs bool
---@param bReturnPathToo bool
---@return table value # {string}
function RageFileManager:GetDirListing(sPath,bOnlyDirs,bReturnPathToo) end

---Returns a file's size in bytes.
---@param sPath string
---@return int value
function RageFileManager:GetFileSizeBytes(sPath) end

---Returns the hash of the file at `sPath`.
---@param sPath string
---@return int value
function RageFileManager:GetHashForFile(sPath) end

---Unzips zip file at `zipPath` to `targetPath`.
---`strip` is optional and defaults to `0`.
---If set to a number larger than `0`, that many components are removed from the paths of the extracted files. e.g. `a/b/c` is replaced with `b/c` when stripping one component or just `c` when stripping two.
---Returns `true` if all files were extracted successfully.
---@param zipPath string
---@param targetPath string
---@param strip int
---@return bool value
function RageFileManager:Unzip(zipPath,targetPath,strip) end

---@class RageInput

---Returns an array of connected input device descriptions.
---@return table value # {string}
function RageInput:GetDescriptions() end

---@class RageQuadratic

---Evaluates the quadratic at the given t value and returns the result.
---@param t float
---@return float value
function RageQuadratic:evaluate(t) end

---Returns the four values that form the quadratic equation.  This function returns multiple values, so you must do something like this to get them:
---a, b, c, d= quadratic:get_bezier()
---@return float,float,float,float value
function RageQuadratic:get_bezier() end

---Equivalent to evaluate(1), but faster.
---@return float value
function RageQuadratic:get_bezier_end() end

---Equivalent to evaluate(0), but faster.
---@return float value
function RageQuadratic:get_bezier_start() end

---Returns the slope of the curve at the given t value.
---@param t float
---@return float value
function RageQuadratic:get_slope(t) end

---Sets the four values that form the quadratic equation.
---@param a float
---@param b float
---@param c float
---@param d float
function RageQuadratic:set_from_bezier(a,b,c,d) end

---Sets the four values that form the quadratic equation, treating the arguments as from a cubic equation instead of as from a bezier curve.
---@param a float
---@param b float
---@param c float
---@param d float
function RageQuadratic:set_from_cubic(a,b,c,d) end

---@class RageSound

---Returns the length of the sound loaded into this RageSound.  Returns -1 if no sound is loaded.
---@return float value
function RageSound:get_length() end

---Actually sets the value of `sProperty` to `fVal`. The supported properties depend on how the associated  was loaded.
---@param sProperty string
---@param fVal float
---@return void value
function RageSound:SetParam(sProperty,fVal) end

---Attempts (and typically fails) to set the value of `sProperty` to `fVal`. The supported properties depend on how the associated  was loaded.
---@param sProperty string
---@param fVal float
---@return void value
function RageSound:SetProperty(sProperty,fVal) end

---Sets the pitch to `fPitch`. The associated  have `SupportsRateChanging = true` on load.
---@param fPitch float
---@return void value
function RageSound:pitch(fPitch) end

---Sets the speed (that is, the rate at which the sound plays) to `fSpeed`. The associated  must have `SupportsRateChanging = true` on load.
---@param fSpeed float
---@return void value
function RageSound:speed(fSpeed) end

---Sets the volume to `fVolume`, which is between 0..1.
---@param fVolume float
---@return void value
function RageSound:volume(fVolume) end

---@class RageTexture

---Returns the source width.
---@return float value
function RageTexture:GetSourceWidth() end

---Returns the source height.
---@return float value
function RageTexture:GetSourceHeight() end

---Returns the texture width.
---@return float value
function RageTexture:GetTextureWidth() end

---Returns the texture height.
---@return float value
function RageTexture:GetTextureHeight() end

---Returns the image width.
---@return float value
function RageTexture:GetImageWidth() end

---Returns the image height.
---@return float value
function RageTexture:GetImageHeight() end

---Returns the number of frames in this texture.
---@return int value
function RageTexture:GetNumFrames() end

---Returns the path to the texture's file.
---@return string value
function RageTexture:GetPath() end

---Return the texture coordinate rectangle as `{left, top, right, bottom}`.
---@return table value # {float}
function RageTexture:GetTextureCoordRect() end

---Sets the animation or movie looping to `bLoop`.
---@param bLoop bool
---@return void value
function RageTexture:loop(bLoop) end

---Sets the animation or movie position to `fPos`.
---@param fPos float
---@return void value
function RageTexture:position(fPos) end

---Sets the animation or movie playback rate to `fRate`.
---@param fRate float
---@return void value
function RageTexture:rate(fRate) end

---Reloads the texture.
---@return void value
function RageTexture:Reload() end

---@class RollingNumbers: Actor

---Loads the metrics for this RollingNumbers from `sGroupName`.
---@param sGroupName string
---@return void value
function RollingNumbers:Load(sGroupName) end

---Sets the target number to `f`.
---@param f float
---@return void value
function RollingNumbers:targetnumber(f) end

---@class Screen

---This adds the Lua function `callback` to the list of functions the screen will pass input to, giving Lua access to player input as it occurs.
---When an input event occurs, `callback` will be passed a table with the details of the event.  `callback` must return a bool to indicate whether the event was handled.  If `callback` returns `true`, the event will not be passed any further.
---This method does not handle localization or different keyboard layouts, so  is better suited to getting text input from players.
---Be aware that both the screen (as handled by the StepMania engine) and your Lua callbacks will be passed input events, and this can result in undesirable side effects.
---Basic usage example:
---
---
---Details of the `event` table:
---@param callback function
---@return void value
function Screen:AddInputCallback(callback) end

---Returns the name of the next Screen.
---@return string value
function Screen:GetNextScreenName() end

---Returns the name of the previous Screen.
---@return string value
function Screen:GetPrevScreenName() end

---Returns the ScreenType for this Screen.
---@return ScreenType value
function Screen:GetScreenType() end

---Locks input for `f` seconds.
---@param f float
---@return void value
function Screen:lockinput(f) end

---[02 Other.lua] Gets a metric from the current Screen.
---@param sName string
---@return string value
function Screen:Metric(sName) end

---Posts a message with the text `sScreenMsg` to the Screen after `fDelay` seconds.
---@param sScreenMsg string
---@param fDelay float
---@return void value
function Screen:PostScreenMessage(sScreenMsg,fDelay) end

---This removes the callback from the list.
---@param callback function
---@return void value
function Screen:RemoveInputCallback(callback) end

---Sets the NextScreen value to name.
---@param name string
---@return void value
function Screen:SetNextScreenName(name) end

---Sets the PrevScreen value to name.
---@param name string
---@return void value
function Screen:SetPrevScreenName(name) end

---[02 Other.lua] Gets a string from the current Screen in the current language.
---@param sName string
---@return string value
function Screen:String(sName) end

---@class ScreenAttract: Screen

---@class ScreenEdit: Screen

---Returns the current `ENUM:EditState`.
---@return EditState value
function ScreenEdit:GetEditState() end

---@class ScreenEvaluation: Screen

---Returns the current StageStats.
---@return StageStats value
function ScreenEvaluation:GetStageStats() end

---@class ScreenGameplay: Screen

---This should behave identically to the normal back button behavior.  This function is for the pause menu to use when the player forfeits or restarts, so that a score isn't saved.
function ScreenGameplay:begin_backing_out() end

---Returns `true` if a single  has its NoteField centered using the `Center1Player` preference.
---Will return `false` if the current theme has `AllowCenter1Player=false` under `[ScreenGameplay]`.
---Notably, this can return `false` when the player's NoteField is visually centered, as is convention in double style (`ENUM:StyleType`) or Techno_Single8 (`ENUM:StepsType`).
---Refer to the global function `GLOBAL:Center1Player` for a somewhat more robust check.
---@return bool value
function ScreenGameplay:Center1Player() end

---Returns a dummy PlayerInfo for the specified index.
---@param index int
---@return PlayerInfo value
function ScreenGameplay:GetDummyPlayerInfo(index) end

---Returns the current haste rate.  HasteRate * MusicRate is the current total rate the music is multiplied by.
---@return float value
function ScreenGameplay:GetHasteRate() end

---Returns the  for the specified `ENUM:PlayerNumber` `pn`.
---@param pn PlayerNumber
---@return LifeMeter value
function ScreenGameplay:GetLifeMeter(pn) end

---Returns the next  in the current .
---@return Song value
function ScreenGameplay:GetNextCourseSong() end

---Returns the PlayerInfo for player `pn`.
---@param pn PlayerNumber
---@return PlayerInfo value
function ScreenGameplay:GetPlayerInfo(pn) end

---Returns the current true beats per second for the specified player.
---This takes into account the current music rate and the current haste effect.
---If you are displaying the BPM on ScreenGameplay, this is what you should use to have correct behavior when Haste and/or a music rate mod are in effect.
---@param pn PlayerNumber
---@return float value
function ScreenGameplay:GetTrueBPS(pn) end

---This is part of the system for controlling how haste behaves.
---See .
---@param var {float}
---@return table value # {float}
function ScreenGameplay:HasteAddAmounts(var) end

---This is part of the system for controlling how haste behaves.
---See .
---@param var float
---@return float value
function ScreenGameplay:HasteLifeSwitchPoint(var) end

---This is part of the system for controlling how haste behaves.
---See .
---@param var float
---@return float value
function ScreenGameplay:HasteTimeBetweenUpdates(var) end

---This is part of the system for controlling how haste behaves.
---See .
---@param var {float}
---@return table value # {float}
function ScreenGameplay:HasteTurningPoints(var) end

---Sets the next Screen to be loaded.
---@param s string
---@return void value
function ScreenGameplay:SetNewScreen(s) end

---Returns `true` if the game is paused.
---@return bool value
function ScreenGameplay:IsPaused() end

---Pauses or unpauses the game, depending on the value of `bPause`.
---@param bPause bool
---@return void value
function ScreenGameplay:PauseGame(bPause) end

---@class ScreenHowToPlay: Screen

---Returns the LifeMeter.
---@return LifeMeter value
function ScreenHowToPlay:GetLifeMeter() end

---@class ScreenManager

---Adds a screen at the top of the screen stack. (`sMessage` is an optional ScreenMessage posted once the new screen is finished.)
---@param sScreenName string
---@param sMessage string
---@return void value
function ScreenManager:AddNewScreenToTop(sScreenName,sMessage) end

---Gets the screen at the top of the screen stack.
---@return Screen value
function ScreenManager:GetTopScreen() end

---Returns whether the input for the player has been redirected away from the normal screen input function.  Input that has been redirected is only sent to Lua input callbacks.
---@param pn PlayerNumber
---@return bool value
function ScreenManager:get_input_redirected(pn) end

---Plays the invalid sound.
function ScreenManager:PlayInvalidSound() end

---Plays the start sound.
function ScreenManager:PlayStartSound() end

---Plays the coin sound.
function ScreenManager:PlayCoinSound() end

---Plays the cancel sound.
function ScreenManager:PlayCancelSound() end

---Plays the screenshot sound.
function ScreenManager:PlayScreenshotSound() end

---Reloads any loaded overlay screens.
---@return void value
function ScreenManager:ReloadOverlayScreens() end

---Returns `true` if screen class `s` exists.
---@param s string
---@return bool value
function ScreenManager:ScreenClassExists(s) end

---Returns `true` if screen `s` is prepared.
---@param s string
---@return bool value
function ScreenManager:ScreenIsPrepped(s) end

---Sets the next screen to `s`.
---@param s string
---@return void value
function ScreenManager:SetNewScreen(s) end

---Sets whether the input for the player has been redirected away from the normal screen input function.  Input that has been redirected is only sent to Lua input callbacks.
---This can be useful when putting a custom menu on a screen, and you want to disable the built in actors while the menu is open.  You can handle input through an input callback (`Screen:AddInputCallback`) until the player closes the menu.
---@param pn PlayerNumber
---@param redir bool
---@return bool value
function ScreenManager:set_input_redirected(pn,redir) end

---Broadcasts a system message.
---@param s string
---@return void value
function ScreenManager:SystemMessage(s) end

---@class ScreenNameEntryTraditional: Screen

---Returns `true` if Player `pn` backspaced successfully.
---@param pn PlayerNumber
---@return bool value
function ScreenNameEntryTraditional:Backspace(pn) end

---Returns `true` if Player `pn` was able to add `sKey` to their name.
---@param pn PlayerNumber
---@param sKey string
---@return bool value
function ScreenNameEntryTraditional:EnterKey(pn,sKey) end

---Attempts to finish Player `pn` and returns `true`
---if successful.
---@param pn PlayerNumber
---@return bool value
function ScreenNameEntryTraditional:Finish(pn) end

---Returns `true` if anyone is entering their name.
---@return bool value
function ScreenNameEntryTraditional:GetAnyEntering() end

---Returns `true` if anyone is still entering their name.
---(As opposed to those who are Finalized; see )
---@return bool value
function ScreenNameEntryTraditional:GetAnyStillEntering() end

---Returns `true` if Player `pn` is entering their name.
---@param pn PlayerNumber
---@return bool value
function ScreenNameEntryTraditional:GetEnteringName(pn) end

---Returns `true` if Player `pn` is finished entering their name.
---@param pn PlayerNumber
---@return bool value
function ScreenNameEntryTraditional:GetFinalized(pn) end

---Gets the currently selected letter of Player `pn`.
---@param pn PlayerNumber
---@return string value
function ScreenNameEntryTraditional:GetSelection(pn) end

---@class ScreenOptions: Screen

---Returns `true` if all active players are on the last options row.
---@return bool value
function ScreenOptions:AllAreOnLastRow() end

---Returns `true` if the specified player is on an items that ends the screen.
---@param pn PlayerNumber
---@return bool value
function ScreenOptions:FocusedItemEndsScreen(pn) end

---Returns the current row that player `pn` is on. (Was previously `GetCurrentRow`.)
---@param pn PlayerNumber
---@return int value
function ScreenOptions:GetCurrentRowIndex(pn) end

---Returns the number of rows on the screen.
---@return int value
function ScreenOptions:GetNumRows() end

---Returns the specified OptionRow.
---@param iRow int
---@return OptionRow value
function ScreenOptions:GetOptionRow(iRow) end

---@class ScreenPlayerOptions: Screen

---Returns `true` if we are going to PlayerOptions.
---@return bool value
function ScreenPlayerOptions:GetGoToOptions() end

---@class ScreenProfileLoad: Screen

---Continues to the next screen.
---@return void value
function ScreenProfileLoad:Continue() end

---Returns `true` if there is a profile that can be loaded.
---@return bool value
function ScreenProfileLoad:HaveProfileToLoad() end

---@class ScreenProfileSave: Screen

---Continues to the next screen.
---@return void value
function ScreenProfileSave:Continue() end

---Returns `true` if there is a profile that can be saved.
---@return bool value
function ScreenProfileSave:HaveProfileToSave() end

---@class ScreenSelectMaster: Screen

---Returns player `pn`'s current selected item as an integer.
---@param pn PlayerNumber
---@return int value
function ScreenSelectMaster:GetSelectionIndex(pn) end

---@class ScreenSelectMusic: Screen

---Returns false if the options list is already open or the UseOptionsList metric is false.
---@return bool value
function ScreenSelectMusic:CanOpenOptionsList() end

---Returns `true` if the player is going to the options screen.
---@return bool value
function ScreenSelectMusic:GetGoToOptions() end

---Returns the MusicWheel used on this screen.
---@return MusicWheel value
function ScreenSelectMusic:GetMusicWheel() end

---Opens the OptionsList for Player `pn`
---@param pn PlayerNumber
---@return void value
function ScreenSelectMusic:OpenOptionsList(pn) end

---[02 StageMods.lua] Sets up modifiers for course modes.
---@return void value
function ScreenSelectMusic:setupcoursestagemods() end

---[02 StageMods.lua] Sets up modifiers for non-course modes.
---@return void value
function ScreenSelectMusic:setupmusicstagemods() end

---@class ScreenSelectProfile: Screen

---Tells the screen to go to the previous screen.
---@return void value
function ScreenSelectProfile:Cancel() end

---Attempts to finish the screen and returns `true`
---if successful.
---@return bool value
function ScreenSelectProfile:Finish() end

---Returns the profile index of the specified Player.
---@param pn PlayerNumber
---@return int value
function ScreenSelectProfile:GetProfileIndex(pn) end

---Sets the profile index of Player `pn` to `iProfileIndex`.
---The following values of `iProfileIndex` have special, hardcoded behavior:
---• `-1`: join the player and play the theme's start sound effect
---• `-2`: unjoin the player, unlock their MemoryCard, and unmount their MemoryCard
---• `-3`: allow the user to play without a local or USB profile (as a guest)
---@param pn PlayerNumber
---@param iProfileIndex int
---@return bool value
function ScreenSelectProfile:SetProfileIndex(pn,iProfileIndex) end

---@class ScreenTextEntry: Screen

---Sets up a ScreenTextEntry's values using `args`.
---TextEntrySettings is special struct for ScreenTextEntry, and
---as a Lua table, it should contain specific attributes:
---@param args TextEntrySettings
---@return void value
function ScreenTextEntry:Load(args) end

---@class ScreenWithMenuElements: Screen

---Tells the screen to go to the previous screen.
---@return void value
function ScreenWithMenuElements:Cancel() end

---Returns `true` if the screen is currently transitioning.
---@return bool value
function ScreenWithMenuElements:IsTransitioning() end

---Tells the screen to go to play its Out transition, and then posts the ScreenMessage `sScreenMsg`. To go to the next screen, use "SM_GoToNextScreen" as the argument.
---@param sScreenMsg string
---@return void value
function ScreenWithMenuElements:StartTransitioningScreen(sScreenMsg) end

---Sets whether the screen allows late joining.  This only works for screens that are just ScreenWithMenuElements, as most derived screens have their own hard coded function for whether late joining is allowed.
---@param var bool
---@return void value
function ScreenWithMenuElements:SetAllowLateJoin(var) end

---@class ScreenWithMenuElementsSimple: Screen

---@class Song

---Returns an array of all the available  objects for a .
---@return table value # {Steps}
function Song:GetAllSteps() end

---Returns the path to the song's background image.
---If the stepartist did not provide a path for a background, this returns `nil`.
---@return string value
function Song:GetBackgroundPath() end

---Returns the path to the song's banner.
---If the stepartist did not provide a path for a banner, this returns `nil`.
---@return string value
function Song:GetBannerPath() end

---Returns a table with all the data for the song's BGCHANGES line.
---Each element of the table is one change like this:
---`{start_beat=1.0, rate=1.0, transition="example", effect="example", file1="example", file2="example", color1="#FFFFFFFF", color2="#FFFFFFFF"}`
---@return table value
function Song:GetBGChanges() end

---Returns the path to the song's CD image.
---If the stepartist did not provide a path for a CDImage, this returns `nil`.
---@return string value
function Song:GetCDImagePath() end

---Gets the path to the CDTitle.
---If the stepartist did not provide a path for a CDTitle, this returns `nil`.
---@return string value
function Song:GetCDTitlePath() end

---Returns the path to the song's disc image (different from CD, think Pump).
---@return string value
function Song:GetDiscPath() end

---Returns the displayed artist of the song.
---@return string value
function Song:GetDisplayArtist() end

---Returns a table of 2 floats containing the display BPMs.
---@return table value # {float}
function Song:GetDisplayBpms() end

---Returns the displayed full title of the song.
---The full title is, at minimum, the main title.
---If the subtitle (`Song:GetDisplaySubTitle`) is not an empty string,
---the full title is main title + " " + subtitle.
---@return string value
function Song:GetDisplayFullTitle() end

---Returns the displayed main title of the song.
---@return string value
function Song:GetDisplayMainTitle() end

---Returns the displayed subtitle of the song.
---If the stepartist did not provide a subtitle, this returns an empty string.
---@return string value
function Song:GetDisplaySubTitle() end

---Returns the first beat of the song.
---@return float value
function Song:GetFirstBeat() end

---Returns the first second of the song.
---@return float value
function Song:GetFirstSecond() end

---Returns the genre of the song.
---@return string value
function Song:GetGenre() end

---Returns the group name that the song is in.
---@return string value
function Song:GetGroupName() end

---Returns the path to the song's jacket image.
---@return string value
function Song:GetJacketPath() end

---Returns the last beat of the song.
---@return float value
function Song:GetLastBeat() end

---Returns the last second of the song.
---@return float value
function Song:GetLastSecond() end

---Gets the path to the lyrics.
---@return string value
function Song:GetLyricsPath() end

---GetDisplayMainTitle checks the ShowNativeLanguage pref and returns the transliterated title is that pref is false.
---GetMainTitle (this function) does not check that pref.  Instead, it directly returns the title, exactly as it is in the #TITLE field in the simfile.
---@return string value
function Song:GetMainTitle() end

---Gets the path to the music file.
---@return string value
function Song:GetMusicPath() end

---Returns a Step object if the StepType and Difficulty exist.
---@param st StepsType
---@param d Difficulty
---@return Steps value
function Song:GetOneSteps(st,d) end

---Gets the Song's origin.
---@return string value
function Song:GetOrigin() end

---Returns the path to the Song's preview music.  This handles the #PREVIEW tag internally, so it works with songs that use it and songs that don't.
---@return string value
function Song:GetPreviewMusicPath() end

---Returns the path to the Song's preview video, if it exists. (Returns `nil` otherwise.)
---@return string value
function Song:GetPreviewVidPath() end

---Gets the length of a song's sample time in seconds.
---@return float value
function Song:GetSampleLength() end

---Gets the starting position of a song sample in seconds.
---@return float value
function Song:GetSampleStart() end

---Returns the song's directory.
---@return string value
function Song:GetSongDir() end

---Returns the songfile path.
---@return string value
function Song:GetSongFilePath() end

---[02 Other.lua] Returns the number of stages this song costs.
---@return int value
function Song:GetStageCost() end

---Returns a table of Steps that have StepsType `st`.
---@param st StepsType
---@return table value # {Steps}
function Song:GetStepsByStepsType(st) end

---Returns how long the longest stepchart is in seconds.
---@return float value
function Song:GetStepsSeconds() end

---Returns the song's TimingData.
---@return TimingData value
function Song:GetTimingData() end

---Returns the transliterated artist of the song.
---@return string value
function Song:GetTranslitArtist() end

---Returns the transliterated full title of the song, including subtitle.
---@return string value
function Song:GetTranslitFullTitle() end

---Returns the transliterated main title of the song.
---@return string value
function Song:GetTranslitMainTitle() end

---Returns the transliterated subtitle of the song.
---@return string value
function Song:GetTranslitSubTitle() end

---Returns `true` if the song has steps for the specified difficulty in `st`.
---@param st StepsType
---@param d Difficulty
---@return bool value
function Song:HasStepsTypeAndDifficulty(st,d) end

---Returns `true` if the song has attacks.
---@return bool value
function Song:HasAttacks() end

---Returns `true` if the song has a background.
---@return bool value
function Song:HasBackground() end

---Returns `true` if the song has a banner.
---@return bool value
function Song:HasBanner() end

---Returns `true` if the song has BGChanges.
---@return bool value
function Song:HasBGChanges() end

---Returns `true` if the song has a CD image.
---@return bool value
function Song:HasCDImage() end

---Returns `true` if the song has a CDTitle.
---@return bool value
function Song:HasCDTitle() end

---Returns `true` if the song has a Disc graphic.
---@return bool value
function Song:HasDisc() end

---Returns `true` if the song has edits.
---@param st StepsType
---@return bool value
function Song:HasEdits(st) end

---Returns `true` if the song has a jacket graphic.
---@return bool value
function Song:HasJacket() end

---Returns `true` if the song has lyrics.
---@return bool value
function Song:HasLyrics() end

---Returns `true` if the song has music.
---@return bool value
function Song:HasMusic() end

---Returns `true` if the song has a preview video.
---@return bool value
function Song:HasPreviewVid() end

---Returns `true` if the song has significant BPM changes or stops.
---@return bool value
function Song:HasSignificantBPMChangesOrStops() end

---Returns `true` if the song has the specified StepsType.
---@param st StepsType
---@return bool value
function Song:HasStepsType(st) end

---Returns `true` if the song's DisplayBPM is constant.
---@return bool value
function Song:IsDisplayBpmConstant() end

---Returns `true` if the song's DisplayBPM is random.
---@return bool value
function Song:IsDisplayBpmRandom() end

---Returns `true` if the song's DisplayBPM is secret.
---@return bool value
function Song:IsDisplayBpmSecret() end

---Returns `true` if the song is considered easy.
---@return bool value
function Song:IsEasy() end

---Returns `true` if the song is enabled.
---@return bool value
function Song:IsEnabled() end

---Returns `true` if the song meets the criteria for a "Long Version".
---@return bool value
function Song:IsLong() end

---Returns `true` if the song meets the criteria for "Marathon" length.
---@return bool value
function Song:IsMarathon() end

---Returns `true` if the song and the specified steps have different timing.
---@param s Steps
---@return bool value
function Song:IsStepsUsingDifferentTiming(s) end

---Returns `true` if the song only has Beginner steps.
---@return bool value
function Song:IsTutorial() end

---Returns the length of the song in seconds.
---@return float value
function Song:MusicLengthSeconds() end

---Returns `true` if the song is normally displayed.
---@return bool value
function Song:NormallyDisplayed() end

---Returns `true` if the song is shown in Demonstration and Ranking.
---@return bool value
function Song:ShowInDemonstrationAndRanking() end

---@class SongManager

---Returns `true` if the specified course group exists.
---@param sGroup string
---@return bool value
function SongManager:DoesCourseGroupExist(sGroup) end

---Returns `true` if the specified song group exists.
---@param sGroup string
---@return bool value
function SongManager:DoesSongGroupExist(sGroup) end

---Returns a Course if one matching `sCourse` is found.
---@param sCourse string
---@return Course value
function SongManager:FindCourse(sCourse) end

---Returns a Song if one matching `sSong` is found.
---@param sSong string
---@return Song value
function SongManager:FindSong(sSong) end

---Returns an array of all the installed courses.
---@param bIncludeAutogen bool
---@return table value # {Course}
function SongManager:GetAllCourses(bIncludeAutogen) end

---Returns an array of all the installed songs.
---@return table value # {Song}
function SongManager:GetAllSongs() end

---Returns the course color of Course `c`.
---@param c Course
---@return color value
function SongManager:GetCourseColor(c) end

---Returns the path to the specified course group's banner.
---@param sGroup string
---@return string value
function SongManager:GetCourseGroupBannerPath(sGroup) end

---Returns a table containing all of the course group names.
---@return table value # {string}
function SongManager:GetCourseGroupNames() end

---Returns a table with all of the courses in the specified group.
---@param sGroup string
---@param bIncludeAutogen bool
---@return table value # {Course}
function SongManager:GetCoursesInGroup(sGroup,bIncludeAutogen) end

---Returns the extra stage info (Song, Steps) for the specified Style `s`. If `b2ndExtra` is true, it will use the second Extra Stage data instead of the first.
---@param b2ndExtra bool
---@param s Style
---@return various value
function SongManager:GetExtraStageInfo(b2ndExtra,s) end

---[Deprecated] Always returns `0`.
---@return int value
function SongManager:GetNumAdditionalCourses() end

---[Deprecated] Always returns `0`.
---@return int value
function SongManager:GetNumAdditionalSongs() end

---Returns the number of course groups.
---@return int value
function SongManager:GetNumCourseGroups() end

---Returns the number of courses.
---@return int value
function SongManager:GetNumCourses() end

---Returns the number of selectable and unlocked songs.
---@return int value
function SongManager:GetNumSelectableAndUnlockedSongs() end

---Returns the number of song groups.
---@return int value
function SongManager:GetNumSongGroups() end

---Returns the number of songs.
---@return int value
function SongManager:GetNumSongs() end

---Returns the number of locked songs, regardless of reason for locking.
---@return int value
function SongManager:GetNumLockedSongs() end

---Returns the number of unlocked songs.
---@return int value
function SongManager:GetNumUnlockedSongs() end

---Returns a table of popular courses for the specified CourseType.
---@param ct CourseType
---@return table value # {Course}
function SongManager:GetPopularCourses(ct) end

---Returns a table of popular songs.
---@return table value # {Song}
function SongManager:GetPopularSongs() end

---Returns a table of courses as they'd appear in preferred sort.
---@param ct CourseType
---@param bIncludeAutogen bool
---@return table value # {Course}
function SongManager:GetPreferredSortCourses(ct,bIncludeAutogen) end

---Returns a table of songs as they'd appear in preferred sort.
---@return table value # {Song}
function SongManager:GetPreferredSortSongs() end

---Returns a random course.
---@return Course value
function SongManager:GetRandomCourse() end

---Returns a random song.
---@return Song value
function SongManager:GetRandomSong() end

---Returns the song color of Song `s`.
---@param s Song
---@return color value
function SongManager:GetSongColor(s) end

---Returns a Song given a set of Steps `st`.
---@param st Steps
---@return Song value
function SongManager:GetSongFromSteps(st) end

---Returns the path to the specified song group's banner.
---@param sGroup string
---@return string value
function SongManager:GetSongGroupBannerPath(sGroup) end

---Returns the song group color of `sGroupName`.
---@param sGroupName string
---@return color value
function SongManager:GetSongGroupColor(sGroupName) end

---Returns a table containing all of the song group names.
---@return table value # {string}
function SongManager:GetSongGroupNames() end

---Returns the rank (popularity) of Song `s`.
---@param s Song
---@return int value
function SongManager:GetSongRank(s) end

---Returns a table containing all of the songs in group `sGroupName`.
---@param sGroupName string
---@return table value # {Song}
function SongManager:GetSongsInGroup(sGroupName) end

---Returns the shortened group name (based on entries in Translations.xml).
---@param sGroupName string
---@return string value
function SongManager:ShortenGroupName(sGroupName) end

---By default, loads preferred courses from `{theme}/Other/SongManager sListName.txt`.
---(New since ITGmania 0.6.0) If the optional argument `bIsAbsolute` is set, instead treats
---sListName as an absolute path instead of loading it from the Theme's `Other` directory.
---@param sListName string
---@param bIsAbsolute bool
---@return void value
function SongManager:SetPreferredCourses(sListName,bIsAbsolute) end

---By default, loads preferred songs from `{theme}/Other/SongManager sListName.txt`.
---(New since ITGmania 0.6.0) If the optional argument `bIsAbsolute` is set, instead treats
---sListName as an absolute path instead of loading it from the Theme's `Other` directory.
---@param sListName string
---@param bIsAbsolute bool
---@return void value
function SongManager:SetPreferredSongs(sListName,bIsAbsolute) end

---Returns the preferred sort section name for the specified Song.
---@param s Song
---@return string value
function SongManager:SongToPreferredSortSectionName(s) end

---[Deprecated] Always returns `false`.
---@param c Course
---@return bool value
function SongManager:WasLoadedFromAdditionalCourses(c) end

---[Deprecated] Always returns `false`.
---@param s Song
---@return bool value
function SongManager:WasLoadedFromAdditionalSongs(s) end

---@class SongOptions

---@param type AutosyncType
---@return AutosyncType value
function SongOptions:AutosyncSetting(type) end

---@param b bool
---@return bool value
function SongOptions:AssistClap(b) end

---@param b bool
---@return bool value
function SongOptions:AssistMetronome(b) end

---@param b bool
---@return bool value
function SongOptions:StaticBackground(b) end

---@param b bool
---@return bool value
function SongOptions:RandomBGOnly(b) end

---@param b bool
---@return bool value
function SongOptions:SaveScore(b) end

---@param b bool
---@return bool value
function SongOptions:SaveReplay(b) end

---Limited to the range 0 < rate <= 3 because speeds greater than 3 are likely to crash.
---@param rate float
---@return float value
function SongOptions:MusicRate(rate) end

---A multiplier for the haste system.  Limited to the range -1 to 1.
---@param h float
---@return float value
function SongOptions:Haste(h) end

---@class SongPosition

---Returns the current beats per second.
---@return float value
function SongPosition:GetCurBPS() end

---Returns `true` if a Delay is active.
---@return bool value
function SongPosition:GetDelay() end

---Returns `true` if a Freeze is active.
---@return bool value
function SongPosition:GetFreeze() end

---@return float value
function SongPosition:GetMusicSeconds() end

---@return float value
function SongPosition:GetMusicSecondsVisible() end

---@return float value
function SongPosition:GetSongBeat() end

---@return float value
function SongPosition:GetSongBeatNoOffset() end

---@return float value
function SongPosition:GetSongBeatVisible() end

---Returns the row where a warp appears.
---@return int value
function SongPosition:GetWarpBeginRow() end

---Returns the warp destination length.
---@return float value
function SongPosition:GetWarpDestination() end

---@class Sprite: Actor

---Returns the length of the animation in seconds.
---@return float value
function Sprite:GetAnimationLengthSeconds() end

---Gets whether the Sprite should call the decode function for its texture during updates.
---@return bool value
function Sprite:GetDecodeMovie() end

---Return the number of states this Sprite has.
---@return int value
function Sprite:GetNumStates() end

---Returns the Sprite's current state (frame number in a multi-frame sprite).
---@return int value
function Sprite:GetState() end

---Returns the Sprite's texture.
---@return RageTexture value
function Sprite:GetTexture() end

---[02 Sprite.lua] Returns a `Frames` table consisting of `iNumFrames` frames lasting for a total of `fSeconds` seconds.
---This function is not a member function and should be used as `Frames = Sprite.LinearFrames( 5, 2.6 )`.
---@param iNumFrames int
---@param fSeconds float
---@return table value
function Sprite:LinearFrames(iNumFrames,fSeconds) end

---If `sPath` is `nil`, then unload the texture. Otherwise, load the texture at path `sPath`.
---@param sPath string
---@return void value
function Sprite:Load(sPath) end

---Load the song background texture at `sPath`.
---@param sPath string
---@return void value
function Sprite:LoadBackground(sPath) end

---Load the song banner texture at `sPath`.
---@param sPath string
---@return void value
function Sprite:LoadBanner(sPath) end

---Loads the image of type `sType` from the cache based on `sPath`.
---Internal types: "Banner", "Background", "CDTitle", "Jacket", "CDImage" and "Disc".
---@param sType string
---@param sPath string
---@return void value
function Sprite:LoadFromCached(sType,sPath) end

---[02 Sprite.lua] Loads the background from the current Song or the first Trail entry.
---@return void value
function Sprite:LoadFromCurrentSongBackground() end

---[02 Sprite.lua] Load the texture for `song`'s background.
---@param song Song
---@return void value
function Sprite:LoadFromSongBackground(song) end

---[02 Sprite.lua] Load the texture for `song`'s banner.
---@param song Song
---@return void value
function Sprite:LoadFromSongBanner(song) end

---Sets the custom image rectangle. (Works in image pixel space.)
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
---@return void value
function Sprite:SetCustomImageRect(fLeft,fTop,fRight,fBottom) end

---Sets custom offsets for the corners of the Sprite.  Coordinates are paired,
---corner order is upper left, lower left, lower right, upper right.
---@param ulx float
---@param uly float
---@param llx float
---@param lly float
---@param lrx float
---@param lry float
---@param urx float
---@param ury float
---@return void value
function Sprite:SetCustomPosCoords(ulx,uly,llx,lly,lrx,lry,urx,ury) end

---Turns off the custom pos coords for the sprite.
---@return void value
function Sprite:StopUsingCustomPosCoords() end

---Sets whether the Sprite should call the decode function for its texture during updates.
---@param decode bool
function Sprite:SetDecodeMovie(decode) end

---Set the `ENUM:EffectMode` to `mode`.
---@param mode EffectMode
---@return void value
function Sprite:SetEffectMode(mode) end

---Sets the number of seconds into the animation to `fSeconds`.
---@param fSeconds float
---@return void value
function Sprite:SetSecondsIntoAnimation(fSeconds) end

---Set the texture to `texture`.
---@param texture RageTexture
---@return void value
function Sprite:SetTexture(texture) end

---@param fX float
---@param fY float
---@return void value
function Sprite:addimagecoords(fX,fY) end

---Allows the themer to set a custom texture rectangle that effects the way the texture is drawn.
---@param fLeft float
---@param fTop float
---@param fRight float
---@param fBottom float
---@return void value
function Sprite:customtexturerect(fLeft,fTop,fRight,fBottom) end

---Returns true if the sprite is using the effect clock for texcoordvelocity.
---@return bool value
function Sprite:get_use_effect_clock_for_texcoords() end

---[02 Sprite.lua] Call `( bLoop )` on the texture.
---@param bLoop bool
---@return void value
function Sprite:loop(bLoop) end

---[02 Sprite.lua] Call `( fPos )` on the texture.
---@param fPos float
---@return void value
function Sprite:position(fPos) end

---[02 Sprite.lua] Call `( fRate )` on the texture.
---@param fRate float
---@return void value
function Sprite:rate(fRate) end

---Scale the Sprite to width `fWidth` and height `fHeight` clipping if the dimensions do not match.
---@param fWidth float
---@param fHeight float
---@return void value
function Sprite:scaletoclipped(fWidth,fHeight) end

---Set the Sprite's state to `iNewState`.
---@param iNewState int
---@return void value
function Sprite:setstate(iNewState) end

---If `use` is true, then the sprite will use the effect clock for texcoordvelocity.
---@param use bool
function Sprite:set_use_effect_clock_for_texcoords(use) end

---@param fX float
---@param fY float
---@return void value
function Sprite:stretchtexcoords(fX,fY) end

---Set the texture coordinate velocity which controls how the Sprite changes as it animates.  A velocity of 1 makes the texture scroll all the way once per second.
---@param fVelX float
---@param fVelY float
---@return void value
function Sprite:texcoordvelocity(fVelX,fVelY) end

---Crops the Sprite to `fWidth`x`fHeight`.
---@param fWidth float
---@param fHeight float
---@return void value
function Sprite:CropTo(fWidth,fHeight) end

---[01 alias.lua] Alias for CropTo.
---@param fWidth float
---@param fHeight float
---@return void value
function Sprite:cropto(fWidth,fHeight) end

---Sets all the state delays to `fRate`. Useful for Sprites that need to change by BPM (e.g. Tran from DDR 5th Mix, the cube from DS EuroMix 2).
---@param fRate float
---@return void value
function Sprite:SetAllStateDelays(fRate) end

---@class StageStats

---Returns `true` if everyone failed.
---@return bool value
function StageStats:AllFailed() end

---Returns `true` if any player has given up on the song.
---@return bool value
function StageStats:GaveUp() end

---Returns the EarnedExtraStage (`ENUM:EarnedExtraStage`) value.
---@return EarnedExtraStage value
function StageStats:GetEarnedExtraStage() end

---Returns the number of seconds played.
---@return float value
function StageStats:GetGameplaySeconds() end

---Returns the PlayerStageStats of multiplayer `mp`.
---@param mp MultiPlayer
---@return PlayerStageStats value
function StageStats:GetMultiPlayerStageStats(mp) end

---@return table value # {Song}
function StageStats:GetPlayedSongs() end

---Returns the PlayerStageStats of player `pn`.
---@param pn PlayerNumber
---@return PlayerStageStats value
function StageStats:GetPlayerStageStats(pn) end

---@return table value # {Song}
function StageStats:GetPossibleSongs() end

---Returns the Stage (`ENUM:Stage`) value.
---@return Stage value
function StageStats:GetStage() end

---Returns the stage index.
---@return int value
function StageStats:GetStageIndex() end

---Returns `true` if at least one person passed.
---@return bool value
function StageStats:OnePassed() end

---Returns `true` if player `pn` has a high score.
---@param pn PlayerNumber
---@return bool value
function StageStats:PlayerHasHighScore(pn) end

---@class StatsManager

---Returns the accumulated played StageStats.
---@return StageStats value
function StatsManager:GetAccumPlayedStageStats() end

---Returns the best final grade.
---@return Grade value
function StatsManager:GetBestFinalGrade() end

---Returns the best grade.
---@return Grade value
function StatsManager:GetBestGrade() end

---Returns the current StageStats.
---@return StageStats value
function StatsManager:GetCurStageStats() end

---Returns player `pn`'s final grade.
---@param pn PlayerNumber
---@return Grade value
function StatsManager:GetFinalEvalStageStats(pn) end

---Returns player `pn`'s final grade.
---@param pn PlayerNumber
---@return Grade value
function StatsManager:GetFinalGrade(pn) end

---Get the StageStats from `iAgo` rounds ago.
---@param iAgo int
---@return StageStats value
function StatsManager:GetPlayedStageStats(iAgo) end

---Returns the number of stages played.
---@return int value
function StatsManager:GetStagesPlayed() end

---Returns the worst grade.
---@return Grade value
function StatsManager:GetWorstGrade() end

---Resets the stats.
---@return void value
function StatsManager:Reset() end

---@class Steps

---Returns the author that made that particular Steps pattern.
---@return string value
function Steps:GetAuthorCredit() end

---Returns the Steps chart name.
---@return string value
function Steps:GetChartName() end

---Returns the Chart Style for this Steps.
---@return string value
function Steps:GetChartStyle() end

---Returns the Steps description.
---@return string value
function Steps:GetDescription() end

---Returns the Steps difficulty.
---@return Difficulty value
function Steps:GetDifficulty() end

---Returns a table with the minimum and maximum values from the DisplayBPM.
---@return table value # {float}
function Steps:GetDisplayBpms() end

---Returns the DisplayBPM type.
---@return DisplayBPM value
function Steps:GetDisplayBPMType() end

---Returns the Steps filename from the Cache.
---@return string value
function Steps:GetFilename() end

---Returns a hash of the Steps.
---@return unsigned value
function Steps:GetHash() end

---Returns the numerical difficulty of the Steps.
---@return int value
function Steps:GetMeter() end

---Returns `true` if the Steps has any attacks.
---@return bool value
function Steps:HasAttacks() end

---Returns `true` if the Steps pattern has significant timing changes.
---@return bool value
function Steps:HasSignificantTimingChanges() end

---Returns the complete list of RadarValues for player `pn`. Use `RadarValues:GetValue` to grab a specific value.
---@param pn PlayerNumber
---@return RadarValues value
function Steps:GetRadarValues(pn) end

---Returns the Steps type.
---@return StepsType value
function Steps:GetStepsType() end

---Returns the TimingData for the Steps.
---@return TimingData value
function Steps:GetTimingData() end

---Returns `true` if the Steps are an edit.
---@return bool value
function Steps:IsAnEdit() end

---Returns `true` if the Steps are a player edit (loaded from a profile).
---@return bool value
function Steps:IsAPlayerEdit() end

---Returns `true` if the steps were automatically generated.
---@return bool value
function Steps:IsAutogen() end

---Returns `true` if the DisplayBPM is constant.
---@return bool value
function Steps:IsDisplayBpmConstant() end

---Returns `true` if the DisplayBPM is random.
---@return bool value
function Steps:IsDisplayBpmRandom() end

---Returns `true` if the DisplayBPM is secret.
---@return bool value
function Steps:IsDisplayBpmSecret() end

---Returns the predicted meter for this Step.
---@return float value
function Steps:PredictMeter() end

---Returns `true` if the Steps use different `TimingData` from the Song.
---@return bool value
function Steps:UsesSplitTiming() end

---@class StepsDisplay: Actor

---Loads the StepsDisplay commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
---@return void value
function StepsDisplay:Load(sMetricsGroup) end

---Sets the StepsDisplay from the GameState using Player `pn`.
---@param pn PlayerNumber
---@return void value
function StepsDisplay:SetFromGameState(pn) end

---Sets the StepsDisplay based on Steps `pSteps`.
---@param pn PlayerNumber
---@param pSteps Steps
---@return void value
function StepsDisplay:SetFromSteps(pn,pSteps) end

---Sets the StepsDisplay based on the passed in StepsType, `iMeter`, and Difficulty.
---@param st StepsType
---@param iMeter int
---@param dc Difficulty
---@return void value
function StepsDisplay:SetFromStepsTypeAndMeterAndDifficulty(st,iMeter,dc) end

---Sets the StepsDisplay based on Trail `pTrail`.
---@param pTrail Trail
---@return void value
function StepsDisplay:SetFromTrail(pTrail) end

---@class Style

---Returns the number of total tracks per player this Style contains (e.g. 4 for dance-versus, but 8 for dance-double).
---@return int value
function Style:ColumnsPerPlayer() end

---Returns the name of the Style.
---@return string value
function Style:GetName() end

---Returns the StepsType for this Style.
---@return StepsType value
function Style:GetStepsType() end

---Returns the StyleType for this Style.
---@return StyleType value
function Style:GetStyleType() end

---Returns a table containing the `Track`, `XOffset`, and `Name` of the column.
---For example, calling `GAMESTATE:GetCurrentStyle():GetColumnInfo('PlayerNumber_P1', 2)` when the current
---game is dance will return `{Track=2, XOffset=-32, Name="Down"}`.
---Calling `GAMESTATE:GetCurrentStyle():GetColumnInfo('PlayerNumber_P1', 1)` when the current
---game is pump will return `{Track=1, XOffset=-96, Name="DownLeft"}`.
---@param pn PlayerNumber
---@param column int
---@return table value # {int, int, string}
function Style:GetColumnInfo(pn,column) end

---Returns the draw order of the column.
---@param column int
---@return int value
function Style:GetColumnDrawOrder(column) end

---Returns the width of the notefield for the given player with this style.
---@param pn PlayerNumber
---@return float value
function Style:GetWidth(pn) end

---Returns `true` if this style locks the difficulty for both players.
---@return bool value
function Style:LockedDifficulty() end

---[Deprecated] Always returns `false`.
---@return bool value
function Style:NeedsZoomOutWith2Players() end

---@class TapNote

---Returns the  of the Tap Note.
---@return TapNoteType value
function TapNote:GetTapNoteType() end

---Returns the  of the Tap Note.
---@return TapNoteSubType value
function TapNote:GetTapNoteSubType() end

---Returns the  of the Tap Note.
---@return TapNoteSource value
function TapNote:GetTapNoteSource() end

---Returns the  of the Tap Note.
---@return TapNoteResult value
function TapNote:GetTapNoteResult() end

---Returns the  of the Tap Note. Relevant for routine steps.
---@return PlayerNumber value
function TapNote:GetPlayerNumber() end

---Returns the Attack Modifiers of the Tap Note.
---@return string value
function TapNote:GetAttackModifiers() end

---Returns the Attack Duration of the Tap Note in seconds.
---@return float value
function TapNote:GetAttackDuration() end

---Returns the Keysound Index of the Tap Note.
---@return int value
function TapNote:GetKeysoundIndex() end

---Returns the Hold Duration of the Tap Note in beats.
---@return float value
function TapNote:GetHoldDuration() end

---Returns the  of the Tap Note.
---@return HoldNoteResult value
function TapNote:GetHoldNoteResult() end

---@class TapNoteResult

---Returns the  of the Tap Note.
---@return TapNoteScore value
function TapNoteResult:GetTapNoteScore() end

---Returns the TapNotOffset of the Tap Note.
---@return float value
function TapNoteResult:GetTapNoteOffset() end

---Returns true if the Tap Note was judged with a result that would stop it from drawing.
---@return bool value
function TapNoteResult:GetHidden() end

---Returns whether the input for the Tap Note was ever held during
---the judgment interval. Useful to distinguish a normal miss from
---a held miss.
---@return bool value
function TapNoteResult:GetHeld() end

---@class HoldNoteResult

---Returns the  of the Hold Note.
---@return HoldNoteScore value
function HoldNoteResult:GetHoldNoteScore() end

---Returns the life of the Hold Note.
---@return float value
function HoldNoteResult:GetLife() end

---Returns the amount of time the hold has overlapped the target.
---@return float value
function HoldNoteResult:GetOverlappedTime() end

---Returns the last beat the Hold Note was held.
---@return float value
function HoldNoteResult:GetLastHeldBeat() end

---Returns the number of checkpoints hit.
---@return int value
function HoldNoteResult:GetCheckpointsHit() end

---Returns the number of checkpoints missed.
---@return int value
function HoldNoteResult:GetCheckpointsMissed() end

---Returns true if the note was initiated and is being held.
---@return bool value
function HoldNoteResult:GetHeld() end

---Returns true if the note was initiated.
---@return bool value
function HoldNoteResult:GetActive() end

---@class HttpRequestFuture

---Cancels the running HTTP request. Does nothing if the request
---has already completed.
---@return void value
function HttpRequestFuture:Cancel() end

---@class TextBanner: Actor

---Loads the TextBanner from the specified metrics group.
---@param sMetricsGroup string
---@return void value
function TextBanner:Load(sMetricsGroup) end

---Loads the TextBanner's child elements from a .
---@param s Song
---@return void value
function TextBanner:SetFromSong(s) end

---Loads the TextBanner's child elements from strings.
---@param sDisplayTitle string
---@param sTranslitTitle string
---@param sDisplaySubTitle string
---@param sTranslitSubTitle string
---@param sDisplayArtist string
---@param sTranslitArtist string
---@return void value
function TextBanner:SetFromString(sDisplayTitle,sTranslitTitle,sDisplaySubTitle,sTranslitSubTitle,sDisplayArtist,sTranslitArtist) end

---@class ThemeManager

---Returns `true` if the specified language exists in the current theme.
---@param langName string
---@return bool value
function ThemeManager:DoesLanguageExist(langName) end

---Returns `true` if the specified theme exists.
---@param themeName string
---@return bool value
function ThemeManager:DoesThemeExist(themeName) end

---[02 Utilities.lua] Returns the absolute path of a file in the theme.
---@param sPath string
---@return string value
function ThemeManager:GetAbsolutePath(sPath) end

---Returns the current language.
---@return string value
function ThemeManager:GetCurLanguage() end

---Returns the theme's current directory.
---@return string value
function ThemeManager:GetCurrentThemeDirectory() end

---Returns the name of the current theme.
---@return string value
function ThemeManager:GetCurThemeName() end

---Returns the value of `Element` in `Class` from metrics.ini.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetMetric(ClassName,Element) end

---Returns the names of all elements in `Class` from metrics.ini.
---@param ClassName string
---@return table value # {string}
function ThemeManager:GetMetricNamesInGroup(ClassName) end

---Returns the number of selectable themes.
---@return int value
function ThemeManager:GetNumSelectableThemes() end

---Returns the path of `ClassName Element` in the BGAnimations folder.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetPathB(ClassName,Element) end

---Returns the path of an element in the Fonts folder.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetPathF(ClassName,Element) end

---Returns the path of an element in the Graphics folder.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetPathG(ClassName,Element) end

---Returns three strings: BGAnimation ResolvedPath, MatchingMetricsGroup, MatchingElement.
---Used in LoadFallbackB (`GLOBAL:LoadFallbackB`) in themes/_fallback/02 Other.lua
---Example: `local path, metrics_group, element = THEME:GetPathInfoB("ScreenTitleJoin", "decorations")`
---@param ClassName string
---@param Element string
---@return string, string, string value
function ThemeManager:GetPathInfoB(ClassName,Element) end

---Returns the path of an element in the Other folder.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetPathO(ClassName,Element) end

---Returns the path of an element in the Sounds folder.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetPathS(ClassName,Element) end

---Returns a table of selectable theme directories.
---@return table value # {string}
function ThemeManager:GetSelectableThemeNames() end

---Returns the value of `Element` in `Class` for the currently loaded language.
---@param ClassName string
---@param Element string
---@return string value
function ThemeManager:GetString(ClassName,Element) end

---Returns the names of all elements in `Class` for the currently loaded language.
---@param ClassName string
---@return table value # {string}
function ThemeManager:GetStringNamesInGroup(ClassName) end

---Returns the author of the current theme or "[unknown author]".
---@return string value
function ThemeManager:GetThemeAuthor() end

---Returns the display name of the current theme.
---@return string value
function ThemeManager:GetThemeDisplayName() end

---Returns a table of strings showing what themes the current theme falls back on.
---For example, if the current theme is in a folder named "Home", and the "Home" theme falls back on the "default" theme, which itself falls back on the "_fallback" theme, the table would be:
---@return table value # { string }
function ThemeManager:get_theme_fallback_list() end

---Returns `true` if the theme has the specified metric.
---@param section string
---@param value string
---@return bool value
function ThemeManager:HasMetric(section,value) end

---Returns `true` if the theme has the specified string.
---@param section string
---@param value string
---@return bool value
function ThemeManager:HasString(section,value) end

---Returns `true` if the specified theme is selectable.
---@param theme string
---@return bool value
function ThemeManager:IsThemeSelectable(theme) end

---Reloads the current theme's metrics.
---@return void value
function ThemeManager:ReloadMetrics() end

---@param sMask string
---@return void value
function ThemeManager:RunLuaScripts(sMask) end

---Changes the current theme.
---After the theme changes, the screen specified by the Common::AfterThemeChangeScreen metric will be loaded.
---The Common::InitialScreen metric will be used if Common::AfterThemeChangeScreen is blank or invalid.
---@param theme string
---@return void value
function ThemeManager:SetTheme(theme) end

---@class TimingData

---Returns the minimum and maximum BPM of the song in a table (in that order).
---@return table value # {float}
function TimingData:GetActualBPM() end

---Returns the beat from `fElapsedTime`.
---@param fElapsedTime float
---@return float value
function TimingData:GetBeatFromElapsedTime(fElapsedTime) end

---Returns the BPM at `fBeat`.
---@param fBeat float
---@return float value
function TimingData:GetBPMAtBeat(fBeat) end

---Returns a table of the BPMs as floats.
---@return table value # {float}
function TimingData:GetBPMs() end

---Returns a table of the BPMs and the times they happen as tables.  The first value is the beat.  The second value is the bpm.
---@return table value # {{float, float}}
function TimingData:GetBPMsAndTimes() end

---Returns the elapsed time from `fBeat`.
---@param fBeat float
---@return float value
function TimingData:GetElapsedTimeFromBeat(fBeat) end

---Returns a table of the Stops and the times they happen as tables.  The first value is the beat.  The second value is the length.
---@return table value # {{float, float}}
function TimingData:GetStops() end

---Returns a table of the Delays and the times they happen as tables.  The first value is the beat.  The second value is the length.
---@return table value # {{float, float}}
function TimingData:GetDelays() end

---Returns a table of the Labels and the times they happen as tables.  The first value is the beat.  The second value is the label.
---@return table value # {{float, string}}
function TimingData:GetLabels() end

---Returns a table of the Warps and the times they happen as tables.  The first value is the beat.  The second value is the number of beats to warp over.
---@return table value # {{float, float}}
function TimingData:GetWarps() end

---Returns a table of the Combos and the times they happen as tables.  The first value is the beat.  The second value is the combo.  The third value is the miss combo.
---@return table value # {{float, float, float}}
function TimingData:GetCombos() end

---Returns a table of the Time Signatures and the times they happen as tables.  The first value is the beat.  The second value is the numerator.  The third value is the denominator.
---@return table value # {{float, float, float}}
function TimingData:GetTimeSignatures() end

---Returns a table of the Tickcounts and the times they happen as tables.  The first value is the beat.  The second value is the number of ticks per beat.
---@return table value # {{float, float}}
function TimingData:GetTickcounts() end

---Returns a table of the Fakes and the times they happen as tables.  The first value is the beat.  The second value is the number of beats to not judge.
---@return table value # {{float, float}}
function TimingData:GetFakes() end

---Returns a table of the Scrolls and the times they happen as tables.  The first value is the beat.  The second value is the scroll rate ratio.
---@return table value # {{float, float}}
function TimingData:GetScrolls() end

---Returns a table of the Speeds and the times they happen as tables.  The first value is the beat.  The second value is the scroll rate ratio.  The third value is the length of time to fully activate.  The fourth value is the unit of activation (0 for beats, 1 for seconds).
---@return table value # {{float, float}}
function TimingData:GetSpeeds() end

---Returns `true` if the TimingData contains BPM changes.
---@return bool value
function TimingData:HasBPMChanges() end

---Returns `true` if the TimingData contains delays.
---@return bool value
function TimingData:HasDelays() end

---Returns `true` if the TimingData contains any BPM changes with a negative BPM.
---@return bool value
function TimingData:HasNegativeBPMs() end

---Returns `true` if the TimingData contains stops.
---@return bool value
function TimingData:HasStops() end

---Returns `true` if the TimingData contains warps.
---@return bool value
function TimingData:HasWarps() end

---returns `true` if the TimingData contains fake segments.
---@return bool value
function TimingData:HasFakes() end

---Returns `true` if the TimingData contains speed scrolling changes.
---@return bool value
function TimingData:HasSpeedChanges() end

---Returns `true` if the TimingData contains general scrolling changes.
---@return bool value
function TimingData:HasScrollChanges() end

---@class Trail

---Returns `true` if song `s` is in the Trail.
---@param s Song
---@return bool value
function Trail:ContainsSong(s) end

---Returns an array with all the artists in the Trail.
---@return table value # {string}
function Trail:GetArtists() end

---Returns the Trail's difficulty.
---@return Difficulty value
function Trail:GetDifficulty() end

---Returns the length of this Trail in seconds.
---@return float value
function Trail:GetLengthSeconds() end

---Returns a table of TrailEntry items.
---@return table value # {TrailEntry}
function Trail:GetTrailEntries() end

---Returns the Trail's difficulty rating.
---@return int value
function Trail:GetMeter() end

---Returns the Trail's RadarValues.
---@return RadarValues value
function Trail:GetRadarValues() end

---Returns the Trail's StepsType.
---@return StepsType value
function Trail:GetStepsType() end

---Returns the Trail's total meter
---@return int value
function Trail:GetTotalMeter() end

---Returns the TrailEntry at index `iEntry`.
---@param iEntry int
---@return TrailEntry value
function Trail:GetTrailEntry(iEntry) end

---Returns `true` if any of the Trail entries are secret.
---@return bool value
function Trail:IsSecret() end

---@class TrailEntry

---Returns a string of modifiers used in this TrailEntry.
---@return string value
function TrailEntry:GetNormalModifiers() end

---Returns the Song used in this TrailEntry.
---@return Song value
function TrailEntry:GetSong() end

---Returns the Steps used in this TrailEntry.
---@return Steps value
function TrailEntry:GetSteps() end

---(why'd I think this was a good idea when we have `CourseEntry:IsSecret`?)
---@return bool value
function TrailEntry:IsSecret() end

---@class UnlockEntry

---Sets the UnlockEntry's ID to `m_sEntryID`.
---@param m_sEntryID string
---@return void value
function UnlockEntry:code(m_sEntryID) end

---Sets the UnlockEntry's course to `sCourseName`.
---Example: `course,"Driven"`
---@param sCourseName string
---@return void value
function UnlockEntry:course(sCourseName) end

---Returns the code for this unlock.
---@return string value
function UnlockEntry:GetCode() end

---Returns the Course for this unlock.
---@return Course value
function UnlockEntry:GetCourse() end

---Returns the unlock description.
---@return string value
function UnlockEntry:GetDescription() end

---Returns the UnlockRequirement.
---@return UnlockRequirement value
function UnlockEntry:GetRequirement() end

---Returns `true` if the UnlockEntry requires you to pass Hard steps.
---@return bool value
function UnlockEntry:GetRequirePassHardSteps() end

---Returns `true` if the UnlockEntry requires you to pass Challenge steps.
---@return bool value
function UnlockEntry:GetRequirePassChallengeSteps() end

---Returns the Song related to the UnlockEntry.
---@return Song value
function UnlockEntry:GetSong() end

---Get all of the steps locked based on StepsType.
---@return Steps value
function UnlockEntry:GetStepByStepsType() end

---Get all of the steps locked based on difficulty.
---@return table value # {Steps}
function UnlockEntry:GetStepOfAllTypes() end

---Returns the UnlockRewardType for this entry.
---@return UnlockRewardType value
function UnlockEntry:GetUnlockRewardType() end

---Returns `true` if the UnlockEntry is locked.
---@return bool value
function UnlockEntry:IsLocked() end

---Sets the UnlockEntry's modifier to `sModifier`.
---@param sModifier string
---@return void value
function UnlockEntry:mod(sModifier) end

---Sets the requirement for this unlock to `m_fRequirement`.
---@param ut UnlockRequirement
---@param m_fRequirement float
---@return void value
function UnlockEntry:require(ut,m_fRequirement) end

---Makes the UnlockEntry require passing Hard steps.
---@return void value
function UnlockEntry:requirepasshardsteps() end

---Makes the UnlockEntry require passing Challenge steps.
---@return void value
function UnlockEntry:requirepasschallengesteps() end

---Makes the UnlockEntry hide in Roulette.
---@return void value
function UnlockEntry:roulette() end

---Sets the UnlockEntry's song to `sSongName`. `sSongName` also requires the group.
---Example: `song,"In The Groove/Pandemonium"`
---@param sSongName string
---@return void value
function UnlockEntry:song(sSongName) end

---Sets the UnlockEntry to unlock a specified song's steps.
---Example: `steps,"In The Groove/Pandemonium","expert"`
---@param sSong string
---@param sSteps string
---@return void value
function UnlockEntry:steps(sSong,sSteps) end

---Sets the UnlockEntry to unlock a specified song's stepstype.
---@param sSong string
---@param sSteps string
---@param sStepsType string
---@return void value
function UnlockEntry:steps_type(sSong,sSteps,sStepsType) end

---@class UnlockManager

---Returns `true` if there are any unlocks to celebrate.
---@return bool value
function UnlockManager:AnyUnlocksToCelebrate() end

---Returns the associated EntryID.
---@param sName string
---@return string value
function UnlockManager:FindEntryID(sName) end

---Returns the number of unlocked items.
---@return int value
function UnlockManager:GetNumUnlocked() end

---Returns the number of all unlock items, regardless of status.
---@return int value
function UnlockManager:GetNumUnlocks() end

---Returns the number of points for the machine profile based on the specified UnlockRequirement.
---@param ur UnlockRequirement
---@return float value
function UnlockManager:GetPoints(ur) end

---Returns the number of points for the specified profile based on the specified UnlockRequirement.
---@param p Profile
---@param ur UnlockRequirement
---@return float value
function UnlockManager:GetPointsForProfile(p,ur) end

---Returns the number of points until the next unlock.
---@param ut UnlockRequirement
---@return float value
function UnlockManager:GetPointsUntilNextUnlock(ut) end

---Returns a table of songs unlocked by UnlockEntry `sEntryID`.
---@param sEntryID string
---@return table value # {Song}
function UnlockManager:GetSongsUnlockedByEntryID(sEntryID) end

---Returns a table of steps unlocked by UnlockEntry `sEntryID`.
---@param sEntryID string
---@return table value # {Steps}
function UnlockManager:GetStepsUnlockedByEntryID(sEntryID) end

---Returns the UnlockEntry at `iIndex`.
---@param iIndex int
---@return UnlockEntry value
function UnlockManager:GetUnlockEntry(iIndex) end

---Returns the UnlockEntry index to celebrate.
---@return int value
function UnlockManager:GetUnlockEntryIndexToCelebrate() end

---Sets the preferred Song/Course to the specified `sUnlockEntryID`
---@param sUnlockEntryID string
---@return void value
function UnlockManager:PreferUnlockEntryID(sUnlockEntryID) end

---Unlocks an entry by ID.
---@param sUnlockEntryID string
---@return void value
function UnlockManager:UnlockEntryID(sUnlockEntryID) end

---Unlocks an entry by index.
---@param iUnlockEntryID int
---@return void value
function UnlockManager:UnlockEntryIndex(iUnlockEntryID) end

---Determines if a song is locked by any means. The number returned determines
---how the song is locked.
---@param pSong Song
---@return int value
function UnlockManager:IsSongLocked(pSong) end

---@class WebSocketHandle

---Closes the WebSocket connection. No further reconnections will be attempted.
---@return void value
function WebSocketHandle:Close() end

---Sends a message containing `data`.
---If the optional `binary` argument is set to `true`, the message is marked as binary.
---Returns whether the message was sent successfully.
---@param data string
---@param binary bool
---@return bool value
function WebSocketHandle:Send(data,binary) end

---@class WheelBase

---Returns the wheel's current index.
---@return int value
function WheelBase:GetCurrentIndex() end

---Returns the total number of items in the wheel.
---@return int value
function WheelBase:GetNumItems() end

---Returns the WheelItemDataType of the selected item.
---@return WheelItemDataType value
function WheelBase:GetSelectedType() end

---Returns the WheelItem at index `iIndex`.
---@param iIndex int
---@return WheelItemBase value
function WheelBase:GetWheelItem(iIndex) end

---Returns `true` if the wheel is locked.
---@return bool value
function WheelBase:IsLocked() end

---Returns `true` if the wheel is settled/stopped moving.
---@return bool value
function WheelBase:IsSettled() end

---Moves the wheel by `n`.
---@param n int
---@return void value
function WheelBase:Move(n) end

---Attempts to set the open section to `sSection`.
---@param sSection string
---@return void value
function WheelBase:SetOpenSection(sSection) end

---@class WheelItemBase

---Returns the color of this wheel item.
---@return color value
function WheelItemBase:GetColor() end

---Returns the text of this wheel item.
---@return string value
function WheelItemBase:GetText() end

---Returns the type of this wheel item.
---@return WheelItemDataType value
function WheelItemBase:GetType() end

---Returns whether the wheel item has been loaded yet.  If this function returns false, calling any other WheelItemBase function will result in an error.
---A specific case where this is known to happen is commands that trigger on CurrentSongChanged because the music wheel clears the current song before it finishes loading if the current song is longer than the number of stages remaining.
---@return bool value
function WheelItemBase:IsLoaded() end

---@class WorkoutGraph: Actor

---Sets the WorkoutGraph from the current Workout.
---@return void value
function WorkoutGraph:SetFromCurrentWorkout() end

---Sets the WorkoutGraph from GameState and song index `iSongIndex`.
---@param iSongIndex int
---@return void value
function WorkoutGraph:SetFromGameStateAndHighlightSong(iSongIndex) end

---@enum AllowW1
local AllowW1 = {
AllowW1_Never = 0,
AllowW1_CoursesOnly = 1,
AllowW1_Everywhere = 2,
}

---@enum AttractSoundFrequency
local AttractSoundFrequency = {
AttractSoundFrequency_Never = 0,
AttractSoundFrequency_EveryTime = 1,
AttractSoundFrequency_Every2Times = 2,
AttractSoundFrequency_Every3Times = 3,
AttractSoundFrequency_Every4Times = 4,
AttractSoundFrequency_Every5Times = 5,
}

---@enum AutosyncType
local AutosyncType = {
AutosyncType_Off = 0,
AutosyncType_Song = 1,
AutosyncType_Machine = 2,
AutosyncType_Tempo = 3,
}

---@enum BackgroundFitMode
local BackgroundFitMode = {
BackgroundFitMode_CoverDistort = 0,
BackgroundFitMode_CoverPreserve = 1,
BackgroundFitMode_FitInside = 2,
BackgroundFitMode_FitInsideAvoidLetter = 3,
BackgroundFitMode_FitInsideAvoidPillar = 4,
}

---@enum BlendMode
local BlendMode = {
BlendMode_Normal = 0,
BlendMode_Add = 1,
BlendMode_Subtract = 2,
BlendMode_Modulate = 3,
BlendMode_CopySrc = 4,
BlendMode_AlphaMask = 5,
BlendMode_AlphaKnockOut = 6,
BlendMode_AlphaMultiply = 7,
BlendMode_WeightedMultiply = 8,
BlendMode_InvertDest = 9,
BlendMode_NoEffect = 10,
}

---@enum CoinMode
local CoinMode = {
CoinMode_Home = 0,
CoinMode_Pay = 1,
CoinMode_Free = 2,
}

---@enum CourseSortOrders
local CourseSortOrders = {
CourseSortOrders_Preferred = 0,
CourseSortOrders_Songs = 1,
CourseSortOrders_Meter = 2,
CourseSortOrders_MeterSum = 3,
CourseSortOrders_MeterRank = 4,
}

---@enum CourseType
local CourseType = {
CourseType_Nonstop = 0,
CourseType_Oni = 1,
CourseType_Endless = 2,
CourseType_Survival = 3,
}

---@enum CullMode
local CullMode = {
CullMode_Back = 0,
CullMode_Front = 1,
CullMode_None = 2,
}

---@enum Difficulty
local Difficulty = {
Difficulty_Beginner = 0,
Difficulty_Easy = 1,
Difficulty_Medium = 2,
Difficulty_Hard = 3,
Difficulty_Challenge = 4,
Difficulty_Edit = 5,
}

---@enum DisplayBPM
local DisplayBPM = {
DisplayBPM_Actual = 0,
DisplayBPM_Specified = 1,
DisplayBPM_Random = 2,
}

---@enum DrainType
local DrainType = {
DrainType_Normal = 0,
DrainType_NoRecover = 1,
DrainType_SuddenDeath = 2,
}

---@enum DrawMode
local DrawMode = {
DrawMode_Quads = 0,
DrawMode_QuadStrip = 1,
DrawMode_Fan = 2,
DrawMode_Strip = 3,
DrawMode_Triangles = 4,
DrawMode_LineStrip = 5,
DrawMode_SymmetricQuadStrip = 6,
}

---@enum EarnedExtraStage
local EarnedExtraStage = {
EarnedExtraStage_No = 0,
EarnedExtraStage_Extra1 = 1,
EarnedExtraStage_Extra2 = 2,
}

---@enum EditMode
local EditMode = {
EditMode_Practice = 0,
EditMode_CourseMods = 1,
EditMode_Home = 2,
EditMode_Full = 3,
}

---@enum EditState
local EditState = {
EditState_Edit = 0,
EditState_Record = 1,
EditState_RecordPaused = 2,
EditState_Playing = 3,
}

---@enum EffectMode
local EffectMode = {
EffectMode_Normal = 0,
EffectMode_Unpremultiply = 1,
EffectMode_ColorBurn = 2,
EffectMode_ColorDodge = 3,
EffectMode_VividLight = 4,
EffectMode_HardMix = 5,
EffectMode_Overlay = 6,
EffectMode_Screen = 7,
EffectMode_YUYV422 = 8,
EffectMode_DistanceField = 9,
}

---@enum FailType
local FailType = {
FailType_Immediate = 0,
FailType_ImmediateContinue = 1,
FailType_EndOfSong = 2,
FailType_Off = 3,
}

---@enum FileType
local FileType = {
FileType_Bitmap = 0,
FileType_Sprite = 1,
FileType_Sound = 2,
FileType_Movie = 3,
FileType_Directory = 4,
FileType_Xml = 5,
FileType_Model = 6,
FileType_Lua = 7,
FileType_Ini = 8,
}

---@enum GameController
local GameController = {
GameController_1 = 0,
GameController_2 = 1,
}

---@enum GetRankingName
local GetRankingName = {
GetRankingName_Off = 0,
GetRankingName_On = 1,
GetRankingName_List = 2,
}

---@enum GoalType
local GoalType = {
GoalType_Calories = 0,
GoalType_Time = 1,
GoalType_None = 2,
}

---@enum Grade
local Grade = {
Grade_Tier01 = 0,
Grade_Tier02 = 1,
Grade_Tier03 = 2,
Grade_Tier04 = 3,
Grade_Tier05 = 4,
Grade_Tier06 = 5,
Grade_Tier07 = 6,
Grade_Tier08 = 7,
Grade_Tier09 = 8,
Grade_Tier10 = 9,
Grade_Tier11 = 10,
Grade_Tier12 = 11,
Grade_Tier13 = 12,
Grade_Tier14 = 13,
Grade_Tier15 = 14,
Grade_Tier16 = 15,
Grade_Tier17 = 16,
Grade_Tier18 = 17,
Grade_Tier19 = 18,
Grade_Tier20 = 19,
Grade_Failed = 20,
}

---@enum HealthState
local HealthState = {
HealthState_Hot = 0,
HealthState_Alive = 1,
HealthState_Danger = 2,
HealthState_Dead = 3,
}

---@enum HighResolutionTextures
local HighResolutionTextures = {
HighResolutionTextures_Auto = 0,
HighResolutionTextures_ForceOff = 1,
HighResolutionTextures_ForceOn = 2,
}

---@enum HighScoresType
local HighScoresType = {
HighScoresType_AllSteps = 0,
HighScoresType_NonstopCourses = 1,
HighScoresType_OniCourses = 2,
HighScoresType_SurvivalCourses = 3,
HighScoresType_AllCourses = 4,
}

---@enum HoldNoteScore
local HoldNoteScore = {
HoldNoteScore_None = 0,
HoldNoteScore_LetGo = 1,
HoldNoteScore_Held = 2,
HoldNoteScore_MissedHold = 3,
}

---@enum HorizAlign
local HorizAlign = {
HorizAlign_Left = 0,
HorizAlign_Center = 1,
HorizAlign_Right = 2,
}

---@enum HttpErrorCode
local HttpErrorCode = {
HttpErrorCode_Blocked = 0,
HttpErrorCode_UnknownError = 1,
HttpErrorCode_FileError = 2,
HttpErrorCode_CannotConnect = 3,
HttpErrorCode_Timeout = 4,
HttpErrorCode_Gzip = 5,
HttpErrorCode_UrlMalformed = 6,
HttpErrorCode_CannotCreateSocket = 7,
HttpErrorCode_SendError = 8,
HttpErrorCode_ReadError = 9,
HttpErrorCode_CannotReadStatusLine = 10,
HttpErrorCode_MissingStatus = 11,
HttpErrorCode_HeaderParsingError = 12,
HttpErrorCode_MissingLocation = 13,
HttpErrorCode_TooManyRedirects = 14,
HttpErrorCode_ChunkReadError = 15,
HttpErrorCode_CannotReadBody = 16,
HttpErrorCode_Cancelled = 17,
}

---@enum ImageCacheMode
local ImageCacheMode = {
ImageCacheMode_Off = 0,
ImageCacheMode_LowResPreload = 1,
ImageCacheMode_LowResLoadOnDemand = 2,
ImageCacheMode_Full = 3,
}

---@enum InputEventType
local InputEventType = {
InputEventType_FirstPress = 0,
InputEventType_Repeat = 1,
InputEventType_Release = 2,
}

---@enum JudgmentLine
local JudgmentLine = {
JudgmentLine_W1 = 0,
JudgmentLine_W2 = 1,
JudgmentLine_W3 = 2,
JudgmentLine_W4 = 3,
JudgmentLine_W5 = 4,
JudgmentLine_Miss = 5,
JudgmentLine_Held = 6,
JudgmentLine_MaxCombo = 7,
}

---@enum LayoutType
local LayoutType = {
LayoutType_ShowAllInRow = 0,
LayoutType_ShowOneInRow = 1,
}

---@enum LifeType
local LifeType = {
LifeType_Bar = 0,
LifeType_Battery = 1,
LifeType_Time = 2,
}

---@enum LightsMode
local LightsMode = {
LightsMode_Attract = 0,
LightsMode_Joining = 1,
LightsMode_MenuStartOnly = 2,
LightsMode_MenuStartAndDirections = 3,
LightsMode_Demonstration = 4,
LightsMode_Gameplay = 5,
LightsMode_Stage = 6,
LightsMode_Cleared = 7,
LightsMode_TestAutoCycle = 8,
LightsMode_TestManualCycle = 9,
}

---@enum Maybe
local Maybe = {
Maybe_Ask = 0,
Maybe_No = 1,
Maybe_Yes = 2,
}

---@enum MemoryCardDriverType
local MemoryCardDriverType = {
MemoryCardDriverType_USB = 0,
MemoryCardDriverType_Directory = 1,
}

---@enum MemoryCardState
local MemoryCardState = {
MemoryCardState_ready = 0,
MemoryCardState_checking = 1,
MemoryCardState_late = 2,
MemoryCardState_error = 3,
MemoryCardState_removed = 4,
MemoryCardState_none = 5,
}

---@enum ModTimerType
local ModTimerType = {
ModTimerType_Game = 0,
ModTimerType_Beat = 1,
ModTimerType_Song = 2,
ModTimerType_Default = 3,
}

---@enum ModsLevel
local ModsLevel = {
ModsLevel_Preferred = 0,
ModsLevel_Stage = 1,
ModsLevel_Song = 2,
ModsLevel_Current = 3,
}

---@enum Month
local Month = {
Month_January = 0,
Month_February = 1,
Month_March = 2,
Month_April = 3,
Month_May = 4,
Month_June = 5,
Month_July = 6,
Month_August = 7,
Month_September = 8,
Month_October = 9,
Month_November = 10,
Month_December = 11,
}

---@enum MultiPlayer
local MultiPlayer = {
MultiPlayer_P1 = 0,
MultiPlayer_P2 = 1,
MultiPlayer_P3 = 2,
MultiPlayer_P4 = 3,
MultiPlayer_P5 = 4,
MultiPlayer_P6 = 5,
MultiPlayer_P7 = 6,
MultiPlayer_P8 = 7,
MultiPlayer_P9 = 8,
MultiPlayer_P10 = 9,
MultiPlayer_P11 = 10,
MultiPlayer_P12 = 11,
MultiPlayer_P13 = 12,
MultiPlayer_P14 = 13,
MultiPlayer_P15 = 14,
MultiPlayer_P16 = 15,
MultiPlayer_P17 = 16,
MultiPlayer_P18 = 17,
MultiPlayer_P19 = 18,
MultiPlayer_P20 = 19,
MultiPlayer_P21 = 20,
MultiPlayer_P22 = 21,
MultiPlayer_P23 = 22,
MultiPlayer_P24 = 23,
MultiPlayer_P25 = 24,
MultiPlayer_P26 = 25,
MultiPlayer_P27 = 26,
MultiPlayer_P28 = 27,
MultiPlayer_P29 = 28,
MultiPlayer_P30 = 29,
MultiPlayer_P31 = 30,
MultiPlayer_P32 = 31,
}

---@enum MusicWheelUsesSections
local MusicWheelUsesSections = {
MusicWheelUsesSections_Never = 0,
MusicWheelUsesSections_Always = 1,
MusicWheelUsesSections_ABCOnly = 2,
}

---@enum NoteColorType
local NoteColorType = {
NoteColorType_Denominator = 0,
NoteColorType_Progress = 1,
NoteColorType_ProgressAlternate = 2,
}

---@enum NoteColumnSplineMode
local NoteColumnSplineMode = {
NoteColumnSplineMode_Disabled = 0,
NoteColumnSplineMode_Offset = 1,
NoteColumnSplineMode_Position = 2,
}

---@enum NotePart
local NotePart = {
NotePart_TapNote = 0,
NotePart_TapMine = 1,
NotePart_TapLift = 2,
NotePart_TapFake = 3,
NotePart_HoldHead = 4,
NotePart_HoldTail = 5,
NotePart_HoldTopCap = 6,
NotePart_HoldBody = 7,
NotePart_HoldBottomCap = 8,
}

---@enum NoteType
local NoteType = {
NoteType_4th = 0,
NoteType_8th = 1,
NoteType_12th = 2,
NoteType_16th = 3,
NoteType_24th = 4,
NoteType_32nd = 5,
NoteType_48th = 6,
NoteType_64th = 7,
NoteType_192nd = 8,
}

---@enum OptEffect
local OptEffect = {
OptEffect_SavePreferences = 0,
OptEffect_ApplyGraphics = 1,
OptEffect_ApplyTheme = 2,
OptEffect_ChangeGame = 3,
OptEffect_ApplySound = 4,
OptEffect_ApplySong = 5,
OptEffect_ApplyAspectRatio = 6,
}

---@enum PaneCategory
local PaneCategory = {
PaneCategory_NumSteps = 0,
PaneCategory_Jumps = 1,
PaneCategory_Holds = 2,
PaneCategory_Rolls = 3,
PaneCategory_Mines = 4,
PaneCategory_Hands = 5,
PaneCategory_Lifts = 6,
PaneCategory_Fakes = 7,
PaneCategory_MachineHighScore = 8,
PaneCategory_MachineHighName = 9,
PaneCategory_ProfileHighScore = 10,
}

---@enum PeakComboAward
local PeakComboAward = {
PeakComboAward_1000 = 0,
PeakComboAward_2000 = 1,
PeakComboAward_3000 = 2,
PeakComboAward_4000 = 3,
PeakComboAward_5000 = 4,
PeakComboAward_6000 = 5,
PeakComboAward_7000 = 6,
PeakComboAward_8000 = 7,
PeakComboAward_9000 = 8,
PeakComboAward_10000 = 9,
}

---@enum PlayMode
local PlayMode = {
PlayMode_Regular = 0,
PlayMode_Nonstop = 1,
PlayMode_Oni = 2,
PlayMode_Endless = 3,
PlayMode_Battle = 4,
PlayMode_Rave = 5,
}

---@enum PlayerController
local PlayerController = {
PlayerController_Human = 0,
PlayerController_Autoplay = 1,
PlayerController_Cpu = 2,
}

---@enum PlayerNumber
local PlayerNumber = {
PlayerNumber_P1 = 0,
PlayerNumber_P2 = 1,
}

---@enum Premium
local Premium = {
Premium_Off = 0,
Premium_DoubleFor1Credit = 1,
Premium_2PlayersFor1Credit = 2,
}

---@enum ProfileSlot
local ProfileSlot = {
ProfileSlot_Player1 = 0,
ProfileSlot_Player2 = 1,
ProfileSlot_Machine = 2,
}

---@enum ProfileSortOrder
local ProfileSortOrder = {
ProfileSortOrder_Priority = 0,
ProfileSortOrder_Recent = 1,
ProfileSortOrder_Alphabetical = 2,
}

---@enum ProfileType
local ProfileType = {
ProfileType_Guest = 0,
ProfileType_Normal = 1,
ProfileType_Test = 2,
}

---@enum RadarCategory
local RadarCategory = {
RadarCategory_Stream = 0,
RadarCategory_Voltage = 1,
RadarCategory_Air = 2,
RadarCategory_Freeze = 3,
RadarCategory_Chaos = 4,
RadarCategory_Notes = 5,
RadarCategory_TapsAndHolds = 6,
RadarCategory_Jumps = 7,
RadarCategory_Holds = 8,
RadarCategory_Mines = 9,
RadarCategory_Hands = 10,
RadarCategory_Rolls = 11,
RadarCategory_Lifts = 12,
RadarCategory_Fakes = 13,
}

---@enum RandomBackgroundMode
local RandomBackgroundMode = {
RandomBackgroundMode_Off = 0,
RandomBackgroundMode_Animations = 1,
RandomBackgroundMode_RandomMovies = 2,
}

---@enum RankingCategory
local RankingCategory = {
RankingCategory_a = 0,
RankingCategory_b = 1,
RankingCategory_c = 2,
RankingCategory_d = 3,
}

---@enum RankingType
local RankingType = {
RankingType_Category = 0,
RankingType_Course = 1,
}

---@enum ReloadChanged
local ReloadChanged = {
ReloadChanged_None = 0,
ReloadChanged_Enabled = 1,
ReloadChanged_All = 2,
}

---@enum SampleMusicPreviewMode
local SampleMusicPreviewMode = {
SampleMusicPreviewMode_Normal = 0,
SampleMusicPreviewMode_StartToPreview = 1,
SampleMusicPreviewMode_ScreenMusic = 2,
SampleMusicPreviewMode_LastSong = 3,
}

---@enum ScreenType
local ScreenType = {
ScreenType_Attract = 0,
ScreenType_GameMenu = 1,
ScreenType_Gameplay = 2,
ScreenType_SystemMenu = 3,
}

---@enum SelectType
local SelectType = {
SelectType_SelectOne = 0,
SelectType_SelectMultiple = 1,
SelectType_SelectNone = 2,
}

---@enum ShowDancingCharacters
local ShowDancingCharacters = {
ShowDancingCharacters_Off = 0,
ShowDancingCharacters_Random = 1,
ShowDancingCharacters_Select = 2,
}

---@enum SortOrder
local SortOrder = {
SortOrder_Preferred = 0,
SortOrder_Group = 1,
SortOrder_Title = 2,
SortOrder_BPM = 3,
SortOrder_Popularity = 4,
SortOrder_TopGrades = 5,
SortOrder_Artist = 6,
SortOrder_Genre = 7,
SortOrder_BeginnerMeter = 8,
SortOrder_EasyMeter = 9,
SortOrder_MediumMeter = 10,
SortOrder_HardMeter = 11,
SortOrder_ChallengeMeter = 12,
SortOrder_DoubleEasyMeter = 13,
SortOrder_DoubleMediumMeter = 14,
SortOrder_DoubleHardMeter = 15,
SortOrder_DoubleChallengeMeter = 16,
SortOrder_ModeMenu = 17,
SortOrder_AllCourses = 18,
SortOrder_Nonstop = 19,
SortOrder_Oni = 20,
SortOrder_Endless = 21,
SortOrder_Length = 22,
SortOrder_Roulette = 23,
SortOrder_Recent = 24,
}

---@enum SoundEffectType
local SoundEffectType = {
SoundEffectType_Off = 0,
SoundEffectType_Speed = 1,
SoundEffectType_Pitch = 2,
}

---@enum Stage
local Stage = {
Stage_1st = 0,
Stage_2nd = 1,
Stage_3rd = 2,
Stage_4th = 3,
Stage_5th = 4,
Stage_6th = 5,
Stage_Next = 6,
Stage_Final = 7,
Stage_Extra1 = 8,
Stage_Extra2 = 9,
Stage_Nonstop = 10,
Stage_Oni = 11,
Stage_Endless = 12,
Stage_Event = 13,
Stage_Demo = 14,
}

---@enum StageAward
local StageAward = {
StageAward_FullComboW3 = 0,
StageAward_SingleDigitW3 = 1,
StageAward_OneW3 = 2,
StageAward_FullComboW2 = 3,
StageAward_SingleDigitW2 = 4,
StageAward_OneW2 = 5,
StageAward_FullComboW1 = 6,
StageAward_80PercentW3 = 7,
StageAward_90PercentW3 = 8,
StageAward_100PercentW3 = 9,
}

---@enum StageResult
local StageResult = {
StageResult_Win = 0,
StageResult_Lose = 1,
StageResult_Draw = 2,
}

---@enum StepsType
local StepsType = {
StepsType_Dance_Single = 0,
StepsType_Dance_Double = 1,
StepsType_Dance_Couple = 2,
StepsType_Dance_Solo = 3,
StepsType_Dance_Threepanel = 4,
StepsType_Dance_Routine = 5,
StepsType_Pump_Single = 6,
StepsType_Pump_Halfdouble = 7,
StepsType_Pump_Double = 8,
StepsType_Pump_Couple = 9,
StepsType_Pump_Routine = 10,
StepsType_Kb7_Single = 11,
StepsType_Ez2_Single = 12,
StepsType_Ez2_Double = 13,
StepsType_Ez2_Real = 14,
StepsType_Para_Single = 15,
StepsType_Ds3ddx_Single = 16,
StepsType_Bm_Single5 = 17,
StepsType_Bm_Versus5 = 18,
StepsType_Bm_Double5 = 19,
StepsType_Bm_Single7 = 20,
StepsType_Bm_Versus7 = 21,
StepsType_Bm_Double7 = 22,
StepsType_Maniax_Single = 23,
StepsType_Maniax_Double = 24,
StepsType_Techno_Single4 = 25,
StepsType_Techno_Single5 = 26,
StepsType_Techno_Single8 = 27,
StepsType_Techno_Double4 = 28,
StepsType_Techno_Double5 = 29,
StepsType_Techno_Double8 = 30,
StepsType_Pnm_Five = 31,
StepsType_Pnm_Nine = 32,
StepsType_Lights_Cabinet = 33,
StepsType_Kickbox_Human = 34,
StepsType_Kickbox_Quadarm = 35,
StepsType_Kickbox_Insect = 36,
StepsType_Kickbox_Arachnid = 37,
}

---@enum StyleType
local StyleType = {
StyleType_OnePlayerOneSide = 0,
StyleType_TwoPlayersTwoSides = 1,
StyleType_OnePlayerTwoSides = 2,
StyleType_TwoPlayersSharedSides = 3,
}

---@enum TapNoteScore
local TapNoteScore = {
TapNoteScore_None = 0,
TapNoteScore_HitMine = 1,
TapNoteScore_AvoidMine = 2,
TapNoteScore_CheckpointMiss = 3,
TapNoteScore_Miss = 4,
TapNoteScore_W5 = 5,
TapNoteScore_W4 = 6,
TapNoteScore_W3 = 7,
TapNoteScore_W2 = 8,
TapNoteScore_W1 = 9,
TapNoteScore_CheckpointHit = 10,
}

---@enum TapNoteScoreJudgeType
local TapNoteScoreJudgeType = {
TapNoteScoreJudgeType_MinimumScore = 0,
TapNoteScoreJudgeType_LastScore = 1,
}

---@enum TapNoteSource
local TapNoteSource = {
TapNoteSource_Original = 0,
TapNoteSource_Addition = 1,
}

---@enum TapNoteSubType
local TapNoteSubType = {
TapNoteSubType_Hold = 0,
TapNoteSubType_Roll = 1,
}

---@enum TapNoteType
local TapNoteType = {
TapNoteType_Empty = 0,
TapNoteType_Tap = 1,
TapNoteType_HoldHead = 2,
TapNoteType_HoldTail = 3,
TapNoteType_Mine = 4,
TapNoteType_Lift = 5,
TapNoteType_Attack = 6,
TapNoteType_AutoKeySound = 7,
TapNoteType_Fake = 8,
}

---@enum TextGlowMode
local TextGlowMode = {
TextGlowMode_Inner = 0,
TextGlowMode_Stroke = 1,
TextGlowMode_Both = 2,
}

---@enum TextureMode
local TextureMode = {
TextureMode_Modulate = 0,
TextureMode_Glow = 1,
TextureMode_Add = 2,
}

---@enum TimingWindow
local TimingWindow = {
TimingWindow_W1 = 0,
TimingWindow_W2 = 1,
TimingWindow_W3 = 2,
TimingWindow_W4 = 3,
TimingWindow_W5 = 4,
TimingWindow_Mine = 5,
TimingWindow_Attack = 6,
TimingWindow_Hold = 7,
TimingWindow_Roll = 8,
TimingWindow_Checkpoint = 9,
}

---@enum TweenType
local TweenType = {
TweenType_Linear = 0,
TweenType_Accelerate = 1,
TweenType_Decelerate = 2,
TweenType_Spring = 3,
TweenType_Bezier = 4,
}

---@enum UnlockRequirement
local UnlockRequirement = {
UnlockRequirement_ArcadePoints = 0,
UnlockRequirement_DancePoints = 1,
UnlockRequirement_SongPoints = 2,
UnlockRequirement_ExtraCleared = 3,
UnlockRequirement_ExtraFailed = 4,
UnlockRequirement_Toasties = 5,
UnlockRequirement_StagesCleared = 6,
UnlockRequirement_NumberUnlocked = 7,
}

---@enum UnlockRewardType
local UnlockRewardType = {
UnlockRewardType_Song = 0,
UnlockRewardType_Steps = 1,
UnlockRewardType_StepsType = 2,
UnlockRewardType_Course = 3,
UnlockRewardType_Modifier = 4,
}

---@enum VertAlign
local VertAlign = {
VertAlign_Top = 0,
VertAlign_Middle = 1,
VertAlign_Bottom = 2,
}

---@enum WebSocketMessageType
local WebSocketMessageType = {
WebSocketMessageType_Message = 0,
WebSocketMessageType_Open = 1,
WebSocketMessageType_Close = 2,
WebSocketMessageType_Error = 3,
}

---@enum WheelItemDataType
local WheelItemDataType = {
WheelItemDataType_Generic = 0,
WheelItemDataType_Section = 1,
WheelItemDataType_Song = 2,
WheelItemDataType_Roulette = 3,
WheelItemDataType_Random = 4,
WheelItemDataType_Portal = 5,
WheelItemDataType_Course = 6,
WheelItemDataType_Sort = 7,
WheelItemDataType_Custom = 8,
}

---@enum WheelState
local WheelState = {
WheelState_Selecting = 0,
WheelState_FlyingOffBeforeNextSort = 1,
WheelState_FlyingOnAfterNextSort = 2,
WheelState_RouletteSpinning = 3,
WheelState_RouletteSlowingDown = 4,
WheelState_RandomSpinning = 5,
WheelState_Locked = 6,
}

---@enum ZTestMode
local ZTestMode = {
ZTestMode_Off = 0,
ZTestMode_WriteOnPass = 1,
ZTestMode_WriteOnFail = 2,
}

