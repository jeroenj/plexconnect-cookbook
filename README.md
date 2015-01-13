plexconnect Cookbook
===================
Installs [plexconnect](https://github.com/iBaa/PlexConnect) and its required dependencies.

Requirements
------------
#### python
Python is required. It is set up as a dependency of this cookbook so it will be handled automatically.

#### git
The code is being synced from github. Git is required for checking out the code.

Attributes
----------
#### plexconnect::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['plexconnect']['user']</tt></td>
    <td>String</td>
    <td>User which plexconnect will be ran as</td>
    <td>plexconnect</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['group']</tt></td>
    <td>String</td>
    <td>Group which owns the plexconnect installation</td>
    <td>plexconnect</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['install_dir']</tt></td>
    <td>String</td>
    <td>Directory where plexconnect will be installed</td>
    <td>/srv/apps/plexconnect</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['log_dir']</tt></td>
    <td>String</td>
    <td>Log directory</td>
    <td>/var/log/plexconnect</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['git_url']</tt></td>
    <td>String</td>
    <td>Git repository which will be checked out</td>
    <td>https://github.com/RuudBurger/CouchPotatoServer.git</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['git_ref']</tt></td>
    <td>String</td>
    <td>Git branch or tag which will be checked out</td>
    <td>v0.5</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['certificate']</tt></td>
    <td>String</td>
    <td>SSL certificate</td>
    <td>''</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['key']</tt></td>
    <td>String</td>
    <td>Private key for the SSL certificate</td>
    <td>''</td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['settings']</tt></td>
    <td>Hash</td>
    <td>Configuration options. Feel free to create a pull request for more custom options.</td>
    <td>
      <ul>
        <li><tt>certfile</tt></li>
        <li><tt>ip_pms</tt></li>
        <li><tt>logpath</tt></li>
        <li><tt>hosttointercept</tt></li>
        <li><tt>port_dnsserver</tt></li>
        <li><tt>port_pms</tt></li>
        <li><tt>port_ssl</tt></li>
        <li><tt>port_webserver</tt></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td><tt>['plexconnect']['atv_settings']</tt></td>
    <td>Hash</td>
    <td>Configuration options for PlexConnect on the Apple TV. Feel free to create a pull request for more custom options.</td>
    <td>
      <ul>
        <li><tt>apple_tv_id</tt></li>
        <li><tt>myplex_user</tt></li>
        <li><tt>myplex_auth</tt></li>
        <li><tt>subtitlesize</tt></li>
        <li><tt>subtitlerenderer</tt></li>
        <li><tt>transcodequality</tt></li>
      </ul>
    </td>
  </tr>
</table>

#### plexconnect::fanart
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['plexconnect']['fanart']['packages']</tt></td>
    <td>Array</td>
    <td>all required packages to build Pillow</td>
    <td><tt>/usr/local/bin/plexconnect</tt></td>
  </tr>
</table>

Usage
-----
#### plexconnect::default

It installs plexconnect by checking it out from source.

#### plexconnect::init

It sets up an init script and configures rc.d to make plexconnect automatically launch on boot.

#### plexconnect::fanart

It installs Pillow using the python pip provider. This is required for fanart to show up in PlexConnect.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github
