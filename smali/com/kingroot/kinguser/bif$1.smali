.class Lcom/kingroot/kinguser/bif$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bif;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akF:Lcom/kingcore/uilib/ProgressWhell;

.field final synthetic btq:Lcom/kingroot/kinguser/bif;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bif;Lcom/kingcore/uilib/ProgressWhell;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/bif$1;->btq:Lcom/kingroot/kinguser/bif;

    iput-object p2, p0, Lcom/kingroot/kinguser/bif$1;->akF:Lcom/kingcore/uilib/ProgressWhell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 37
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bif$1;->akF:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bif$1;->akF:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
