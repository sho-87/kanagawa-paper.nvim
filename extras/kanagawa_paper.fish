#!/usr/bin/fish

# Kanagawa Paper Fish shell theme
set -l foreground DCD7BA normal
set -l selection 658594 brcyan
set -l comment a6a69c brblack
set -l red c4746e red
set -l orange b6927b brred
set -l yellow c4b28a yellow
set -l green 8a9a7b green
set -l purple a292a3 magenta
set -l cyan 8ea4a2 cyan
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
