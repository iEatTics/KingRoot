.class public interface abstract Lcom/kingroot/puremode/servicemgr/IPureModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/puremode/servicemgr/IPureModeManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addService(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract getHostPkgName()Ljava/lang/String;
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract getVersion()I
.end method

.method public abstract setPerformLogEnable(Z)V
.end method
