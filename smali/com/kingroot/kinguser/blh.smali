.class public Lcom/kingroot/kinguser/blh;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# instance fields
.field bzM:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/blh;->bzM:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private afj()V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/blh;->bzM:Lcom/kingroot/kinguser/bed;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/blh$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/blh$1;-><init>(Lcom/kingroot/kinguser/blh;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blh;->bzM:Lcom/kingroot/kinguser/bed;

    .line 62
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/blh;->bzM:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 63
    return-void
.end method

.method public static afk()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/blh;->jJ(I)V

    .line 82
    return-void
.end method

.method public static jJ(I)V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/blh;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v0, "process_flag"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-static {v1}, Lcom/kingroot/kinguser/tj;->startService(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->a(Landroid/content/Intent;)V

    .line 36
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v0, "process_flag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 41
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/blh;->afj()V

    goto :goto_0
.end method
