.class public abstract Lcom/kingroot/kinguser/bqc;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field protected bIk:Lcom/kingroot/kinguser/bps;

.field protected final bIl:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/bps;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bps;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bqc;->bIk:Lcom/kingroot/kinguser/bps;

    .line 30
    return-void
.end method
