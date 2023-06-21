.class public interface abstract Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCheckEvent(I)V
.end method

.method public abstract onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
.end method

.method public abstract onCheckStarted()V
.end method
