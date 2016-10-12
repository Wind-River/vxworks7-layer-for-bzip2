### VxWorks&reg; 7 Recipe Layer for BZip2

This repository contains a VxWorks&reg;  7 Source Build (VSB) layer to build bzip2.  Use this layer to add bzip2 library to your kernel or userspace, and to build the bzip2 
utility as an RTP.

#### Setup 
Use the **Download Zip**, (or checkout) feature of GitHub to place the contents of this repository in your VxWorks&reg; install layer tree at an appropriate location, for example:

  *installDir*/vxworks-7/pkgs/apps

#### Build 
Create a VSB, (VxWorks Source Build), project. Add the bzip2 layer to the project. Build the project.

During the build the the source is downloaded from bzip.org and placed in the VSB directory in:

  *VSBDir*/3pp/BZIP/bzip-*version*

The source is patched for VxWorks and the RTP and libraries built and placed in the standard locations in the VSB directory tree.
 
This layer does not contain bzip2 and only provides a recipe to adapt bzip2 to VxWorks&reg;. 
Bzip2 is not part of any VxWorks&reg; product. If you need help, please use the resources available and bzip.org, or contact your Wind River sales
representative to arrange for consulting services.

### Project License

The source code for this project is provided under the bzip2-1.0.6 license. Text for the bzip2 and other applicable license notices can be found in the LICENSE_NOTICES.txt file in the project top level directory. Different files may be under different licenses. Each source file should include a license notice that designates the licensing terms for the respective file.

### Prerequisite(s)

Install the Wind River&reg; VxWorks&reg; 7 operating system. This layer requires build support added in the September 2016 release.
Linux build hosts require **curl** or **wget**, and **patch** installed in addition to the regular build support for VxWorks.   

### Legal Notices

Disclaimer of Warranty / No Support: Wind River does not provide support and maintenance services for this software, under Wind River’s standard Software Support and Maintenance Agreement or otherwise. Unless required by applicable law, Wind River provides the software (and each contributor provides its contribution) on an “AS IS” BASIS, WITHOUT WARRANTIES OF ANY KIND, either express or implied, including, without limitation, any warranties of TITLE, NONINFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. You are solely responsible for determining the appropriateness of using or redistributing the software and assume ay risks associated with your exercise of permissions under the license.
