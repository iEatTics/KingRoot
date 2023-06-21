.class public interface abstract Lcom/kingroot/common/framework/task/IKTaskServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/framework/task/IKTaskServiceManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelTask(ILjava/lang/String;Z)I
.end method

.method public abstract getTaskIds(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskInfo(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract registerCallback(ILcom/kingroot/common/framework/task/IKTaskMainCallback;)V
.end method

.method public abstract submitTask(ILjava/lang/String;Landroid/content/Intent;Z)I
.end method

.method public abstract unregisterCallback(Lcom/kingroot/common/framework/task/IKTaskMainCallback;)V
.end method
