# Copyright (c) 2013-2015, Paul Hinze & Contributors
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
# 
# * Redistributions in binary form must reproduce the above copyright notice, this
#   list of conditions and the following disclaimer in the documentation and/or
#   other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

cask 'intellij-idea-ce1504' do
  version '15.0.4'
  sha256 'e81f4869670edf3dbc3cd9dc702cd6c36e2601486154f8137d57a869132af6ea'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 15 CE.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC15',
                '~/Library/Preferences/IdeaIC15',
                '~/Library/Caches/IdeaIC15',
                '~/Library/Logs/IdeaIC15',
              ]
  caveats <<-EOS.undent
    This formula may conflict to/overwrite 'intellij-idea-ce' in caskroom/versions.
  EOS

end
