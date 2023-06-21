.class public interface abstract Lcom/kingroot/common/framework/task/IKTaskMainCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/framework/task/IKTaskMainCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancelled(Ljava/lang/String;)V
.end method

.method public abstract onFinished(Ljava/lang/String;)V
.end method

.method public abstract onPostExecute(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onPreExecute(Ljava/lang/String;)V
.end method

.method public abstract onProgressUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
.end method

.method public abstract onServiceExit()V
.end method
