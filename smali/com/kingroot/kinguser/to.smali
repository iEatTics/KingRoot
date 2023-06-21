.class public abstract Lcom/kingroot/kinguser/to;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract I(Landroid/content/Context;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract a(Landroid/content/Intent;)V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract jR()V
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation
.end method

.method public abstract onDestroy()V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract onStop()V
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
