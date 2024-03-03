# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::cdk8s::deps()
#
#>
######################################################################
p6df::modules::cdk8s::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-kubernetes
  )
}

######################################################################
#<
#
# Function: p6df::modules::cdk8s::langs()
#
#>
######################################################################
p6df::modules::cdk8s::langs() {

  p6_js_npm_global_install "cdk8s-cli"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::cdk8s::clones()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::cdk8s::clones() {

  p6_run_parallel "0" "4" "$(cat $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-cdk8s/conf/cdk8s)" "p6_github_gh_clone" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}
