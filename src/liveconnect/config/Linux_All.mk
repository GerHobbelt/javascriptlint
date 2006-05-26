#
# The contents of this file are subject to the Netscape Public
# License Version 1.1 (the "License"); you may not use this file
# except in compliance with the License. You may obtain a copy of
# the License at http://www.mozilla.org/NPL/
#
# Software distributed under the License is distributed on an "AS
# IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
# implied. See the License for the specific language governing
# rights and limitations under the License.
#
# The Original Code is Mozilla Communicator client code, released
# March 31, 1998.
#
# The Initial Developer of the Original Code is Netscape
# Communications Corporation.  Portions created by Netscape are
# Copyright (C) 1998 Netscape Communications Corporation. All
# Rights Reserved.
#
# Contributor(s): 
#
# Alternatively, the contents of this file may be used under the
# terms of the GNU Public License (the "GPL"), in which case the
# provisions of the GPL are applicable instead of those above.
# If you wish to allow use of your version of this file only
# under the terms of the GPL and not to allow others to use your
# version of this file under the NPL, indicate your decision by
# deleting the provisions above and replace them with the notice
# and other provisions required by the GPL.  If you do not delete
# the provisions above, a recipient may use your version of this
# file under either the NPL or the GPL.

# JDK_DIR should be the directory you put the JDK in, and should have
# the appropriate lib/ and include/ dirs on it.
# If you're not using the `Blackdown' JDK, try changing the following line:

# JDK=/share/builds/components/jdk/1.1.7/Linux

ifndef JDK_VERSION
JDK_VERSION = 1.2.2
endif

JDK = /share/builds/components/jdk/$(JDK_VERSION)/Linux

# INCLUDES   += -I$(JDK)/include -I$(JDK)/include/solaris
INCLUDES   += -I$(JDK)/include/linux -I$(JDK)/include

OTHER_LIBS += -L$(JDK)/jre/lib/i386/native_threads
OTHER_LIBS += -L$(JDK)/jre/lib/i386/classic
OTHER_LIBS += -L$(JDK)/jre/lib/i386 -ljava -ljvm -lhpi

# To run lcshell with the above, built in a Mozilla tree with a local nspr:
# LD_LIBRARY_PATH=../../../dist/lib:/share/builds/components/jdk/1.2.2/Linux/jre/lib/i386:/share/builds/components/jdk/1.2.2/Linux/jre/lib/i386/classic:/share/builds/components/jdk/1.2.2/Linux/jre/lib/i386/native_threads CLASSPATH=./classes/Linux_All_DBG.OBJ/js15lc30.jar lcshell

# Uncomment below to maybe build against 1.3.

# export THREADS_FLAG=native

# JDK = /usr/java/jdk1.3

# INCLUDES   += -I$(JDK)/include -I$(JDK)/include/md \
# 	      -I$(JDK)/include/genunix -I$(JDK)/include/linux \

# OTHER_LIBS += -L$(JDK)/jre/lib/i386/native_threads -ljava \
# 	      -L$(JDK)/jre/lib/i386 -lverify -lhpi

# export THREADS_FLAG=native
