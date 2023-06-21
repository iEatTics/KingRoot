.class public Lcom/kingroot/kinguser/tp;
.super Lcom/kingroot/kinguser/to;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/to;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingroot/kinguser/tp;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public jR()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
