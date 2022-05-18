from cmath import inf
import platform,socket,re,uuid,psutil


def getPlatformInfo():
    try:
        info={}
        info['platform']=platform.system()
        info['platform-release']=platform.release()
        info['platform-version']=platform.version()
        info['architecture']=platform.machine()
        info['processor']=platform.processor()
        return info
    except Exception as e:
       print("Cannot get PC information:", e)


def getSocketInfo():
    try:
        info={}
        info['hostname']=socket.gethostname()
        info['ip-address']=socket.gethostbyname(socket.gethostname())
        return info
    except Exception as e:
       print("Cannot get PC information:", e)


def getInfo():
    try:
        info={}
        info['mac-address']=':'.join(re.findall('..', '%012x' % uuid.getnode()))
        info['ram']=str(round(psutil.virtual_memory().total / (1024.0 **3)))+" GB"
        return info
    except Exception as e:
       print("Cannot get PC information:", e)


def showPCinfo():
    info = {};
    info.update(getPlatformInfo())
    info.update(getSocketInfo())
    info.update(getInfo())

    for key in info:
        print("Computer",key , "is :", info[key])

if __name__ == "__main__":
    showPCinfo()
