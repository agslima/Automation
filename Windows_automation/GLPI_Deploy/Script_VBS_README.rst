Installation
============

Windows
-------

Large Installations
^^^^^^^^^^^^^^^^^^^

In this script you'll find some variables that can be changed to your environment needings (uncomment what is commented and you need. Comment what you don't need.):

- **GLPI Agent Version** hereby named ``SetupVersion``
- Setup the **Location** from where the script will download the MSI hereby named ``SetupLocation``. It can be a HTTP or HTTPS url, a CIFS or local folder. The default is to use the github release page url.
- Setup the **Architecture of your systems** (if you need it to be x86, x64, or if you want to let it be installed according to the system Architecture) hereby named ``SetupArchitecture``
- **Setup Options** from the `command line parameters <windows-command-line.html#command-line-parameters>`_:

  - It is recommended to keep the ``/quiet`` parameter so the user will not be bothered with wizard or command line messages or windows
  - If you want to follow all the steps of installations, don't add the ``/quiet`` parameter.

- **Reconfigure**:

  - You will just set this up to Yes if the current installed agent has the same version you have configured on the ``SetupVersion`` above. This option, when activated, is going to reconfigure the new options for the same Agent.
  - It's useful when you just need to change a parameter like GLPI ``SERVER`` url, for example.

- **Repair**:

  - This option will unregister and register the MSI service DLL, and reinstall it with the options selected on the script.
  - It works just when the Setup is still installed.

- **Verbose**:

  - It Enables or Disables

- **Run uninstall**:

  - Here you can uncomment the deprecated agents you want the script to uninstall (FusionInventory Agent or OCSInventory Agent)

.. hint::
   Adding this VBS Script to a Computer GPO to run on startup of computers, usually works better, since there are some users with no installation rights.
   The msi download should be accessible for every computer that needs to execute it. If you are using a local network sharing, or a regular Github URL, you must make sure the computers are able to download it from the original source.


Source:
https://glpi-agent.readthedocs.io/en/1.7/installation/index.html
