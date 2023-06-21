.class public interface abstract Lcom/king/uranus/daemon/IDaemonService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/uranus/daemon/IDaemonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addDeveloperCrashKeywords(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract addFrameworkCrashKeywords(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract close(Z)I
.end method

.method public abstract getDaemonService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract getModVersion(Ljava/lang/String;)I
.end method

.method public abstract getRunningAppProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/daemon/RunningAppProcessInfoLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract initShark(Landroid/os/Bundle;)I
.end method

.method public abstract loadDexMod(Landroid/os/Bundle;)I
.end method

.method public abstract queryProcessCrashType(Ljava/lang/String;)I
.end method

.method public abstract reportCatchedCrash(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportJavaCrash(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportKingCommonString(ILjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract reportNativeCrash(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract runCommands(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/daemon/CmdResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCrashReportStrategy(Landroid/os/Bundle;)I
.end method

.method public abstract setDropboxMonitorStrategy(Ljava/lang/String;)I
.end method

.method public abstract setSpecialProcessCrashStrategy(Ljava/lang/String;J)I
.end method

.method public abstract setSpecialStatisticStrategy(Ljava/lang/String;I)I
.end method

.method public abstract setStatisticReportStrategy(Landroid/os/Bundle;)I
.end method
