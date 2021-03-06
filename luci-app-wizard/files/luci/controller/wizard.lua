-- Copyright 2019 X-WRT <dev@x-wrt.com>

module("luci.controller.wizard", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/wizard") then
		return
	end

	local page

	page = entry({"admin", "initsetup"}, cbi("wizard/wizard"), _("Wizard"))
	page.i18n = "wizard"
	page.dependent = true
	page.acl_depends = { "luci-app-wizard" }
end
