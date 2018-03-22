control "M-10.14" do
  title "10.14 Do not allow symbolic linking (Scored)"
  desc  "Symbolic links allows one application to include the libraries from
another. This allows for re-use of code but also allows for potential security
issues when applications include libraries from other applications they should
not have access to. Allowing symbolic links opens up Tomcat to directory
traversal vulnerability. Also there is a potential that an application could
link to another application it should not be linking too. On case-insensitive
operating systems there is also the threat of source code disclosure. "
  impact 0.5
  tag "ref": "1. http://tomcat.apache.org/tomcat-7.0-doc/config/context.html "
  tag "severity": "medium"
  tag "cis_id": "10.14"
  tag "cis_control": ["No CIS Control", "6.1"]
  tag "cis_level": 1
  tag "audit text": "Ensure all context.xml have the allowLinking attribute set
to false or allowLinking
does not exist.
# find . -name context.xml | xargs grep 'allowLinking'
"
  tag "fix": "In all context.xml, set the allowLinking attribute to false:
<Context ... allowLinking=”false” />
"
  tag "Default Value": "By default, allowLinking has a value of false\n"
end
