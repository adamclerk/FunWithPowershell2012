# PowerShell ISE version of the VIM blackboard theme at 
# http://www.vim.org/scripts/script.php?script_id=2280

# fonts
$psISE.Options.FontName = 'Consolas'
$psISE.Options.FontSize = 16

# output pane
$psISE.Options.OutputPaneBackgroundColor = '#2A211C'
$psISE.Options.OutputPaneTextBackgroundColor = '#2A211C'
$psISE.Options.OutputPaneForegroundColor = '#FFFFFFFF'

# command pane
$psISE.Options.CommandPaneBackgroundColor = '#2A211C'

# script pane
$psISE.Options.ScriptPaneBackgroundColor = '#2A211C'

# tokens
$psISE.Options.TokenColors['Command'] = '#FFFFFFFF'#'#FFFFFF60'
$psISE.Options.TokenColors['Unknown'] = '#FFFFFFFF'
$psISE.Options.TokenColors['Member'] = '#FFFFFFFF'
$psISE.Options.TokenColors['Position'] = '#FFFFFFFF'
$psISE.Options.TokenColors['GroupEnd'] = '#FFFFFFFF'
$psISE.Options.TokenColors['GroupStart'] = '#FFFFFFFF'
$psISE.Options.TokenColors['LineContinuation'] = '#FFFFFFFF'
$psISE.Options.TokenColors['NewLine'] = '#FFFFFFFF'
$psISE.Options.TokenColors['StatementSeparator'] = '#FFFFFFFF'
$psISE.Options.TokenColors['Comment'] = '#1E9AE0'#'#FFAEAEAE'
$psISE.Options.TokenColors['String'] = '#55E439'#'#FF00D42D'
$psISE.Options.TokenColors['Keyword'] = '#FFAA00'#'#FFFFDE00'
$psISE.Options.TokenColors['Attribute'] = '#F6F080'#'#FF84A7C1'
$psISE.Options.TokenColors['Type'] = '#F6F080'#'#FF84A7C1'
$psISE.Options.TokenColors['Variable'] = '#FFFFFF'#'#FF00D42D'
$psISE.Options.TokenColors['CommandParameter'] = '#FFFFDE00'
$psISE.Options.TokenColors['CommandArgument'] = '#FFFFFFFF'
$psISE.Options.TokenColors['Number'] = '#FF3A83'#'#FF98FE1E'
$psISE.Options.TokenColors['Operator'] = '#FFAA00'