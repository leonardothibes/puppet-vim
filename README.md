puppet-vim
=============

Manage Vim via Puppet.

## Sample Usage
Install VIM and use the provided configuration defaults
```
node default {
	class {'vim':}
}
```
or
```
node default {
	include vim
}
```

With params
```
node default {
	class {'vim':
		tabstop  => 4,
		encoding => 'utf-8',
	}
}
```

With params and plugins
```
node default {
	class {'vim':
		tabstop  => 4,
		plugins => ['puppet','rails'],
	}
}
```

Uninstall vim
```
node default {
	class { 'vim':
		ensure => absent,
	}
}
```

LICENSE
=======

Copyright (c) 2013-2014 Leonardo Thibes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished
to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Contact
-------

Principal developer: 
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-vim/issues)
