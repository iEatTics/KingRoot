.class public interface abstract Lcom/kingroot/loader/sdk/IKlApplication;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract attachKlContext(Lcom/kingroot/loader/sdk/KlContext;Z)V
.end method

.method public abstract getKlContext()Lcom/kingroot/loader/sdk/KlContext;
.end method

.method public abstract getMainKlFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/loader/sdk/KlFragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onUninstall()V
.end method
