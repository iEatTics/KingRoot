.class Lcom/kingroot/kinguser/akj$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/akj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avy:Lcom/kingroot/kinguser/akj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/akj;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/kingroot/kinguser/akj$1;->avy:Lcom/kingroot/kinguser/akj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 272
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    .line 273
    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/akj$1;->avy:Lcom/kingroot/kinguser/akj;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aju;->aR(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akj;->a(Lcom/kingroot/kinguser/bk;)V

    .line 278
    :cond_0
    return-void
.end method
