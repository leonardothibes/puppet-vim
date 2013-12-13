class vim::dependencies
{
	if $osfamily != 'Debian' {
		fail("Unsupported platform: ${osfamily}/${operatingsystem}")
	}
}
