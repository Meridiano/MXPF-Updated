{
	Mator-The-Eternal's Functions
	Edited 20/07/2025 by Meridiano
	
	A set of useful functions for use in xEdit scripts.
	
	LIST OF INCLUDED FUNCTIONS
	- [GetVersionString]: gets xEdit's version as a string.
	- [ColorToInt]: gets an integer value representing a color from a TColor record.
	- [ElementTypeString]: uses ElementType and outputs a string.
	- [DefTypeString]: uses DefType and outputs a string.
	- [ConflictThisString]: uses ConflictThisForNode or ConflictThisForMainRecord and outputs a string.
	- [ConflictAllString]: uses ConflictAllForNode or ConflictAllForMainRecord and outputs a string.
	- [FreeAndNil]: frees and nils an object reference.
	- [IsDirectoryEmpty]: returns true if a directory is empty. False otherwise.
	- [Matches]: returns true or false on whether or not an input string matches a basic regular expression (e.g. *.esp)
	- [wCopyFile]: copies a file using ShellExecute with cmd. Would be superior to CopyFile if it was synchronous, but it isn't yet.
	- [CopyDirectory]: recursively copies the contents of a directory to a new destination path.
	- [BatchCopyDirectory]: batch variant of CopyDirectory.
	- [DeleteDirectory]: deletes the contents of a directory, and optionally the directory itself.
	- [RecursiveFileSearch]: recursively searches for a file in all the folders at a path. Returns the path of the first file matching the given filename, if it is found.
	- [SanitizeFileName]: removes characters not allowed in filenames from a string.
	- [BoolToStr]: converts a boolean value to a string.
	- [TimeStr]: returns a time string from a TDateTime.
	- [FileDateTimeStr]: returns a filename-safe DateTime string from a TDateTime.
	- [ReverseString]: reverses a string.
	- [StrEndsWith]: checks if a string ends with a substring.
	- [RemoveFromEnd]: removes a substring from the end of a string, if found.
	- [AppendIfMissing]: appends a substring to the end of a string, if it's not already there.
	- [ItPos]: finds the position of an iteration of a substring in a string.
	- [RPos]: finds the last position of a substring in a string by starting at the end of the string and moving to the front.
	- [GetSubstringCount]: returns count of substring occurrences in string.
	- [CopyFromTo]: copies all characters in a string from a starting position to an ending position.
	- [SetChar]: sets a character in a string to a different character and returns the resulting string.
	- [GetChar]: gets a character in a string and returns it.
	- [DelimitedTextBetween]: gets the delimited text of a string-list between two indexes, including the entries at those indices.
	- [GetTextIn]: gets a substring from a string between two characters.
	- [RecordByLocalFormID]: gets a record by a hexadecimal FormID string.
	- [FileByLocalFileID]: gets a file by a hexadecimal FileID string.
	- [GetAuthor]: gets the author of a file.
	- [SetAuthor]: sets the author of a file.
	- [FileByName]: gets a file from a filename.
	- [FileByAuthor]: gets a file from an author.
	- [OverrideExistsIn]: returns whether or not an override exists for the specified record in the specified file.
	- [WinningOverrideBefore]: returns the most winning override of a record in a file which has a load order less than the load order of the specified file.
	- [OverrideByFile]: gets the override for a particular record in a particular file, if it exists.
	- [OverrideRecordCount]: gets the number of override records in a file or record group.
	- [GetRecords]: adds the records in a file or group to a string-list.
	- [GroupSignature]: gets the signature of a group record.
	- [HexFormID]: gets the full FormID of a record as a hexadecimal string.
	- [LocalFormID]: gets the local FormID of a record as a cardinal.
	- [IsLocalRecord]: returns false for override and injected records.
	- [IsOverrideRecord]: returns true for override records.
	- [SmallName]: gets record Signature, FormID and EditorID as a string.
	- [ElementByIP]: loads an element by an indexed path.
	- [ElementsByMIP]: provides an array of elements matching an indexed path (with [*] meaning any index).
	- [GetIndexedPath]: gets the indexed path of an element.
	- [GetElementPath]: gets the path of an element that can then be used in ElementByPath.
	- [SetListEditValues]: sets the edit values in a list of elements to the values stored in a string-list.
	- [SetListNativeValues]: sets the native values in a list of elements to the values stored in a TList.
	- [EBN]: ElementByName shortened function name.
	- [EBP]: ElementByPath shortened function name.
	- [EBI]: ElementByIndex shortened function name.
	- [EBIP]: ElementByIP shortened function name.
	- [MGEEV]: Produces a string-list of element edit values from a list of elements. Use with ElementsByMIP.
	- [GEEV]: GetElementEditValues enhanced with ElementByIP.
	- [GENV]: GetElementNativeValues enhanced with ElementByIP.
	- [SEEV]: SetElementEditValues enhanced with ElementByIP.
	- [SENV]: SetElementNativeValues enhanced with ElementByIP.
	- [SLEV]: SetListEditValues shortened function name.
	- [SLNV]: SetListNativeValues shortened function name.
	- [GAV]: GetAllValues returns a string of all of the values in an element.
	- [IsD]: GetIsDeleted shortened function name.
	- [IsID]: GetIsInitiallyDisabled shortened function name.
	- [IsP]: GetIsPersistent shortened function name.
	- [IsVWD]: GetIsVisibleWhenDistant shortened function name.
	- [SetD]: SetIsDeleted shortened function name.
	- [SetID]: SetIsInitiallyDisabled shortened function name.
	- [SetP]: SetIsPersistent shortened function name.
	- [SetVWD]: SetIsVisibleWhenDistant shortened function name.
	- [HasKeyword]: checks if a record has a keyword matching the input EditorID.
	- [HasItem]: checks if a record has an item matching the input EditorID.
	- [HasPerkCondition]: checks if a record has a perk condition for a perk matching the input EditorID.
	- [ExtractBSA]: extracts the contents of a BSA to the specified path.
	- [ExtractPathBSA]: extracts the contents of a BSA from a specified subpath to the specified path.
	- [PrintBSAContents]: prints the contents of a BSA to xEdit's message log.
	- [GetMasters]: adds masters from the specified file to the specified string-list.
	- [AddMastersToList]: adds masters from the specified file (and the file itself) to the specified string-list.
	- [AddMastersToFile]: adds masters to the specified file from the specified string-list. Will re-add masters if they were already added by AddMasterIfMissing and later removed.
	- [AddRequiredMasters]: adds masters required for the specified record to the specified file with optional master-files list sorting on the latter.
	- [RemoveMaster]: removes a master of the specified name from the specified file. NOTE: This function can be dangerous if used improperly.
	- [FileSelect]: creates a window from which the user can select or create a file. Doesn't include Bethesda masters. Outputs selected file as IInterface.
	- [MultiFileSelect]: allows the user to select multiple files, returning them through a TStringList.
	- [RecordSelect]: creates a window from which the user can choose a record.
	- [EditOutOfDate]: alerts the user that their xEdit is out of date, and provides them with a button they can click to go to the AFKMods page to download an updated version.
	- [BoolToChecked]: converts a boolean to a TCheckBoxState value.
	- [CheckedToBool]: converts TCheckBoxState value to boolean.
	- [ConstructGroup]: an all-in-one group box constructor.
	- [ConstructImage]: an all-in-one image constructor.
	- [ConstructRadioGroup]: an all-in-one radiogroup constructor.
	- [ConstructRadioButton]: an all-in-one radiobutton constructor.
	- [ConstructMemo]: an all-in-one memo constructor.
	- [ConstructScrollBox]: an all-in-one scrollbox constructor.
	- [ConstructCheckBox]: an all-in-one checkbox constructor.
	- [ConstructLabel]: an all-in-one label constructor.
	- [ConstructEdit]: an all-in-one edit constructor.
	- [ConstructButton]: an all-in-one button constructor.
	- [ConstructLabelEditPair]: constructs a TLabel and TEdit side-by-side.
	- [ConstructModalButtons]: a procedure to make the standard OK and Cancel buttons on a form.
	- [CGroup]: ConstructGroup shortened function name.
	- [CImage]: ConstructImage shortened function name.
	- [CRadioGroup]: ConstructRadioGroup shortened function name.
	- [CRadioButton]: ConstructRadioButton shortened function name.
	- [CMemo]: ConstructMemo shortened function name.
	- [CScrollBox]: ConstructScrollBox shortened function name.
	- [CCheckBox]: ConstructCheckBox shortened function name.
	- [CLabel]: ConstructLabel shortened function name.
	- [CEdit]: ConstructEdit shortened function name.
	- [CButton]: ConstructButton shortened function name.
	- [CPair]: ConstructLabelEditPair shortened function name.
	- [CModal]: ConstructModalButtons shortened function name.
	- [StringToList]: Splits string into list using a strict delimiter.
}

unit mteFunctions;

const
	bethesdaFiles = 'Starfield.esm'#13#10'Starfield.exe'#13#10'BlueprintShips-Starfield.esm'#13#10'SFBGS003.esm'#13#10'SFBGS004.esm'#13#10'SFBGS006.esm'#13#10'SFBGS007.esm'#13#10'SFBGS008.esm';
	GamePath = DataPath + '..\';

type
	TColor = Record
		red, green, blue: integer;
	end;

var
	sFiles, sGroups, sRecords: string;

{
	GetVersionString:
	Gets xEdit's version as a string.
	
	Will throw an exception on old versions, so surround in a
	try-except block if you want your script to terminate gracefully
	on old versions.
	
	Example usage:
	s := GetVersionString(wbVersionNumber);
	AddMessage(s); // xEdit version *.*.*
}
function GetVersionString(v: integer): string;
begin
	Result := Format('%sEdit version %s.%s.%s', [
		wbAppName,
		IntToStr(v shr 24),
		IntToStr(v shr 16 and $FF),
		IntToStr(v shr 8 and $FF)
	]);
end;

{
	ColorToInt:
	Gets an integer value representing a color from a TColor record.
	
	Example usage:
	color.Red := $FF;
	color.Green := $FF;
	color.Blue := $FF;
	c := ColorToInt(color.Red, color.Green, color.Blue);
}
function ColorToInt(red: integer; green: integer; blue: integer): integer;
begin
	Result := blue * 65536 + green * 256 + red;
end;

{
	ElementTypeString:
	Uses ElementType and outputs a string.
	
	Example usage:
	element := ElementByPath(e, 'KWDA');
	AddMessage(ElementTypeString(element));
}
function ElementTypeString(e: IInterface): string;
begin
	Result := '';
	if ElementType(e) = etFile then
		Result := 'etFile'
	else if ElementType(e) = etMainRecord then
		Result := 'etMainRecord'
	else if ElementType(e) = etGroupRecord then
		Result := 'etGroupRecord'
	else if ElementType(e) = etSubRecord then
		Result := 'etSubRecord'
	else if ElementType(e) = etSubRecordStruct then
		Result := 'etSubRecordStruct'
	else if ElementType(e) = etSubRecordArray then
		Result := 'etSubRecordArray'
	else if ElementType(e) = etSubRecordUnion then
		Result := 'etSubRecordUnion'
	else if ElementType(e) = etArray then
		Result := 'etArray'
	else if ElementType(e) = etStruct then
		Result := 'etStruct'
	else if ElementType(e) = etValue then
		Result := 'etValue'
	else if ElementType(e) = etFlag then
		Result := 'etFlag'
	else if ElementType(e) = etStringListTerminator then
		Result := 'etStringListTerminator'
	else if ElementType(e) = etUnion then
		Result := 'etUnion';
end;

{
	DefTypeString:
	Uses DefType and outputs a string.
	
	Example usage:
	element := ElementByPath(e, 'KWDA');
	AddMessage(DefTypeString(element));
}
function DefTypeString(e: IInterface): string;
begin
	Result := '';
	if DefType(e) = dtRecord then
		Result := 'dtRecord'
	else if DefType(e) = dtSubRecord then
		Result := 'dtSubRecord'
	else if DefType(e) = dtSubRecordArray then
		Result := 'dtSubRecordArray'
	else if DefType(e) = dtSubRecordStruct then
		Result := 'dtSubRecordStruct'
	else if DefType(e) = dtSubRecordUnion then
		Result := 'dtSubRecordUnion'
	else if DefType(e) = dtString then
		Result := 'dtString'
	else if DefType(e) = dtLString then
		Result := 'dtLString'
	else if DefType(e) = dtLenString then
		Result := 'dtLenString'
	else if DefType(e) = dtByteArray then
		Result := 'dtByteArray'
	else if DefType(e) = dtInteger then
		Result := 'dtInteger'
	else if DefType(e) = dtIntegerFormater then
		Result := 'dtIntegerFormatter'
	else if DefType(e) = dtFloat then
		Result := 'dtFloat'
	else if DefType(e) = dtArray then
		Result := 'dtArray'
	else if DefType(e) = dtStruct then
		Result := 'dtStruct'
	else if DefType(e) = dtUnion then
		Result := 'dtUnion'
	else if DefType(e) = dtEmpty then
		Result := 'dtEmpty';
end;

{
	ConflictThisString:
	Uses ConflictThisForNode or ConflictThisForMainRecord and outputs a string.
	
	Example usage:
	e := RecordByIndex(FileByIndex(0), 1);
	AddMessage(ConflictThisString(e));
}
function ConflictThisString(e: IInterface): string;
begin
	Result := '';
	if ElementType(e) = etMainRecord then begin
		if ConflictThisForMainRecord(e) = ctUnknown then
			Result := 'ctUnknown'
		else if ConflictThisForMainRecord(e) = ctIgnored then
			Result := 'ctIgnored'
		else if ConflictThisForMainRecord(e) = ctNotDefined then
			Result := 'ctNotDefined'
		else if ConflictThisForMainRecord(e) = ctIdenticalToMaster then
			Result := 'ctIdenticalToMaster'
		else if ConflictThisForMainRecord(e) = ctOnlyOne then
			Result := 'ctOnlyOne'
		else if ConflictThisForMainRecord(e) = ctHiddenByModGroup then
			Result := 'ctHiddenByModGroup'
		else if ConflictThisForMainRecord(e) = ctMaster then
			Result := 'ctMaster'
		else if ConflictThisForMainRecord(e) = ctConflictBenign then
			Result := 'ctConflictBenign'
		else if ConflictThisForMainRecord(e) = ctOverride then
			Result := 'ctOverride'
		else if ConflictThisForMainRecord(e) = ctIdenticalToMasterWinsConflict then
			Result := 'ctIdenticalToMasterWinsConflict'
		else if ConflictThisForMainRecord(e) = ctConflictWins then
			Result := 'ctConflictWins'
		else if ConflictThisForMainRecord(e) = ctConflictLoses then
			Result := 'ctConflictLoses';
	end else begin
		if ConflictThisForNode(e) = ctUnknown then
			Result := 'ctUnknown'
		else if ConflictThisForNode(e) = ctIgnored then
			Result := 'ctIgnored'
		else if ConflictThisForNode(e) = ctNotDefined then
			Result := 'ctNotDefined'
		else if ConflictThisForNode(e) = ctIdenticalToMaster then
			Result := 'ctIdenticalToMaster'
		else if ConflictThisForNode(e) = ctOnlyOne then
			Result := 'ctOnlyOne'
		else if ConflictThisForNode(e) = ctHiddenByModGroup then
			Result := 'ctHiddenByModGroup'
		else if ConflictThisForNode(e) = ctMaster then
			Result := 'ctMaster'
		else if ConflictThisForNode(e) = ctConflictBenign then
			Result := 'ctConflictBenign'
		else if ConflictThisForNode(e) = ctOverride then
			Result := 'ctOverride'
		else if ConflictThisForNode(e) = ctIdenticalToMasterWinsConflict then
			Result := 'ctIdenticalToMasterWinsConflict'
		else if ConflictThisForNode(e) = ctConflictWins then
			Result := 'ctConflictWins'
		else if ConflictThisForNode(e) = ctConflictLoses then
			Result := 'ctConflictLoses';
	end;
end;

{
	ConflictAllString:
	Uses ConflictAllForNode or ConflictAllForMainRecord and outputs a string.
	
	Example usage:
	e := RecordByIndex(FileByIndex(0), 1);
	AddMessage(ConflictAllString(e));
}
function ConflictAllString(e: IInterface): string;
begin
	Result := '';
	if ElementType(e) = etMainRecord then begin
		if ConflictAllForMainRecord(e) = caUnknown then
			Result := 'caUnknown'
		else if ConflictAllForMainRecord(e) = caOnlyOne then
			Result := 'caOnlyOne'
		else if ConflictAllForMainRecord(e) = caConflict then
			Result := 'caConflict'
		else if ConflictAllForMainRecord(e) = caNoConflict then
			Result := 'caNoConflict'
		else if ConflictAllForMainRecord(e) = caConflictBenign then
			Result := 'caConflictBenign'
		else if ConflictAllForMainRecord(e) = caOverride then
			Result := 'caOverride'
		else if ConflictAllForMainRecord(e) = caConflictCritical then
			Result := 'caConflictCritical';
	end else begin
		if ConflictAllForNode(e) = caUnknown then
			Result := 'caUnknown'
		else if ConflictAllForNode(e) = caOnlyOne then
			Result := 'caOnlyOne'
		else if ConflictAllForNode(e) = caConflict then
			Result := 'caConflict'
		else if ConflictAllForNode(e) = caNoConflict then
			Result := 'caNoConflict'
		else if ConflictAllForNode(e) = caConflictBenign then
			Result := 'caConflictBenign'
		else if ConflictAllForNode(e) = caOverride then
			Result := 'caOverride'
		else if ConflictAllForNode(e) = caConflictCritical then
			Result := 'caConflictCritical';
	end;
end;

{
	FreeAndNil:
	Frees and nils an object reference.
	
	Usage:
	sl := TStringList.Create;
	sl.Add('Hi');
	FreeAndNil(sl);
}
procedure FreeAndNil(var ObjectReference: TObject);
begin
	if Assigned(ObjectReference) then begin
		ObjectReference.Free;
		ObjectReference := nil;
	end;
end;

{
	IsDirectoryEmpty:
	Checks if a given directory is empty.
	
	Example usage:
	if not IsDirectoryEmpty(ScriptsPath) then
		AddMessage('You have scripts! That is good.');
}
function IsDirectoryEmpty(const directory: string): boolean;
var
 searchRec: TSearchRec;
begin
	try
		result := (FindFirst(directory + '\*.*', faAnyFile, searchRec) = 0) and (FindNext(searchRec) = 0) and (FindNext(searchRec) <> 0);
	finally
		FindClose(searchRec);
	end;
end;

{
	Matches:
	Checks if an input string matches a basic regex input.
	
	Example usage:
	if Matches('This.is.a.test.bak', 'This.*.*.*.bak') then
		AddMessage('Works!');
}
function Matches(input, expression: string): boolean;
var
	slExpr: TStringList;
	regex: TRegEx;
	pPos, i: integer;
begin
	Result := false;
	
	// use TStringList to determine if input matches expression
	slExpr := StringToList(expression, '*');
	for i := Pred(slExpr.Count) downto 0 do begin
		if slExpr[i] = '' then slExpr.Delete(i);
	end;
	
	if Pos('*', expression) > 0 then begin
		pPos := 0;
		for i := 0 to Pred(slExpr.Count) do begin
			if Pos(slExpr[i], input) > pPos then begin
				pPos := Pos(slExpr[i], input);
				input := Copy(input, Pos(slExpr[i], input) + Length(slExpr[i]) + 1, Length(input));
			end else break;
			if i = Pred(slExpr.Count) then Result := true;
		end;
	end else Result := (input = expression);
	
	slExpr.Free;
end;

{
	wCopyFile:
	Copies a file using Windows CMD via ShellExecute to avoid memory leaks
	associated with using the Pascal CopyFile routine.
	
	Example usage:
	wCopyFile(GamePath + 'Skyrim.exe', '%UserProfile%\Desktop\Skyrim.exe.bak');
}
procedure wCopyFile(src, dst: string; silent: boolean);
begin
	if not silent then AddMessage('Copying ' + src + ' to ' + dst);
	ShellExecute(TForm(frmMain).Handle, 'open', 'cmd', '/C copy /Y "' + src + '" "' + dst + '"', ExtractFilePath(src), SW_HIDE);
end;

{
	CopyDirectory:
	Recursively copies all of the contents of a directory.
	
	Example usage:
	slIgnore := TStringList.Create;
	slIgnore.Add('mteFunctions.pas');
	CopyDirectory(ScriptsPath, 'C:\ScriptsBackup', slIgnore);
}
procedure CopyDirectory(src, dst: string; ignore: TStringList; verbose: boolean);
var
	i: integer;
	rec: TSearchRec;
	skip: boolean;
begin
	src := AppendIfMissing(src, '\');
	dst := AppendIfMissing(dst, '\');
	
	if FindFirst(src + '*', faAnyFile, rec) = 0 then begin
		repeat
			skip := false;
			for i := 0 to Pred(ignore.Count) do begin
				skip := Matches(Lowercase(rec.Name), ignore[i]);
				if (Pos('.', ignore[i]) > 0) and ((rec.attr and faDirectory) = faDirectory) then
					skip := false;
				if (rec.Name = '.') or (rec.Name = '..') then
					skip := true;
				if skip and verbose then AddMessage('Skipping ' + rec.Name + ', matched ' + ignore[i]);
				if skip then
					break;
			end;
			if not skip then begin
				ForceDirectories(dst);
				if (rec.attr and faDirectory) <> faDirectory then begin
					if verbose then AddMessage('Copying file from ' + src + rec.Name + ' to ' + dst + rec.Name);
					CopyFile(PChar(src + rec.Name), PChar(dst + rec.Name), false);
				end else
					CopyDirectory(src + rec.Name, dst + rec.Name, ignore, verbose);
			end;
		until FindNext(rec) <> 0;
		
		FindClose(rec);
	end;
end;

{
	BatchCopyDirectory:
	Adds copy commands to a batch string-list to copy all of the
	contents of a directory.
	
	Example usage:
	slIgnore := TStringList.Create;
	batch := TStringList.Create;
	slIgnore.Add('mteFunctions.pas');
	BatchCopyDirectory(ScriptsPath, 'C:\ScriptsBackup', batch, slIgnore, false);
}
procedure BatchCopyDirectory(src, dst: string; ignore: TStringList;
	var batch: TStringList; verbose: boolean);
var
	i: integer;
	rec: TSearchRec;
	skip: boolean;
begin
	src := AppendIfMissing(src, '\');
	dst := AppendIfMissing(dst, '\');
	
	if FindFirst(src + '*', faAnyFile, rec) = 0 then begin
		repeat
			skip := false;
			for i := 0 to Pred(ignore.Count) do begin
				skip := Matches(Lowercase(rec.Name), ignore[i]);
				if (Pos('.', ignore[i]) > 0) and ((rec.attr and faDirectory) = faDirectory) then
					skip := false;
				if (rec.Name = '.') or (rec.Name = '..') then
					skip := true;
				if skip and verbose then AddMessage('Skipping ' + rec.Name + ', matched ' + ignore[i]);
				if skip then
					break;
			end;
			if not skip then begin
				ForceDirectories(dst);
				if (rec.attr and faDirectory) <> faDirectory then begin
					if verbose then AddMessage('Copying file from ' + src + rec.Name + ' to ' + dst + rec.Name);
					batch.Add('copy /Y "' + src + rec.Name + '" "' + dst + rec.Name + '"');
				end else
					BatchCopyDirectory(src + rec.Name, dst + rec.Name, ignore, batch, verbose);
			end;
		until FindNext(rec) <> 0;
		
		FindClose(rec);
	end;
end;

{
	DeleteDirectory:
	Recursively deletes a directory and its contents.
	
	Example usage:
	DeleteDirectory(ScriptsPath + 'mp\temp\', true);
}
function DeleteDirectory(src: string; onlyChildren: boolean): boolean;
const
	debug = false;
var
	rec: TSearchRec;
begin
	// exit early if directory doesn't exist
	if not DirectoryExists(src) then exit;
	try
		// loop through files in directory
		if FindFirst(src + '*', faAnyFile, rec) = 0 then begin
			repeat
				// do not try to recurse into [.] or [..] else bad things happen
				if (rec.name <> '.') and (rec.name <> '..') then begin
					if (rec.attr and faDirectory) <> faDirectory then begin
						// delete files
						if debug then AddMessage('Deleting file ' + src + rec.name);
						DeleteFile(src + rec.name);
					end else begin
						// recurse to delete directories in the directory
						if debug then AddMessage('Deleting directory ' + src + rec.name + '\');
						DeleteDirectory(src + rec.name + '\', false);
					end;
				end;
			until FindNext(rec) <> 0;
			
			FindClose(rec);
		end;
		
		// remove directory if onlyChildren is false
		if not onlyChildren then RemoveDir(src);
		Result := true;
	except on Exception do
		Result := false;
	end;
end;

{
	RecursiveFileSearch:
	Recursively searches a path for a file matching aFileName, ignoring
	directories in the ignore TStringList, and not traversing deeper than
	maxDepth.
	
	Example usage:
	ignore := TStringList.Create;
	ignore.Add('Data');
	p := RecursiveFileSearch('Skyrim.exe', GamePath, ignore, 1, false);
	AddMessage(p);
}
function RecursiveFileSearch(aPath, aFileName: string; ignore: TStringList; \
	maxDepth: integer; verbose: boolean): string;
var
	skip: boolean;
	i: integer;
	rec: TSearchRec;
	backslash: string;
begin
	Result := '';
	aPath := AppendIfMissing(aPath, '\');
	if Result <> '' then exit;
	// always ignore [.] and [..]
	ignore.Add('.');
	ignore.Add('..');
	
	if FindFirst(aPath + '*', faAnyFile, rec) = 0 then begin
		repeat
			skip := false;
			for i := 0 to Pred(ignore.Count) do begin
				skip := Matches(Lowercase(rec.Name), ignore[i]);
				if skip then
					break;
			end;
			if not skip then begin
				if ((rec.attr and faDirectory) = faDirectory) and (maxDepth > 0) then begin
					if verbose then AddMessage('Searching directory ' + aPath + rec.Name);
					Result := RecursiveFileSearch(aPath + rec.Name, aFileName, ignore, maxDepth - 1, verbose);
				end else if (rec.Name = aFileName) then
					Result := aPath + rec.Name;
			end;
			if (Result <> '') then break;
		until FindNext(rec) <> 0;
		
		FindClose(rec);
	end;
end;

{
	SanitizeFileName:
	Removes characters not allowed in filenames from a string.
	
	Example usage:
	today := Now;
	fn := 'merge_'+DateToStr(today)+'_'+TimeToStr(today)+'.txt';
	fn := SanitizeFileName(fn);
}
function SanitizeFileName(fn: string): string;
const
	badChars = '<>:"/\|?*';
var
	ch: char;
	i: integer;
begin
	Result := fn;
	for i := Length(Result) - 1 downto 0 do begin
		ch := GetChar(Result, i);
		if (Pos(ch, badChars) > 0) or (Ord(ch) < 32) then
			SetChar(Result, i, '');
	end;
end;

{
	TimeStr:
	Converts the time portion of a TDateTime to a string.
	
	Example usage:
	AddMessage(TimeStr(Now)); // 02:50:54
}
function TimeStr(t: TDateTime): string;
begin
	Result := FormatDateTime('hh:nn:ss', t);
end;

{
	FileDateTimeStr:
	Converts a TDateTime to a filename-safe string.
	
	Example usage:
	AddMessage(FileDateTimeStr(Now)); //
}
function FileDateTimeStr(t: TDateTime): string;
begin
	Result := FormatDateTime('dd-mm-yyyy_hh-nn-ss', t);
end;

{
	BoolToStr:
	Converts a boolean value into a string.
	
	Example usage:
	b := True;
	AddMessage(BoolToStr(b)); // True
}
function BoolToStr(b: boolean): string;
begin
	if b then
		Result := 'True'
	else
		Result := 'False';
end;

{
	ReverseString:
	Reverses a string.
	
	This function will allow you to quickly reverse a string.
	
	Example usage:
	s := 'backwards';
	s := ReverseString(s);
	AddMessage(s); // 'sdrawkcab'
}
function ReverseString(var s: string): string;
var
	i: integer;
begin
	 Result := '';
	 for i := Length(s) downto 1 do begin
		 Result := Result + Copy(s, i, 1);
	 end;
end;

{
	StrEndsWith:
	Checks to see if a string ends with an entered substring.
	
	Example usage:
	s := 'This is a sample string.';
	if StrEndsWith(s, 'string.') then
		AddMessage('It works!');
}
function StrEndsWith(s1, s2: string): boolean;
var
	i, n1, n2: integer;
begin
	Result := false;
	
	n1 := Length(s1);
	n2 := Length(s2);
	if n1 < n2 then exit;
	
	Result := (Copy(s1, n1 - n2 + 1, n2) = s2);
end;

{
	RemoveFromEnd:
	Removes s1 from the end of s2, if found.
	
	Example usage:
	s := 'This is a sample string.';
	AddMessage(RemoveFromEnd(s, 'string.')); // 'This is a sample '
}
function RemoveFromEnd(s1, s2: string): string;
begin
	Result := s1;
	if StrEndsWith(s1, s2) then
		Result := Copy(s1, 1, Length(s1) - Length(s2));
end;

{
	AppendIfMissing:
	Appends s2 to the end of s1 if it's not already there.
	
	Example usage:
	s := 'This is a sample string.';
	AddMessage(AppendIfMissing(s, 'string.')); // 'This is a sample string.'
	AddMessage(AppendIfMissing(s, ' Hello.')); // 'This is a sample string. Hello.'
}
function AppendIfMissing(s1, s2: string): string;
begin
	Result := s1;
	if not StrEndsWith(s1, s2) then
		Result := s1 + s2;
end;

{
	ItPos:
	An iteration position function.
	
	This function will allow you to find the position of a substring in a
	string, or the position of the second, third, etc. iterations of that
	substring. If the iteration of the substring isn't found -1 is returned.
	Remove // comments for your debug purposes if needed.
	
	Example usage:
	s := '10101';
	k := ItPos('1', s, 3);
	AddMessage(IntToStr(k)); // 5
}
function ItPos(substr: string; str: string; it: integer): integer;
var
	i, found: integer;
begin
	Result := -1;
	if it = 0 then exit;
	found := 0;
	for i := 1 to Length(str) do begin
		// AddMessage('Scanned substring: ' + Copy(str, i, Length(substr)));
		if (Copy(str, i, Length(substr)) = substr) then begin
			// AddMessage('Matched substring, iteration #' + IntToStr(found + 1));
			Inc(found);
		end;
		if found = it then begin
			Result := i;
			Break;
		end;
	end;
end;

{
	RPos:
	A reverse position function.
	
	This function will allow you to find the last position
	of a substring in a string.
	
	Example usage:
	s := 'C:\SomePath\to\a\file.txt';
	AddMessage(Copy(s, RPos('\', s) + 1, Length(s)));
}
function RPos(substr, str: string): integer;
var
	i: integer;
begin
	Result := -1;
	if (Length(str) - Length(substr) < 0) then
		exit;
	for i := Length(str) - Length(substr) downto 1 do begin
		if (Copy(str, i, Length(substr)) = substr) then begin
			Result := i;
			break;
		end;
	end;
end;

{
	GetSubstringCount:
	Returns count of substring occurrences in string.
	
	Example usage:
	num := GetSubstringCount('apple', 'Grow apple, eat apple');
	if (num <> 2) then return;
}
function GetSubstringCount(sub, str: string): integer;
var
	ofs: integer;
begin
	Result := 0;
	ofs := Pos(sub, str);
	while ofs <> 0 do begin
		Inc(Result);
		ofs := ofs + Length(sub);
		str := Copy(str, ofs, Length(str));
		ofs := Pos(sub, str);
	end;
end;

{
	CopyFromTo:
	A copy function that allows you to copy from one position to another.
	
	This function is a better copy function, in my opinion.
	
	Example usage:
	s := 'Hi. I'm a cool guy.';
	s := CopyFromTo(s, Pos('a', s), Pos('g', s));
	AddMessage(s); // 'a cool g'
}
function CopyFromTo(s: string; p1: integer; p2: integer): string;
begin
	Result := '';
	if p1 > p2 then exit;
	Result := Copy(s, p1, p2 - p1 + 1);
end;

{
	SetChar:
	Sets a character in a string to a different character
	and returns the resulting string.
	
	Example usage:
	s := '1234';
	SetChar(s, 2, 'A');
	AddMessage(s); // '1A34'
}
procedure SetChar(var input: string; n: integer; c: char);
var
	front, back: string;
begin
	front := Copy(input, 1, n - 1);
	back := Copy(input, n + 1, Length(input));
	input := front + c + back;
end;

{
	GetChar:
	Gets a character in a string and returns it.
	
	Example usage:
	s := '1234';
	AddMessage(GetChar(s, 3)); // '3'
}
function GetChar(const s: string; n: integer): char;
begin
	Result := Copy(s, n, 1);
end;

{
	DelimitedTextBetween:
	Gets the delimited text from a string-list @sl
	between index @first and ending at index @last.
	
	Example usage:
	s := 'Items\[0]\CNTO\Item';
	path := StringToList(s, '\');
	AddMessage(DelimitedTextBetween(path, 1, 2));
	// prints '[0]\CNTO'
}
function DelimitedTextBetween(var sl: TStringList; first, last: integer): string;
var
	i: integer;
begin
	Result := '';
	for i := first to last do begin
		Result := Result + sl[i];
		if i < last then Result := Result + sl.Delimiter;
	end;
end;

{
	GetTextIn:
	Returns a substring of @str between characters @open and @close.
	
	Example usage:
	s := 'Hello [test] world';
	AddMessage(GetTextIn(s, '[', ']')); // prints 'test'
}
function GetTextIn(str: string; open, close: char): string;
var
	i, openIndex: integer;
	bOpen: boolean;
begin
	Result := '';
	bOpen := false;
	for i := 1 to Length(str) do begin
		if not bOpen and (GetChar(str, i) = open) then begin
			openIndex := i;
			bOpen := true;
		end;
		if bOpen and (GetChar(str, i) = close) then begin
			Result := CopyFromTo(str, openIndex + 1, i - 1);
			break;
		end;
	end;
end;

{
	RecordByLocalFormID:
	Gets a record by a hexadecimal local FormID.
	
	Example usage:
	e := RecordByLocalFormID('0002BFA2');
	AddMessage(Name(e));
}
function RecordByLocalFormID(id: string): IInterface;
var
	ps: string;
	f: IInterface;
begin
	ps := Copy(id, 1, 2);
	if (ps = 'FD') then begin
		f := FileByLocalFileID(Copy(id, 1, 4));
		id := '00' + Copy(id, 5, 4);
	end else if (ps = 'FE') then begin
		f := FileByLocalFileID(Copy(id, 1, 5));
		id := '000' + Copy(id, 6, 3);
	end else begin
		f := FileByLocalFileID(ps);
		id := Copy(id, 3, 6);
	end;
	Result := RecordByFormID(f, StrToInt('$FF' + id), false);
end;

{
	FileByLocalFileID:
	Gets a file by a hexadecimal local FileID.
	
	Example usage:
	f := FileByLocalFileID('FE001');
	AddMessage(Name(f));
}
function FileByLocalFileID(str: string): IInterface;
var
	ps: string;
	fi: integer;
	f: IInterface;
begin
	ps := Copy(str, 1, 2);
	if (ps = 'FD') or (ps = 'FE') then Insert(' ', str, 3);
	for fi := 0 to FileCount - 1 do begin
		f := FileByIndex(fi);
		if (GetTextIn(Name(f), '[', ']') = str) then begin
			Result := f;
			break;
		end;
	end;
end;

{
	GetAuthor:
	Gets the author field from a file.
	
	Example usage:
	f := FileByName('Dragonborn.esm');
	AddMessage(GetAuthor(f)); // rsalvatore
}
function GetAuthor(f: IInterface): string;
var
	fileHeader: IInterface;
begin
	fileHeader := ElementByIndex(f, 0);
	Result := GEEV(fileHeader, 'CNAM');
end;

{
	SetAuthor:
	Sets the author field of a file.
	
	Example usage:
	f := FileByName('Dragonborn.esm');
	SetAuthor(f, 'George');
}
procedure SetAuthor(f: IInterface; author: string);
var
	fileHeader: IInterface;
begin
	fileHeader := ElementByIndex(f, 0);
	SEEV(fileHeader, 'CNAM', author);
end;

{
	FileByName:
	Gets a file from a filename.
	
	Example usage:
	f := FileByName('Skyrim.esm');
}
function FileByName(s: string): IInterface;
var
	i: integer;
begin
	Result := nil;
	for i := 0 to FileCount - 1 do begin
		if GetFileName(FileByIndex(i)) = s then begin
			Result := FileByIndex(i);
			break;
		end;
	end;
end;

{
	FileByAuthor:
	Gets a file by an author.
	
	Example usage:
	f := FileByAuthor('rsalvatore');
}
function FileByAuthor(s: string): IInterface;
var
	i: integer;
begin
	Result := nil;
	for i := 0 to FileCount - 1 do begin
		if GetAuthor(FileByIndex(i)) = s then begin
			Result := FileByIndex(i);
			break;
		end;
	end;
end;

{
	OverrideExistsIn:
	Returns whether or not an override for the specified record exists
	in the specified file.
	
	Example usage:
	f := FileByName('Update.esm');
	e := MasterOrSelf(RecordByIndex(f, 1));
	if OverrideExistsIn(e, f) then
		AddMessage('Yay');
}
function OverrideExistsIn(e, f: IInterface): boolean;
var
	i: Integer;
	ovr: IInterface;
begin
	Result := false;
	e := MasterOrSelf(e);
	for i := 0 to Pred(OverrideCount(e)) do begin
		ovr := OverrideByIndex(e, i);
		if Equals(GetFile(ovr), f) then begin
			Result := true;
			break;
		end;
	end;
end;

{
	WinningOverrideBefore:
	Returns the most winning override of a record, @e, in a file of lower
	load order than @f.
	
	Example usage:
	e := RecordByIndex(FileByName('Skyrim.esm'), 3401);
	f := FileByName('Dragonborn.esm');
	WinningOverrideBefore(e, f);
}
function WinningOverrideBefore(e, f: IInterface): IInterface;
var
	i, targetLoadOrder: Integer;
	mst, ovr, ovrFile: IInterface;
begin
	Result := e;
	mst := MasterOrSelf(e);
	if OverrideCount(mst) = 0 then
		exit;
	
	// find previous override
	Result := mst;
	targetLoadOrder := GetLoadOrder(f);
	for i := 0 to Pred(OverrideCount(mst)) do begin
		ovr := OverrideByIndex(mst, i);
		ovrFile := GetFile(ovr);
		if GetLoadOrder(ovrFile) >= targetLoadOrder then
			break;
		Result := ovr;
	end;
end;

{
	OverrideByFile:
	
	Example usage:
	ovr := OverrideByFile(record, aFile);
	if Assigned(ovr) then
		AddMessage('Found override for '+Name(record)+' in file '+GetFileName(aFile));
}
function OverrideByFile(e, f: IInterface): IInterface;
var
	i: Integer;
	ovr: IInterface;
begin
	Result := nil;
	e := MasterOrSelf(e);
	for i := 0 to OverrideCount(e) - 1 do begin
		ovr := OverrideByIndex(e, i);
		if Equals(GetFile(ovr), f) then begin
			Result := ovr;
			break;
		end;
	end;
end;

{
	OverrideRecordCount:
	Gets the number of override records in a file or record group.
	
	Example usage:
	f := FileByName('Update.esm');
	AddMessage(IntToStr(OverrideRecordCount(f)));
}
function OverrideRecordCount(f: IInterface): integer;
var
	e: IInterface;
	i: Integer;
begin
	Result := 0;
	if ElementTypeString(f) = 'etFile' then begin
		for i := 0 to Pred(RecordCount(f)) do begin
			e := RecordByIndex(f, i);
			if not Equals(MasterOrSelf(e), e) then
				Inc(Result);
		end;
	end
	else if ElementTypeString(f) = 'etGroupRecord' then begin
		for i := 0 to Pred(ElementCount(f)) do begin
			e := EBI(f, i);
			if ElementTypeString(e) = 'etGroupRecord' then
				Result := Result + OverrideRecordCount(e)
			else if not Equals(MasterOrSelf(e), e) then
				Inc(Result);
		end;
	end;
end;

{
	GetRecords:
	Add the records in a file or group to a string-list.
	
	Example usage:
	slRecords := TStringList.Create;
	f := FileSelect('Select a file below:');
	g := GroupBySignature(f, 'ARMO');
	GetRecords(g, slRecords);
}
procedure GetRecords(g: IInterface; lst: TStringList);
var
	r: IInterface;
	s: string;
	i: integer;
begin
	for i := 0 to ElementCount(g) - 1 do begin
		r := ElementByIndex(g, i);
		if (Pos('GRUP Cell', Name(r)) = 1) then Continue;
		if (Pos('GRUP Exterior Cell', Name(r)) = 1) then begin
			ProcessElementsIn(r, lst);
			Continue;
		end;
		if (Signature(r) = 'GRUP') then
			ProcessElementsIn(r, lst)
		else if (Signature(r) = 'CELL') then
			lst.AddObject(Name(r), TObject(r))
		else begin
			lst.AddObject(GEEV(r, 'EDID'), r);
		end;
	end;
end;

{
	GroupSignature:
	Gets the signature of a group record.
	
	This is useful if you want to get a list of the groups in a file.
	
	Example usage:
	s := GroupSignature(GroupBySignature(f, 'COBJ'));
	AddMessage(s); // prints 'COBJ'
}
function GroupSignature(g: IInterface): string;
var
	s: string;
	ct: integer;
begin
	s := Name(g);
	ct := Length(s) - Length(Copy(s, 1, Pos('"', s))) - 1;
	Result := Copy(s, Pos('"', s) + 1, ct);
end;

{
	HexFormID
	Gets the FormID of a record as a hexadecimal string.
	
	This is useful for just about every time you want to deal with FormIDs.
	
	Example usage:
	s := HexFormID(e);
}
function HexFormID(e: IInterface): string;
var
	id: cardinal;
begin
	if Assigned(e)
	then id := GetLoadOrderFormID(e)
	else id := 0;
	Result := IntToHex(id, 8);
end;

{
	LocalFormID
	Gets the local FormID of the record.
	
	Replaces the tricky FixedFormID function.
	
	Example usage:
	c := LocalFormID(e);
}
function LocalFormID(e: IInterface): cardinal;
var
	ps: string;
	id: cardinal;
begin
	ps := Copy(HexFormID(e), 1, 2);
	id := GetLoadOrderFormID(e);
	if (ps = 'FE') then Result := (id and $FFF)
	else if (ps = 'FD') then Result := (id and $FFFF)
	else Result := (id and $FFFFFF);
end;

{
	IsLocalRecord
	Returns false for override and injected records.
	
	Example usage:
	e := RecordByIndex(f, 1);
	if IsLocalRecord(e) then AddMessage(Name(e) + ' is local.');
}
function IsLocalRecord(e: IInterface): boolean;
var
	ovr, inj: boolean;
begin
	ovr := IsOverrideRecord(e);
	inj := IsInjected(e);
	Result := not (ovr or inj);
end;

{
	IsOverrideRecord
	Returns true for override records.
	
	Example usage:
	e := RecordByIndex(f, 1);
	if IsOverrideRecord(e) then AddMessage(Name(e) + ' is an override.');
}
function IsOverrideRecord(e: IInterface): boolean;
begin
	Result := not Equals(MasterOrSelf(e), e);
end;

{
	SmallName
	Gets the FormID and EditorID of a record and outputs it as a string.
	
	This is nicer than Name for many records, as it doesn't produce a
	string that's a mile long. If record has no its own EditorID
	(it's REFR or ACHR) its base EditorID is used instead.
	
	Example usage:
	sn := SmallName(rec);
	AddMessage('"' + sn + '"'); // outputs "[ABCD:01234567] EditorID", ABCD being signature
}
function SmallName(e: IInterface): string;
var
	sign, edid: string;
begin
	sign := Signature(e);
	edid := GetElementEditValues(e, 'EDID');
	if (edid = '') then
		if (sign = 'REFR') or (sign = 'ACHR') then
			edid := GetElementEditValues(LinksTo(ElementByPath(e, 'NAME')), 'EDID');
	if (edid = '') then edid := 'No Editor ID';
	Result := '[' + sign + ':' + HexFormID(e) + '] ' + edid;
end;

{
	ElementByIP:
	Element by Indexed Path
	
	This is a function to help with getting at elements that are inside
	lists. It allows you to use an "indexed path" to get at these elements
	that would otherwise be inaccessible without multiple lines of code.
	
	Example usage:
	element0 := ElementByIP(e, 'Conditions\[0]\CTDA\Function');
	element1 := ElementByIP(e, 'Conditions\[1]\CTDA\Function');
}
function ElementByIP(e: IInterface; ip: string): IInterface;
var
	i, index: integer;
	path: TStringList;
begin
	// replace forward slashes with backslashes
	ip := StringReplace(ip, '/', '\', [rfReplaceAll]);
	
	// prepare path string-list delimited by backslashes
	path := StringToList(ip, '\');
	
	// traverse path
	for i := 0 to Pred(path.count) do begin
		if Pos('[', path[i]) > 0 then begin
			index := StrToInt(GetTextIn(path[i], '[', ']'));
			e := ElementByIndex(e, index);
		end else
			e := ElementByPath(e, path[i]);
	end;
	
	// set result
	Result := e;
	path.Free;
end;

{
	ElementsByMIP
	This is a function that builds on ElementByIP by allowing the usage of the mult *
	character as a placeholder representing any valid index. It returns through @lst
	a list of all elements in @e that match the input path @ip.
	
	Example usage:
	lst := TList.Create;
	ElementsByMIP(lst, e, 'Items\[*]\CNTO\Item');
	for i := 0 to Pred(lst.Count) do begin
		AddMessage(GetEditValue(ObjectToElement(lst[i])));
	end;
	lst.Free;
}
procedure ElementsByMIP(var lst: TList; e: IInterface; ip: string);
var
	xstr: string;
	i, j, index: integer;
	path: TStringList;
	bMult: boolean;
begin
	// replace forward slashes with backslashes
	ip := StringReplace(ip, '/', '\', [rfReplaceAll]);
	
	// prepare path string-list delimited by backslashes
	path := StringToList(ip, '\');
	
	// traverse path
	bMult := false;
	for i := 0 to Pred(path.count) do begin
		if Pos('[', path[i]) > 0 then begin
			xstr := GetTextIn(path[i], '[', ']');
			if xstr = '*' then begin
				for j := 0 to Pred(ElementCount(e)) do
					ElementsByMIP(lst, ElementByIndex(e, j), DelimitedTextBetween(path, i + 1, Pred(path.count)));
				bMult := true;
				break;
			end else
				e := ElementByIndex(e, index);
		end else
			e := ElementByPath(e, path[i]);
	end;
	if not bMult then lst.Add(TObject(e));
	path.Free;
end;

{
	GetIndexedPath:
	Gets the indexed path of an element.
	
	Example usage:
	element := ElementByIP(e, 'Conditions\[2]\CTDA\Comparison Value');
	AddMessage(GetIndexedPath(element)); // prints 'Conditions\[2]\CTDA\Comparison Value'
}
function GetIndexedPath(e: IInterface): string;
var
	c: IInterface;
	a: string;
begin
	c := GetContainer(e);
	while (ElementTypeString(e) <> 'etMainRecord') do begin
		if ElementTypeString(c) = 'etSubRecordArray' then
			a := '[' + IntToStr(IndexOf(c, e)) + ']'
		else
			a := Name(e);
		if Result <> '' then Result := a + '\' + Result
		else Result := a;
		e := c;
		c := GetContainer(e);
	end;
end;

{
	GetElementPath:
	Gets the path of an element.
	
	Example usage:
	element := ElementByPath(e, 'Model\MODL');
	AddMessage(GetElementPath(element)); // prints 'Model\MODL - Model Filename'
}
function GetElementPath(e: IInterface): string;
var
	c: IInterface;
begin
	c := GetContainer(e);
	while (ElementTypeString(e) <> 'etMainRecord') do begin
		if Result <> '' then Result := Name(e) + '\' + Result
		else Result := Name(e);
		e := c;
		c := GetContainer(e);
	end;
end;

{
	SetListEditValues:
	Sets the values of elements in a list to values stored in a string-list.
	
	Example usage:
	SetListEditValues(e, 'Additional Races', slAdditionalRaces);
}
procedure SetListEditValues(e: IInterface; ip: string; values: TStringList);
var
	i: integer;
	list, newelement: IInterface;
begin
	// exit if values is empty
	if values.Count = 0 then exit;
	
	list := ElementByIP(e, ip);
	// clear element list except for one element
	while ElementCount(list) > 1 do
		RemoveByIndex(list, 0, true);
	
	// create elements and populate the list
	for i := 0 to values.Count - 1 do begin
		newelement := ElementAssign(list, HighInteger, nil, False);
		try
			SetEditValue(newelement, values[i]);
		except on Exception do
			Remove(newelement); // remove the invalid/failed element
		end;
	end;
	Remove(ElementByIndex(list, 0));
end;

{
	SetListNativeValues:
	Sets the native values of elements in a list to the values stored in a Tlist.
	
	Example usage:
	SetListNativeValues(e, 'KWDA', lstKeywords);
}
procedure SetListNativeValues(e: IInterface; ip: string; values: TList);
var
	i: integer;
	list, newelement: IInterface;
begin
	// exit if values is empty
	if values.Count = 0 then exit;
	
	list := ElementByIP(e, ip);
	
	// clear element list except for one element
	while ElementCount(list) > 1 do
		RemoveByIndex(list, 0);
	
	// set element[0] to values[0]
	SetNativeValue(ElementByIndex(list, 0), values[0]);
	// create elements for the rest of the list
	for i := 1 to values.Count - 1 do begin
		newelement := ElementAssign(list, HighInteger, nil, False);
		SetNativeValue(newelement, values[i]);
	end;
end;

{
	EBN:
	ElementByName shortened function name.
}
function EBN(e: IInterface; n: string): IInterface;
begin
	Result := ElementByName(e, n);
end;

{
	EBP:
	ElementByPath shortened function name.
}
function EBP(e: IInterface; p: string): IInterface;
begin
	Result := ElementByPath(e, p);
end;

{
	EBI:
	ElementByIndex shortened function name.
}
function EBI(e: IInterface; i: integer): IInterface;
begin
	Result := ElementByIndex(e, i);
end;

{
	EBIP:
	ElementByIP shortened function name.
}
function EBIP(e: IInterface; ip: string): IInterface;
begin
	Result := ElementByIP(e, ip);
end;

{
	MGEEV:
	Uses GetEditValue on each element in a list of elements to
	produce a string-list of element edit values. Use with ElementsByMIP.
	
	Example usage:
	lst := TList.Create;
	// setup an array in lst with ElementsByMIP
	sl := TStringList.Create;
	MGEEV(sl, lst);
}
procedure MGEEV(var sl: TStringList; var lst: TList);
var
	i: integer;
	e: IInterface;
begin
	for i := 0 to Pred(lst.Count) do begin
		e := ObjectToElement(lst[i]);
		if Assigned(e) then
			sl.Add(GetEditValue(e))
		else
			sl.Add('');
	end;
end;

{
	GEEV:
	GetElementEditValues, enhanced with ElementByIP.
	
	Example usage:
	s1 := GEEV(e, 'Conditions\[3]\CTDA\Function');
	s2 := GEEV(e, 'KWDA\[2]');
}
function GEEV(e: IInterface; ip: string): string;
begin
	Result := GetEditValue(ElementByIP(e, ip));
end;

{
	GENV:
	GetElementNativeValues, enhanced with ElementByIP.
	
	Example usage:
	f1 := GENV(e, 'KWDA\[3]');
	f2 := GENV(e, 'Armature\[2]');
}
function GENV(e: IInterface; ip: string): variant;
begin
	Result := GetNativeValue(ElementByIP(e, ip));
end;

{
	SEEV:
	SetElementEditValues, enhanced with ElementByIP.
	
	Example usage:
	SEEV(e, 'Conditions\[2]\CTDA\Type', '10000000');
	SEEV(e, 'KWDA\[0]'),
}
procedure SEEV(e: IInterface; ip: string; val: string);
begin
	SetEditValue(ElementByIP(e, ip), val);
end;

{
	SENV:
	SetElementNativeValues, enhanced with ElementByIP.
	
	Example usage:
	SENV(e, 'KWDA\[1]', $6C0EE); // 0x6C0EE is some keyword
}
procedure SENV(e: IInterface; ip: string; val: variant);
begin
	SetNativeValue(ElementByIP(e, ip), val);
end;

{
	SLEV:
	SetListEditValues shorted function name.
	
	Example usage:
	SLEV(e, 'Additional Races', slAdditionalRaces);
}
procedure SLEV(e: IInterface; ip: string; values: TStringList);
begin
	SetListEditValues(e, ip, values);
end;

{
	SLEVO
	SetListEditValues - Objects. Sets the values
	in an array element to the objects in a TStringList.
	
	Example usage:
	SLEVO(e, 'KWDA', slKeywords);
}
procedure SLEVO(e: IInterface; ip: string; values: TStringList);
var
	i: integer;
	list, newelement: IInterface;
begin
	// exit if values is empty
	if values.Count = 0 then exit;
	
	list := ElementByIP(e, ip);
	
	// clear element list except for one element
	While ElementCount(list) > 1 do
		RemoveByIndex(list, 0);
	
	// set element[0] to values[0]
	SetEditValue(ElementByIndex(list, 0), Integer(values.Objects[0]));
	// create elements for the rest of the list
	for i := 1 to values.Count - 1 do begin
		newelement := ElementAssign(list, HighInteger, nil, False);
		SetEditValue(newelement, Integer(values.Objects[i]));
	end;
end;

{
	SLNV:
	SetListNativeValues shorted function name.
	
	Example usage:
	SLNV(e, 'KWDA', lstKeywords);
}
procedure SLNV(e: IInterface; ip: string; values: TList);
begin
	SetListNativeValues(e, ip, values);
end;

{
	GAV:
	GetAllValues shortened function name.
	
	Example usage:
	GAV(e);
}
function GAV(e: IInterface): string;
var
	i: integer;
begin
	Result := GetEditValue(e);
	for i := 0 to ElementCount(e) - 1 do
		if (Result <> '') then Result := Result + ';' + GAV(ElementByIndex(e, i))
		else Result := GAV(ElementByIndex(e, i));
end;

{
	IsD:
	GetIsDeleted shortened function name.
}
function IsD(e: IInterface): boolean;
begin
	Result := GetIsDeleted(e);
end;

{
	IsID:
	GetIsInitiallyDisabled shortened function name.
}
function IsID(e: IInterface): boolean;
begin
	Result := GetIsInitiallyDisabled(e);
end;

{
	IsP:
	GetIsPersistent shortened function name.
}
function IsP(e: IInterface): boolean;
begin
	Result := GetIsPersistent(e);
end;

{
	IsVWD:
	GetIsVisibleWhenDistant shortened function name.
}
function IsVWD(e: IInterface): boolean;
begin
	Result := GetIsVisibleWhenDistant(e);
end;

{
	SetD:
	SetIsDeleted shortened function name.
}
procedure SetD(e: IInterface; b: boolean);
begin
	SetIsDeleted(e, b);
end;

{
	SetID:
	SetIsInitiallyDisabled shortened function name.
}
procedure SetID(e: IInterface; b: boolean);
begin
	SetIsInitiallyDisabled(e, b);
end;

{
	SetP:
	SetIsPersistent shortened function name.
}
procedure SetP(e: IInterface; b: boolean);
begin
	SetIsPersistent(e, b);
end;

{
	SetVWD:
	SetIsVisibleWhenDistant shortened function name.
}
procedure SetVWD(e: IInterface; b: boolean);
begin
	SetIsVisibleWhenDistant(e, b);
end;

{
	HasKeyword:
	Checks if an input record has a keyword matching the input EditorID.
	
	Example usage:
	if HasKeyword(e, 'WeaponTypeLaser') then
		AddMessage(Name(e) + ' is a laser weapon.');
}
function HasKeyword(e: IInterface; edid: string): boolean;
var
	kwda: IInterface;
	n: integer;
begin
	Result := false;
	kwda := ElementByPath(e, 'Keywords\KWDA');
	for n := 0 to Pred(ElementCount(kwda)) do if GetElementEditValues(LinksTo(ElementByIndex(kwda, n)), 'EDID') = edid then begin
		Result := true;
		break;
	end;
end;

{
	HasItem:
	Checks if an input record has an item matching the input EditorID.
	Works for containers, constructible objects and research projects.
	
	Example usage:
	if HasItem(e, 'ResInorgUniqueCaelumite') then
		AddMessage(Name(e) + ' requires caelumite to research!');
}
function HasItem(rec: IInterface; s: string): boolean;
var
	elemL, pathL: TStringList;
	sign, path, name: string;
	items, li: IInterface;
	i: integer;
const
	elemS = 'COBJ=FVPA;CONT=Container Items\Items;RSPJ=FVPA';
	pathS = 'COBJ=Component;CONT=CNTO\Item;RSPJ=Item';
begin
	Result := false;
	sign := Signature(rec);
	// resolve
	elemL := StringToList(elemS, ';');
	pathL := StringToList(pathS, ';');
	items := ElementByPath(rec, elemL.Values[sign]);
	if Assigned(items) then begin
		path := pathL.Values[sign];
		// iterate
		for i := 0 to ElementCount(items) - 1 do begin
			li := ElementByIndex(items, i);
			name := GEEV(LinksTo(ElementByPath(li, path)), 'EDID');
			if name = s then begin
				Result := true;
				Break;
			end;
		end;
	end;
	elemL.Free;
	pathL.Free;
end;

{
	HasPerkCondition:
	Checks if an input record has a HasPerk condition requiring a perk
	matching the input EditorID.
	
	Example usage:
	if HasPerkCondition(e, 'AdvancedSmithing') then
		AddMessage(Name(e) + ' is an advanced armor!');
}
function HasPerkCondition(rec: IInterface; s: string): boolean;
var
	name, func: string;
	conditions, ci: IInterface;
	i: integer;
begin
	Result := false;
	conditions := ElementByPath(rec, 'Conditions');
	if not Assigned(conditions) then exit;
	for i := 0 to ElementCount(conditions) - 1 do begin
		ci := ElementByIndex(conditions, i);
		func := GEEV(ci, 'CTDA\Function');
		if func = 'HasPerk' then begin
			name := GEEV(LinksTo(ElementByPath(ci, 'CTDA\Perk')), 'EDID');
			if name = s then begin
				Result := true;
				Break;
			end;
		end;
	end;
end;

{
	ExtractBSA:
	Extracts BSA matching aContainerName to aPath.
	
	Example usage:
	ExtractBSA(DataPath + 'OldMars - Textures.ba2', 'C:\TestExtract\');
}
procedure ExtractBSA(aContainerName, aPath: string);
var
	i: integer;
	slAssets: TStringList;
begin
	// create directories
	ForceDirectories(aPath);
	
	// enumerate assets
	slAssets := TStringList.Create;
	ResourceList(aContainerName, slAssets);
	
	// save assets
	try
		for i := 0 to Pred(slAssets.Count) do begin
			// AddMessage('Resource file = ' + slAssets[i]);
			ResourceCopy(aContainerName, slAssets[i], aPath);
		end;
	except
		on E: Exception do
			AddMessage('Error copying file ' + slAssets[i] + ': ' + E.Message);
	end;
	
	// free string-lists
	slAssets.Free;
end;

{
	ExtractPathBSA:
	Extracts assets from a BSA that match a specified path.
	
	Example usage:
	ExtractPathBSA(DataPath + 'OldMars - Textures.ba2', 'C:\TestExtract\', 'textures\dlc_oldmars\clothes');
}
procedure ExtractPathBSA(aContainerName, aPath, aSubPath: string);
var
	i: integer;
	slAssets: TStringList;
begin
	// create directories
	ForceDirectories(aPath);
	
	// enumerate assets
	slAssets := TStringList.Create;
	ResourceList(aContainerName, slAssets);
	
	// save assets
	try
		for i := 0 to Pred(slAssets.Count) do begin
			// AddMessage('Resource file = ' + slAssets[i]);
			if Pos(Lowercase(aSubPath), LowerCase(slAssets[i])) = 1 then
				ResourceCopy(aContainerName, slAssets[i], aPath);
		end;
	except
		on E: Exception do
			AddMessage('Error copying file ' + slAssets[i] + ': ' + E.Message);
	end;
	
	// free string-lists
	slAssets.Free;
end;

{
	PrintBSAContents:
	Prints to the log the contents of a BSA file.
	
	Example usage:
	PrintBSAContents(DataPath + 'OldMars - Textures.ba2');
}
procedure PrintBSAContents(aContainerName: string);
var
	i: integer;
	slAssets: TStringList;
begin
	// enumerate assets
	slAssets := TStringList.Create;
	ResourceList(aContainerName, slAssets);
	
	// print assets
	for i := 0 to Pred(slAssets.Count) do
		AddMessage(slAssets[i]);
		
	// free string-list
	slAssets.Free;
end;

{
	GetMasters:
	Adds the masters from a specific file to a specified string-list.
	
	Example usage:
	slMasters := TStringList.Create;
	GetMasters(FileByName('OldMars.esm'), slMasters);
	slMasters.Free;
}
procedure GetMasters(f: IInterface; var sl: TStringList);
var
	masters, master: IInterface;
	i: integer;
	s: string;
begin
	masters := ElementByPath(ElementByIndex(f, 0), 'Master Files');
	if not Assigned(masters) then exit;
	
	// loop through masters
	for i := 0 to ElementCount(masters) - 1 do begin
		master := ElementByIndex(masters, i);
		s := GetElementEditValues(master, 'MAST');
		if (sl.IndexOf(s) = -1) then sl.Add(s);
	end;
end;

{
	AddMastersToList:
	Adds the masters from a specific file, and the file itself, to a
	specified string-list.
	
	Example usage:
	slMasters := TStringList.Create;
	AddMastersToList(FileByName('OldMars.esm'), slMasters);
	slMasters.Free;
}
procedure AddMastersToList(f: IInterface; var lst: TStringList);
var
	masters, master: IInterface;
	i: integer;
	s: string;
begin
	// add file
	s := GetFileName(f);
	if (lst.IndexOf(s) = -1) then lst.Add(s);
	
	// add file's masters
	masters := ElementByPath(ElementByIndex(f, 0), 'Master Files');
	if Assigned(masters) then begin
		for i := 0 to ElementCount(masters) - 1 do begin
			s := GEEV(ElementByIndex(masters, i), 'MAST');
			if (lst.IndexOf(s) = -1) then lst.Add(s);
		end;
	end;
end;

{
	AddMastersToFile:
	Adds masters from a string-list to the specified file.
	
	Example usage:
	slMasters := TStringList.Create;
	slMasters.Add('PluginA.esm');
	slMasters.Add('PluginB.esm');
	UserFile := FileSelect('Select the file you wish to use below:');
	AddMastersToFile(UserFile, slMasters, False);
}
procedure AddMastersToFile(f: IInterface; lst: TStringList; silent: boolean);
var
	masters, master: IInterface;
	i: integer;
	s: string;
	slCurrentMasters: TStringList;
begin
	// create local string-list
	slCurrentMasters := TStringList.Create;
	
	// AddMasterIfMissing will attempt to add the masters to the file.
	if not silent then AddMessage('Adding masters to ' + GetFileName(f) + '...');
	for i := 0 to lst.Count - 1 do begin
		if (Lowercase(lst[i]) <> Lowercase(GetFileName(f))) and (not StrEndsWith(Lowercase(lst[i]), '.exe')) then
			AddMasterIfMissing(f, lst[i]);
	end;
	
	// AddMasterIfMissing won't add the masters if they have been removed
	// in the current xEdit session, so a manual re-adding process is
	// used. This process can't fully replace AddMasterIfMissing without
	// causing problems. It only works for masters that have been removed
	// in the current xEdit session.
	masters := ElementByPath(ElementByIndex(f, 0), 'Master Files');
	if not Assigned(masters) then begin
		Add(f, ElementByIndex(f, 0), 'Master Files');
		masters := ElementByPath(ElementByIndex(f, 0), 'Master Files');
	end;
	for i := 0 to ElementCount(masters) - 1 do begin
		s := GEEV(ElementByIndex(masters, i), 'MAST');
		slCurrentMasters.Add(s);
	end;
	for i := 0 to lst.Count - 1 do begin
		if (Lowercase(lst[i]) <> Lowercase(GetFileName(f)))
		and (slCurrentMasters.IndexOf(lst[i]) = -1)
		and (not StrEndsWith(Lowercase(lst[i]), '.exe')) then begin
			master := ElementAssign(masters, HighInteger, nil, False);
			SetElementEditValues(master, 'MAST', lst[i]);
			AddMessage('Re-added master: '+lst[i]);
		end;
	end;
	
	// free string-list
	slCurrentMasters.Free;
end;

{
	AddRequiredMasters:
	Adds masters required for the specified record to the specified file
	with optional master-files list sorting on the latter.
	
	Example usage:
	target := FileByIndex(i);
	rec := RecordByIndex(f, 123);
	AddRequiredMasters(rec, target, true);
	// now you can copy safely
	wbCopyElementToFile(rec, target, true, true);
}
procedure AddRequiredMasters(e: IInterface; f: IwbFile; sort: Boolean);
var
	sl: TStringList;
begin
	sl := TStringList.Create;
	AddMastersToList(GetFile(e), sl);
	AddMastersToFile(f, sl, true);
	if sort then SortMasters(f);
	sl.Free;
end;

{
	RemoveMaster:
	Removes a master matching the specified string from the specified file.
	
	Example usage:
	f := FileByIndex(i);
	RemoveMaster(f, 'WeDontNeedYou.esm');
}
procedure RemoveMaster(f: IInterface; mast: String);
var
	masters: IInterface;
	i: integer;
	s: string;
begin
	masters := ElementByPath(ElementByIndex(f, 0), 'Master Files');
	for i := ElementCount(masters) - 1 downto 0 do begin
		s := GEEV(ElementByIndex(masters, i), 'MAST');
		if s = mast then begin
			Remove(ElementByIndex(masters, i));
			break;
		end;
	end;
end;

{
	FileSelect:
	Creates a form for the user to select a file to be used.
	
	Example usage:
	UserFile := FileSelect('Select the file you wish to use below:');
}
function FileSelect(prompt: string): IInterface;
var
	frm: TForm;
	lbl: TLabel;
	cbFiles: TComboBox;
	btnOk, btnCancel: TButton;
	i: integer;
	s: string;
begin
	frm := TForm.Create(nil);
	try
		frm.Caption := 'Select File';
		frm.Width := 320;
		frm.Height := 130;
		frm.BorderStyle := bsDialog;
		frm.Position := poScreenCenter;
		
		lbl := TLabel.Create(frm);
		lbl.Parent := frm;
		lbl.AutoSize := False;
		lbl.WordWrap := False;
		lbl.Width := frm.Width - 40;
		lbl.Height := 30;
		
		// increase height if new lines found
		lbl.Height := lbl.Height + 15 * GetSubstringCount(#13#10, prompt);
		frm.Height := frm.Height + lbl.Height;
		
		lbl.Left := 10;
		lbl.Top := 10;
		lbl.Caption := prompt;
		
		cbFiles := TComboBox.Create(frm);
		cbFiles.Parent := frm;
		cbFiles.Style := csDropDownList;
		cbFiles.Items.Add('< Create New File (ESP) >');
		cbFiles.Top := lbl.Top + lbl.Height;
		cbFiles.Left := 10;
		cbFiles.Width := frm.Width - 40;
		for i := 0 to FileCount - 1 do begin
			s := GetFileName(FileByIndex(i));
			if (Pos(s, bethesdaFiles) > 0) then Continue;
			cbFiles.Items.Add(s);
		end;
		cbFiles.ItemIndex := 0;
		
		CModal(frm, frm, cbFiles.Top + 40);
		
		if frm.ShowModal = mrOk then begin
			if (cbFiles.Text = '< Create New File (ESP) >')
			then Result := AddNewFile
			else begin
				for i := 0 to FileCount - 1 do begin
					if (cbFiles.Text = GetFileName(FileByIndex(i))) then begin
						Result := FileByIndex(i);
						Break;
					end;
					if i = FileCount - 1 then begin
						AddMessage('The script could not find the file you entered.');
						Result := FileSelect(prompt);
					end;
				end;
			end;
		end;
	finally
		frm.Free;
	end;
end;

{
	MultiFileSelect:
	Gives the user a dialog from which they can select one or more files.
	
	Example usage:
	files := TStringList.Create;
	try
		bCanceled := not MultiFileSelect(files, 'Select some files');
		if bCanceled then exit;
		AddMessage(files.Text); // The files the user selected
	finally
		files.Free;
	end;
}
function MultiFileSelect(var sl: TStringList; prompt: string): Boolean;
const
	spacing = 20;
var
	frm: TForm;
	lastTop, contentHeight: Integer;
	cbArray: Array[0..9, 0..499] of TCheckBox;
	sbArray: Array[0..9] of TScrollBox;
	lbl: TLabel;
	btnPrev, btnNext: TButton;
	i, mi, p, mp, e, me, wid, modal: Integer;
	f: IInterface;
begin
	// calculate bounds
	mi := FileCount - 2;
	mp := Trunc(mi / 500);
	wid := Trunc(ln(mi) / ln(16)) + 1;
	
	Result := false;
	frm := TForm.Create(nil);
	try
		frm.Position := poScreenCenter;
		frm.Width := 350;
		frm.Height := 615;
		frm.BorderStyle := bsDialog;
		frm.Caption := 'Multiple file selection';
		
		// create scrollboxes
		for p := 0 to mp do begin
			sbArray[p] := TScrollBox.Create(frm);
			sbArray[p].Parent := frm;
			sbArray[p].Align := alTop;
			sbArray[p].Height := 0;
			
			// create label
			lbl := TLabel.Create(sbArray[p]);
			lbl.Parent := sbArray[p];
			lbl.Caption := Format('%s [%s/%s]', [prompt, IntToStr(p + 1), IntToStr(mp + 1)]);
			lbl.Left := 10;
			lbl.Top := 10;
			lbl.Width := frm.Width - 60;
			lbl.Height := 20;
			lbl.AutoSize := False;
			lbl.WordWrap := False;
			lastTop := lbl.Top + lbl.Height - spacing;
			
			if (p < mp) then me := 499 else me := mi - p * 500;
			// create checkboxes
			for e := 0 to me do begin
				i := p * 500 + e;
				f := FileByLoadOrder(i);
				cbArray[p,e] := TCheckBox.Create(sbArray[p]);
				cbArray[p,e].Parent := sbArray[p];
				cbArray[p,e].Caption := Format(' [%s] %s', [IntToHex(i, wid), GetFileName(f)]);
				cbArray[p,e].Top := lastTop + spacing;
				cbArray[p,e].Left := 15;
				cbArray[p,e].Width := frm.Width - 60;
				lastTop := lastTop + spacing;
				cbArray[p,e].Checked := sl.IndexOf(GetFileName(f)) > -1;
			end;
		end;
		
		if mp = 0 then begin
			contentHeight := spacing * FileCount + 125;
			if frm.Height > contentHeight then frm.Height := contentHeight;
		end;
		
		// create modal buttons
		CModal(frm, frm, frm.Height - 70);
		btnPrev := ConstructButton(frm, frm, frm.Height - 95, frm.Width / 2 - 85, 25, 75, '<< Page');
		btnPrev.ModalResult := 70;
		btnNext := ConstructButton(frm, frm, frm.Height - 95, frm.Width / 2 + 10, 25, 75, 'Page >>');
		btnNext.ModalResult := 80;
		sl.Clear;
		
		// show first page
		p := 0;
		sbArray[p].Height := frm.Height - 100;
		modal := frm.ShowModal;
		
		while true do begin
			if (modal = mrOk) or (modal = mrCancel) then break;
			if modal = btnPrev.ModalResult then p := p - 1;
			if modal = btnNext.ModalResult then p := p + 1;
			if p < 0 then p := 0 else if p > mp then p := mp;
			for i := 0 to mp do begin
				if i = p
				then sbArray[i].Height := frm.Height - 100
				else sbArray[i].Height := 0;
			end;
			modal := frm.ShowModal;
		end;
		
		if modal = mrOk then begin
			Result := true;
			for i := 0 to mi do begin
				f := FileByLoadOrder(i);
				p := Trunc(i / 500);
				e := i - p * 500;
				if (cbArray[p,e].Checked) and (sl.IndexOf(GetFileName(f)) = -1)
				then sl.Add(GetFileName(f));
			end;
		end;
		
	finally
		frm.Free;
	end;
end;

{
	RecordSelect:
	Gives the user a dialog from which they can select a record.
	You can use this window four different ways:
		- Inputting nil for both arguments.
			This will allow the user to select a file, a record group, and a record.
		- Inputting a file.
			This will allow the user to select a record group and a record.
		- Inputting a record group.
			This will allow the user to select a file and a record.
		- Inputting a file and a record group.
			This will allow the user to only select a record.
	
	Example usage:
	aRecord := RecordSelect('', '');
	aRecord := RecordSelect('Skyrim.esm', '');
	aRecord := RecordSelect('', 'ARMO');
	aRecord := RecordSelect('Skyrim.esm', 'ARMO');
}
procedure RSLoadRecords(Sender: TObject);
var
	f, g: IInterface;
	fn: string;
	i, j: integer;
	pnl: TPanel;
begin
	pnl := TComboBox(Sender).GetParentComponent;
	// clear records and exit if invalid group specified
	if TComboBox(Sender).ItemIndex = -1 then
		TComboBox(pnl.Controls[2]).Items.Clear
	else begin
		// find file
		fn := pnl.Controls[0].Text;
		f := FileByName(fn);
		// if file found, set records combobox content
		if Assigned(f) then begin
			g := GroupBySignature(f, TComboBox(Sender).Text);
			GetRecords(g, TComboBox(pnl.Controls[2]).Items);
			TComboBox(pnl.Controls[2]).Text := '<Record>';
		end;
	end;
end;

procedure RSLoadGroups(Sender: TObject);
var
	fn, sGroups: string;
	f, g: IInterface;
	i: integer;
	pnl: TPanel;
begin
	pnl := TComboBox(Sender).GetParentComponent;
	// clear groups, records, and exit if invalid file specified
	if TComboBox(Sender).ItemIndex = -1 then begin
		TComboBox(pnl.Controls[1]).Items.Clear;
		TComboBox(pnl.Controls[2]).Items.Clear;
	end
	// load records if selecting groups is disabled
	else if not TComboBox(pnl.Controls[1]).Enabled then
		rsLoadRecords(pnl.Controls[1])
	else begin
		// find file
		fn := TComboBox(Sender).Text;
		f := FileByName(fn);
		// if file found, load groups
		if Assigned(f) then begin
			sGroups := '';
			for i := 0 to ElementCount(f) - 1 do begin
				g := ElementByIndex(f, i);
				if Signature(g) = 'TES4' then Continue;
				if not (sGroups = '') then sGroups := sGroups + #13#10 + GroupSignature(g)
				else sGroups := GroupSignature(g);
			end;
			TComboBox(pnl.Controls[1]).Items.Text := sGroups;
			TComboBox(pnl.Controls[1]).Text := '<Group>';
		end;
	end;
end;

function RecordSelect(sFile, sGroup: string): IInterface;
var
	frm: TForm;
	lbl: TLabel;
	cb1, cb2, cb3: TComboBox;
	i: integer;
	pnl: TPanel;
	e: IInterface;
	sFileList, prompt: string;
begin
	// set up prompt caption
	if (sFile <> '') then begin
		if (sGroup <> '') then
			prompt := 'Choose a record:'
		else
			prompt := 'Choose a group, then choose a record:';
	end
	else begin
		if (sGroup <> '') then
			prompt := 'Choose a file, then choose a record:'
		else
			prompt := 'Choose a file, a group, and a record:';
	end;
	
	// prepare sFileList
	for i := 0 to FileCount - 1 do begin
		if not (sFileList = '') then
			sFileList := sFileList + #13#10 + GetFileName(FileByLoadOrder(i))
		else
			sFileList := GetFileName(FileByLoadOrder(i));
	end;
	
	// display form
	frm := TForm.Create(nil);
	try
		frm.Caption := 'Choose a record';
		frm.Width := 400;
		frm.Height := 155;
		frm.Position := poScreenCenter;
		frm.BorderStyle := bsDialog;
		
		// create label instructing user what to do
		lbl := TLabel.Create(frm);
		lbl.Parent := frm;
		lbl.Left := 10;
		lbl.Top := 10;
		lbl.Width := frm.Width - 20;
		lbl.Caption := prompt;
		
		// create panel to hold combo-boxes
		pnl := TPanel.Create(frm);
		pnl.Parent := frm;
		pnl.Left := 10;
		pnl.Top := 35;
		pnl.Width := frm.Width - 20;
		pnl.Height := 30;
		pnl.BevelOuter := bvNone;
		
		// create Files combobox
		cb1 := TComboBox.Create(frm);
		cb1.Parent := pnl;
		cb1.Left := 0;
		cb1.Top := 0;
		cb1.Width := 120;
		cb1.Autocomplete := True;
		cb1.Style := csDropDown;
		cb1.Sorted := False;
		cb1.AutoDropDown := True;
		cb1.Items.Text := sFileList;
		cb1.Text := '<File>';
		cb1.OnSelect := RSLoadGroups;
		
		// create groups combobox
		cb2 := TComboBox.Create(frm);
		cb2.Parent := pnl;
		cb2.Left := cb1.Left + cb1.Width + 10;
		cb2.Top := cb1.Top;
		cb2.Width := 70;
		cb2.Autocomplete := True;
		cb2.Style := csDropDown;
		cb2.Sorted := True;
		cb2.AutoDropDown := True;
		cb2.Text := '';
		cb2.OnSelect := RSLoadRecords;
		
		// create records combobox
		cb3 := TComboBox.Create(frm);
		cb3.Parent := pnl;
		cb3.Left := cb2.Left + cb2.Width + 10;
		cb3.Top := cb1.Top;
		cb3.Width := 150;
		cb3.Autocomplete := True;
		cb3.Style := csDropDown;
		cb3.Sorted := True;
		cb3.AutoDropDown := True;
		cb3.Text := '';
		
		// construct ok and cancel buttons
		CModal(frm, frm, 70);
		
		// set up form based on input variables
		if cb1.Items.IndexOf(sFile) > -1 then begin
			cb1.Enabled := false;
			cb1.ItemIndex := cb1.Items.IndexOf(sFile);
			RSLoadGroups(cb1);
		end;
		if sGroup <> '' then begin
			cb2.Enabled := false;
			cb2.Items.Add(sGroup);
			cb2.ItemIndex := cb2.Items.IndexOf(sGroup);
			if sFile <> '' then RSLoadRecords(cb2);
		end;
		
		if frm.ShowModal = mrOk then
			if cb3.ItemIndex > -1 then
				Result := ObjectToElement(cb3.Items.Objects[cb3.Items.IndexOf(cb3.Text)]);
	finally
		frm.Free;
	end;
end;

{
	EditOutOfDate:
	Informs the user that their xEdit is out of date, and provides an
	option to open the AFKMods thread to download the current beta.
	
	Example usage:
	EditOutOfDate('4.0.14 build 12345', 'https://github.com/TES5Edit/TES5Edit/releases');
}
procedure EditOutOfDate(minimumVersion: String; url: string);
var
	frm: TForm;
	lbl: TLabel;
	btnOk, btnCancel: TButton;
	v: integer;
	s: string;
begin
	frm := TForm.Create(nil);
	try
		frm.Caption := 'xEdit out of Date!';
		frm.Width := 320;
		frm.Height := 165;
		frm.Position := poScreenCenter;
		
		try
			v := wbVersionNumber;
			s := GetVersionString(v);
		except on Exception do
			s := wbAppName + 'Edit 3.0.X or earlier';
		end;
		
		lbl := TLabel.Create(frm);
		lbl.Parent := frm;
		lbl.Top := 8;
		lbl.Left := 8;
		lbl.WordWrap := True;
		lbl.Width := 270;
		lbl.Caption :=
			'You are using ' + s + ', but this script requires ' + wbAppName + 'Edit ' + minimumVersion + ' or newer.'
			#13#10
			'Click the Update button to be redirected and get the latest version.';
		AddMessage('You are using ' + s + ', but this script requires ' + wbAppName + 'Edit ' + minimumVersion + ' or newer.');
		AddMessage('You can get the latest version at ' + url);
		
		btnOk := TButton.Create(frm);
		btnOk.Parent := frm;
		btnOk.Top := lbl.Top + lbl.Height + 16;
		btnOk.Left := 40;
		btnOk.Caption := 'Update';
		btnOk.ModalResult := mrOk;
		btnOk.Hint := 'Click to open ' + url + ' in your web browser so you can download the latest xEdit beta version.';
		btnOk.ShowHint := true;
		
		btnCancel := TButton.Create(frm);
		btnCancel.Parent := frm;
		btnCancel.Top := btnOk.Top;
		btnCancel.Left := btnOk.Left + btnOk.Width + 20;
		btnCancel.Caption := 'Cancel';
		btnCancel.ModalResult := mrCancel;
		
		frm.Height := btnOk.Top + btnOk.Height + 50;
		
		if frm.ShowModal = mrOk then begin
			ShellExecute(TForm(frm).Handle, 'open', url, '', '', SW_SHOWNORMAL);
		end;
	finally
		frm.Free;
	end;
end;

{
	BoolToChecked:
	A function which returns the TCheckBoxState corresponding to a
	boolean value.
	
	Example usage:
	cb.State := BoolToCheck(true);
}
function BoolToChecked(b: boolean): TCheckBoxState;
begin
	if b then Result := cbChecked
	else Result := cbUnchecked;
end;

{
	CheckedToBool:
	A function which returns a boolean corresponding to a TCheckBoxState.
	
	Example usage:
	if CheckedToBool(cb.State) then
		AddMessage('Hi!');
}
function CheckedToBool(cbs: TCheckBoxState): boolean;
begin
	Result := (cbs = cbChecked);
end;

{
	ConstructGroup:
	A function which can be used to make a GroupBox.
	Used to make code more compact.
	
	Example usage:
	group := ConstructGroup(frm, frm, 8, 8, 300, 300, 'My Group');
}
function ConstructGroup(h, p: TObject;
	top, left, height, width: Integer;
	caption, t: string): TGroupBox;
var
	gb: TGroupBox;
begin
	gb := TGroupBox.Create(h);
	gb.Parent := p;
	gb.Top := top;
	gb.Left := left;
	gb.Width := width;
	gb.Height := height;
	gb.ClientWidth := width - 15;
	gb.ClientHeight := height - 15;
	gb.Caption := caption;
	if (t <> '') then begin
		gb.ShowHint := true;
		gb.Hint := t;
	end;
	
	Result := gb;
end;

{
	CGroup:
	Shortened version of ConstructGroup
	
	Example usage:
	group := CGroup(frm, frm, 8, 8, 300, 300, 'My Group');
}
function CGroup(h, p: TObject;
	top, left, height, width: Integer;
	caption, t: string): TGroupBox;
begin
	Result := ConstructGroup(h, p, top, left, height, width, caption, t);
end;

{
	ConstructImage:
	A function which can be used to make an image.
	Used to make code more compact.
	
	Example usage:
	img := ConstructImage(frm, frm, 8, 8, 300, 300, gear, 'Options');
}
function ConstructImage(h, p: TObject;
	top, left, height, width: Integer;
	picture: TPicture; t: string): TImage;
var
	img: TImage;
begin
	img := TImage.Create(h);
	img.Parent := p;
	img.Top := top;
	img.Left := left;
	img.Width := width;
	img.Height := height;
	img.Picture := picture;
	if (t <> '') then begin
		img.ShowHint := true;
		img.Hint := t;
	end;
	
	Result := img;
end;

{
	CImage:
	Shortened version of ConstructImage
	
	Example usage:
	img := CImage(frm, frm, 8, 8, 300, 300, gear, 'Options');
}
function CImage(h, p: TObject;
	top, left, height, width: Integer;
	picture: TPicture; t: String): TImage;
begin
	Result := ConstructImage(h, p, top, left, height, width, picture, t);
end;

{
	ConstructRadioGroup:
	A function which can be used to make a radio group.
	Used to make code more compact.
	
	Example usage:
	rg := ConstructRadioGroup(frm, frm, 8, 8, 200, 400, 'Options');
}
function ConstructRadioGroup(h, p: TObject;
	top, left, height, width: Integer;
	text: String): TRadioGroup;
var
	rg: TRadioGroup;
begin
	rg := TRadioGroup.Create(h);
	rg.Parent := p;
	rg.Top := top;
	rg.Left := left;
	rg.Width := width;
	rg.Height := height;
	rg.Caption := text;
	rg.ClientHeight := height - 15;
	rg.ClientWidth := width - 15;
	
	Result := rg;
end;

{
	CRadioGroup:
	Shortened version of ConstructRadioGroup.
	
	Example usage:
	rg := CRadioGroup(frm, frm, 8, 8, 200, 400, 'Options');
}
function CRadioGroup(h, p: TObject;
	top, left, height, width: Integer;
	text: String): TRadioGroup;
begin
	Result := ConstructRadioGroup(h, p, top, left, height, width, text);
end;

{
	ConstructRadioButton:
	A function which can be used to make a radio button.
	Used to make code more compact.
	
	Example usage:
	rb := ConstructRadioButton(frm, frm, 8, 8, 200, 400, 'This way', false);
}
function ConstructRadioButton(h, p: TObject;
	top, left, height, width: Integer;
	text: String; checked: boolean): TRadioButton;
var
	rb: TRadioButton;
begin
	rb := TRadioButton.Create(h);
	rb.Parent := p;
	rb.Top := top;
	rb.Left := left;
	if width > 0 then rb.Width := width;
	if height > 0 then rb.Height := height;
	rb.Caption := text;
	rb.Checked := checked;
	
	Result := rb;
end;

{
	CRadioButton:
	Shortened version of ConstructRadioButton.
	
	Example usage:
	rg := CRadioButton(frm, frm, 8, 8, 200, 400, 'This way', false);
}
function CRadioButton(h, p: TObject;
	top, left, height, width: Integer;
	text: String; checked: boolean): TRadioButton;
begin
	Result := ConstructRadioButton(h, p, top, left, height, width, text, checked);
end;

{
	ConstructMemo:
	A function which can be used to make a memo.
	Used to make code more compact.
	
	Example usages:
	memo := ConstructMemo(frm, frm, 0, 0, 200, 400, True, True, ssBoth, '');
}
function ConstructMemo(h, p: TObject;
	top, left, height, width: Integer;
	ww, ro: boolean; ss: TScrollStyle;
	text: String): TMemo;
var
	memo: TMemo;
begin
	memo := TMemo.Create(h);
	memo.Parent := p;
	memo.Top := top;
	memo.Left := left;
	if width > 0 then memo.Width := width;
	if height > 0 then memo.Height := height;
	memo.WordWrap := ww;
	memo.ReadOnly := ro;
	memo.ScrollBars := ss;
	memo.Text := text;
	
	Result := memo;
end;

{
	CMemo:
	Shortened function name for ConstructMemo.
	
	Example usages:
	memo := ConstructMemo(frm, frm, 0, 0, 200, 400, True, True, ssBoth, '');
}
function CMemo(h, p: TObject;
	top, left, height, width: Integer;
	ww, ro: boolean; ss: TScrollStyle;
	text: String): TMemo;
begin
	Result := ConstructMemo(h, p, top, left, height, width, ww, ro, ss, text);
end;

{
	ConstructScrollBox:
	A function which can be used to make a scrollbox.
	Used to make code more compact.
	
	Example usage:
	sb := ConstructScrollBox(frm, frm, 400, alTop);
}
function ConstructScrollBox(h, p: TObject;
	height: Integer; a: TAlign): TScrollBox;
var
	sb: TScrollBox;
begin
	sb := TScrollBox.Create(h);
	sb.Parent := p;
	sb.Height := height;
	sb.Align := a;
	
	Result := sb;
end;

{
	CScrollBox:
	Shortened function name for ConstructScrollBox.
	
	Example usage:
	sb := CScrollBox(frm, frm, 400, alTop);
}
function CScrollBox(h, p: TObject;
	height: Integer; a: TAlign): TScrollBox;
begin
	Result := ConstructScrollBox(h, p, height, a);
end;

{
	ConstructCheckbox:
	A function which can be used to make a checkbox.
	Used to make code more compact.
	
	Example usage:
	cb1 := ConstructCheckBox(frm, pnlBottom, 8, 8, 160,
		'Remove persistent references', cbChecked);
}
function ConstructCheckBox(h, p: TObject;
	top, left, width: Integer;
	s: string; state: TCheckBoxState;
	t: string): TCheckBox;
var
	cb: TCheckBox;
begin
	cb := TCheckBox.Create(h);
	cb.Parent := p;
	cb.Top := top;
	cb.Left := left;
	cb.Width := width;
	cb.Caption := s;
	cb.State := state;
	if (t <> '') then begin
		cb.ShowHint := true;
		cb.Hint := t;
	end;
	
	Result := cb;
end;

{
	CCheckBox:
	Shortened function name for ConstructCheckBox.
	
	Example usage:
	cb1 := CCheckBox(frm, pnlBottom, 8, 8, 160,
		'Remove persistent references', cbChecked);
}
function CCheckBox(h, p: TObject;
	top, left, width: Integer;
	s: string; state: TCheckBoxState;
	t: string): TCheckBox;
begin
	Result := ConstructCheckBox(h, p, top, left, width, s, state, t);
end;

{
	ConstructLabel:
	A function which can be used to make a label.
	Used to make code more compact.
	
	Example usage:
	lbl3 := ConstructLabel(frm, pnlBottom, 65, 8, 0, 0,
		'Reference removal options:');
}
function ConstructLabel(h, p: TObject;
	top, left, height, width: Integer;
	s, t: String): TLabel;
var
	lb: TLabel;
begin
	lb := TLabel.Create(h);
	lb.Parent := p;
	lb.Top := top;
	lb.Left := left;
	lb.AutoSize := false;
	lb.WordWrap := true;
	if (height = 0) and (width = 0) then lb.AutoSize := true;
	if (height = 0) and (Pos(#13#10, s) > 0) then lb.AutoSize := true;
	if height > 0 then lb.Height := height;
	if width > 0 then lb.Width := width;
	lb.Caption := s;
	if (t <> '') then begin
		lb.ShowHint := true;
		lb.Hint := t;
	end;
	
	Result := lb;
end;

{
	CLabel:
	Shortened function name for ConstructLabel.
	
	Example usage:
	lbl3 := CLabel(frm, pnlBottom, 65, 8, 0, 0,
		'Reference removal options:');
}
function CLabel(h, p: TObject;
	top, left, height, width: Integer;
	s, t: String): TLabel;
begin
	Result := ConstructLabel(h, p, top, left, height, width, s, t);
end;

{
	ConstructEdit:
	A function which can be used to make an edit field.
	Used to make code more compact.
	
	Example usage:
	ed3 := ConstructEdit(frm, frm, 100, 8, 0, 0, 'Edit me!');
}
function ConstructEdit(h, p: TObject;
	top, left, height, width: Integer;
	s, t: String): TLabel;
var
	ed: TLabel;
begin
	ed := TEdit.Create(h);
	ed.Parent := p;
	ed.Top := top;
	ed.Left := left;
	if height > 0 then ed.Height := height;
	if width > 0 then ed.Width := width;
	if (height = 0) and (width = 0) then ed.AutoSize := true;
	ed.Text := s;
	if (t <> '') then begin
		ed.ShowHint := true;
		ed.Hint := t;
	end;
	
	Result := ed;
end;

{
	CEdit:
	Shortened function name for ConstructEdit.
	
	Example usage:
	ed3 := CEdit(frm, frm, 100, 8, 0, 0, 'Edit me!');
}
function CEdit(h, p: TObject;
	top, left, height, width: Integer;
	s, t: String): TLabel;
begin
	Result := ConstructEdit(h, p, top, left, height, width, s, t);
end;

{
	ConstructButton:
	A function which can be used to make a button.
	Used to make code more compact.
	
	Example usage:
	btn1 := ConstructButton(frm, pnlBottom, 8, 8, 160, 'OK');
}
function ConstructButton(h, p: TObject;
	top, left, height, width: Integer;
	s: String): TButton;
var
	btn: TButton;
begin
	btn := TButton.Create(h);
	btn.Parent := p;
	btn.Top := top;
	btn.Left := left;
	if height > 0 then btn.Height := height;
	if width > 0 then btn.Width := width;
	btn.Caption := s;
	
	Result := btn;
end;

{
	CButton:
	Shortened function name for ConstructButton.
	
	Example usage:
	CButton(frm, pnlBottom, 8, 8, 160, 'OK');
}
function CButton(h, p: TObject;
	top, left, height, width: Integer;
	s: String): TButton;
begin
	Result := ConstructButton(h, p, top, left, height, width, s);
end;

{
	ConstructLabelEditPair:
	A function which makes a TLabel TEdit pair in a container
	and returns a reference to the edit.
	
	Example usage:
	edPosition := ConstructLabelEditPair(frm, 8, 8, 150, 'Minimum position offset:', '0.5');
}
function ConstructLabelEditPair(c: TObject;
	top, left, spacing, edw: Integer;
	caption, text, t: string): TEdit;
var
	lbl: TLabel;
	ed: TEdit;
begin
	lbl := CLabel(c, c, top, left, 0, spacing, caption, t);
	ed := CEdit(c, c, top, left + spacing, 0, edw, text, t);
	Result := ed;
end;

{
	CPair:
	Shortened function name for ConstructLabelEditPair.
	
	Example usage:
	edPosition := CPair(frm, 8, 8, 150, 'Minimum position offset:', '0.5');
}
function CPair(c: TObject;
	top, left, spacing, edw: Integer;
	caption, text, t: string): TEdit;
begin
	Result := ConstructLabelEditPair(c, top, left, spacing, edw, caption, text, t);
end;

{
	ConstructModalButtons:
	A procedure which makes the standard OK and Cancel
	buttons on a form.
	
	Example usage:
	ConstructModalButtons(frm, pnlBottom, frm.Height - 80);
}
procedure ConstructModalButtons(h, p: TObject; top: Integer);
var
	btnOk: TButton;
	btnCancel: TButton;
begin
	// ok
	btnOk := TButton.Create(h);
	btnOk.Parent := p;
	btnOk.Caption := 'OK';
	btnOk.ModalResult := mrOk;
	btnOk.Left := h.Width div 2 - btnOk.Width - 10;
	btnOk.Top := top;
	// cancel
	btnCancel := TButton.Create(h);
	btnCancel.Parent := p;
	btnCancel.Caption := 'Cancel';
	btnCancel.ModalResult := mrCancel;
	btnCancel.Left := btnOk.Left + btnOk.Width + 20;
	btnCancel.Top := btnOk.Top;
end;

{
	CModal:
	Shortened function name for ConstructModalButtons.
}
procedure CModal(h, p: TObject; top: Integer);
begin
	ConstructModalButtons(h, p, top);
end;

{
	StringToList:
	Splits string into list using a strict delimiter.
	If specified @del is not a single char, then
	output list has only one entry equal to @str.
	
	Example usage:
	myList := StringToList('Brown=Fox;Lazy=Dog', ';');
	AddMessage(myList[0]); // Brown=Fox
	AddMessage(myList.Values['Lazy']); // Dog
}

function StringToList(str, del: string): TStringList;
begin
	Result := TStringList.Create;
	if Length(del) = 1 then begin
		Result.Delimiter := del;
		Result.StrictDelimiter := true;
		Result.DelimitedText := str;
	end else Result.Add(str);
end;

end.
