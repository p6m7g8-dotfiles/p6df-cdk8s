######################################################################
#<
#
# Function: p6df::modules::cdk8s::deps()
#
#>
######################################################################
p6df::modules::cdk8s::deps() {
  ModuleDeps=(
    #	cdk8s-team/cdk8s
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
}

######################################################################
#<
#
# Function: p6df::modules::cdk8s::clones()
#
#  Depends:	 p6_run
#  Environment:	 P6_DFZ_SRC_P6M7G8_DIR
#>
######################################################################
p6df::modules::cdk8s::clones() {

  p6_run_parallel "0" "4" "$(cat $P6_DFZ_SRC_P6M7G8_DIR/p6df-cdk8s/conf/cdk8s)" "p6_github_util_repo_clone_or_pull_no_ou" "$P6_DFZ_SRC_FOCUSED_DIR"
}

######################################################################
#<
#
# Function: p6df::modules::cdk8s::init()
#
#>
######################################################################
p6df::modules::cdk8s::init() {

  true
}
