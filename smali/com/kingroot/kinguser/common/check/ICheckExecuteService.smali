.class public interface abstract Lcom/kingroot/kinguser/common/check/ICheckExecuteService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V
.end method

.method public abstract checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z
.end method

.method public abstract delayCheckAgain()V
.end method
