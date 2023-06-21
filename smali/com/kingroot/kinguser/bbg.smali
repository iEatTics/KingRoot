.class public Lcom/kingroot/kinguser/bbg;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# static fields
.field private static final bfc:Lcom/kingroot/kinguser/bed;

.field private static final bfd:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbg$1;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bbg$1;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/bbg;->bfc:Lcom/kingroot/kinguser/bed;

    .line 93
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbg$2;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bbg$2;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/bbg;->bfd:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    const-string v0, ""

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    const-string v1, "com.kingroot.common.ACTION_NEW_APP_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    const-string v1, "com.kingroot.common.ACTION_SWITCH_IN_DESKTOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/alx;->cy(Z)V

    goto :goto_0

    .line 48
    :cond_3
    const-string v1, "com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alx;->cy(Z)V

    goto :goto_0

    .line 50
    :cond_4
    const-string v1, "com.kingroot.common.ACTION_TOP_APP_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/bbg;->bfc:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaW()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/bbg;->bfd:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 61
    :cond_5
    invoke-static {p2}, Lcom/kingroot/kinguser/atd;->m(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :cond_6
    const-string v1, "com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "com.kingroot.common.ACTION_NOTIFY_IN_SELF_APP_MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/abr;->rk()Lcom/kingroot/kinguser/abr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/abr;->aj(Z)V

    goto :goto_0

    .line 66
    :cond_7
    const-string v1, "com.kingroot.common.ACTION_NOTIFY_OUT_SELF_APP_BY_MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/abr;->rk()Lcom/kingroot/kinguser/abr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/abr;->aj(Z)V

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qf()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_8
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amz;->IF()V

    goto/16 :goto_0
.end method
