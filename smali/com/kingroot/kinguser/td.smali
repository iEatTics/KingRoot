.class public final Lcom/kingroot/kinguser/td;
.super Lcom/kingroot/kinguser/tc;
.source "SourceFile"


# static fields
.field private static GU:Lcom/kingroot/kinguser/td;


# instance fields
.field private GV:I

.field private GW:Z

.field private GX:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/tc;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/td;->GV:I

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "firewall-2.0.2.dat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/rs;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/td;->GX:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static jA()Lcom/kingroot/kinguser/td;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/kingroot/kinguser/td;->GU:Lcom/kingroot/kinguser/td;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/kingroot/kinguser/td;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/td;->GU:Lcom/kingroot/kinguser/td;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/td;

    invoke-direct {v0}, Lcom/kingroot/kinguser/td;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/td;->GU:Lcom/kingroot/kinguser/td;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/td;->GU:Lcom/kingroot/kinguser/td;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/common/firewall/Rule;)V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/td;->w(Ljava/util/List;)V

    .line 131
    return-void
.end method

.method public jx()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    .line 56
    iget v1, p0, Lcom/kingroot/kinguser/td;->GV:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/td;->GW:Z

    if-ne v1, v0, :cond_0

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/td;->GV:I

    .line 77
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const-string v2, "cat /proc/net/ip_tables_names"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    const-string v3, "cat /proc/net/ip_tables_matches"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    const-string v4, "cat /proc/net/ip_tables_targets"

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v3

    iget-object v3, v3, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Lcom/kingroot/kinguser/td;->GW:Z

    .line 65
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 66
    :cond_1
    iput v5, p0, Lcom/kingroot/kinguser/td;->GV:I

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/td;->GV:I

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "owner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    :cond_3
    iput v5, p0, Lcom/kingroot/kinguser/td;->GV:I

    .line 77
    :goto_1
    iget v0, p0, Lcom/kingroot/kinguser/td;->GV:I

    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "MARK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/net/netfilter/nfnetlink_queue"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/td;->GV:I

    goto :goto_1

    .line 75
    :cond_5
    iput v6, p0, Lcom/kingroot/kinguser/td;->GV:I

    goto :goto_1
.end method

.method public jy()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/td;->GX:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/te;->cQ(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public jz()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/td;->v(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/td;->GX:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/te;->o(Ljava/lang/String;Z)Z

    .line 119
    return-void
.end method

.method public v(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/firewall/Rule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/td;->GX:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/te;->cR(Ljava/lang/String;)Z

    move-result v1

    .line 94
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/firewall/Rule;

    .line 97
    iget v4, v0, Lcom/kingroot/common/firewall/Rule;->type:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v4, v0, Lcom/kingroot/common/firewall/Rule;->GZ:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/kingroot/common/firewall/Rule;->Ha:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 105
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v4, v0, Lcom/kingroot/common/firewall/Rule;->Hb:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/td;->w(Ljava/util/List;)V

    .line 113
    :cond_3
    return v1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public w(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/firewall/Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/td;->GX:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/te;->a(Ljava/lang/String;Ljava/util/List;)Z

    .line 136
    return-void
.end method
