.class public Lcom/kingroot/kinguser/bay;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# instance fields
.field private beu:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bay$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bay$1;-><init>(Lcom/kingroot/kinguser/bay;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bay;->beu:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private static Wa()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->DB()J

    move-result-wide v4

    .line 98
    const-wide/32 v6, 0xdbba00

    .line 99
    add-long v8, v4, v6

    cmp-long v3, v8, v0

    if-lez v3, :cond_0

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {v2, v10}, Lcom/kingroot/kinguser/aks;->el(I)V

    .line 104
    invoke-virtual {v2, v10}, Lcom/kingroot/kinguser/aks;->em(I)V

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->uj()V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/aks;->bd(J)V

    goto :goto_0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/bay;->Wa()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bay;->beu:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/aow;->KB()V

    .line 41
    return-void
.end method
