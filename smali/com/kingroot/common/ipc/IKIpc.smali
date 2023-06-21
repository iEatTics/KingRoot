.class public interface abstract Lcom/kingroot/common/ipc/IKIpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/ipc/IKIpc$Stub;
    }
.end annotation


# virtual methods
.method public abstract asyncCall(Ljava/lang/String;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
.end method

.method public abstract syncCall(Ljava/lang/String;ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;
.end method
