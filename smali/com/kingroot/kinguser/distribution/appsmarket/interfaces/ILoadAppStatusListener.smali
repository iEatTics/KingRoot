.class public interface abstract Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onShowDot()V
.end method

.method public abstract onShowDownloadCount(I)V
.end method

.method public abstract onShowNormal()V
.end method

.method public abstract onShowWaitDownloadCount(I)V
.end method
