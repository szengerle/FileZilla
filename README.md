'filezilla' Cookbook
====================
Installs the latest version of the FileZilla Client

Requirements
------------
* Currently only Windows is supported, Mac OS and Linux are coming
* Chef 10.24+ or 11+

Usage
-----

#### filezilla::default

Include the default recipe in your role:

```json
{
	"run_list": [
	"recipe[filezilla::default]"
	]
}
```

Documentation
-------------
More in depth documentation is always being written along with automated testing

License & Authors
-----------------
- Author:: Lance Powell (lanceraymondpowell@gmail.com)

### I adopted the FileZilla Cookbook
- Location:: https://github.com/Webtrends/Filezilla

```text
Copyright:: 2015, The Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.