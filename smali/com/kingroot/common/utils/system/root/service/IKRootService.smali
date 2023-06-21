.class public interface abstract Lcom/kingroot/common/utils/system/root/service/IKRootService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/utils/system/root/service/IKRootService$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeShell()V
.end method

.method public abstract isRootPermition(Z)Z
.end method

.method public abstract isRootPermitionInBackupSu()Z
.end method

.method public abstract registerCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V
.end method

.method public abstract registerRootHolder(Ljava/lang/String;)V
.end method

.method public abstract runRootCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
.end method

.method public abstract runRootCommandCustomTimeLimited(Ljava/lang/String;Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;
.end method

.method public abstract runRootCommands(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runRootCommandsTimeOut(Ljava/util/List;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract runRootVTCommands(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unregisterCallBack(Lcom/kingroot/common/utils/system/root/service/IKRootCallBack;)V
.end method
